<?php

namespace App\Http\Controllers;

use App\Products;
use Illuminate\Http\Request;
use App\Categories;
use App\images;
use Illuminate\Support\Facades\Storage;

class ProductsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Products::all();  
        $categories = Categories::all();      
        return view('cpanel.products',compact('products','categories'));        
    }
    public function indexWeb()
    {
        $products = Products::all();  
        $categories = Categories::all();      
        return view('products',compact('products','categories'));        
    
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
    //    return $request->all();
       
       $data=$this->validate($request,[
        'categories_id'=>'required',
        'name'=>'required|string',
        'price'=>'required|numeric|min:1|max:5000',
        'offer'=>'required|numeric|min:1|max:5000',        
        'description'=>'required',
        'image.*'=>'image|nullable|max:1024',
        'image.mena'=>'required|image|max:1024',
        
    ]);




        $images=[];
    if($request->hasFile('image')){
        foreach($request->image as $key=> $image){
            // $fileNameWitheExtension = $image->getClientOriginalName();
            // $fileName= pathinfo($fileNameWitheExtension , PATHINFO_FILENAME);
            $extension  = $image->getClientOriginalExtension();
            $fileNameStore= $key .'_'.time() .'.'.$extension;            
            $images[]=  $fileNameStore;
            $image->move(public_path("/img/products_image"), $fileNameStore);                    

        }
        $data['image']=implode(' | ',$images);
        

        // $path=$request->file('post_photo')->storeAs('public/img/product_image',$fileNameStore);
    }
    $Product=Products::create($data);
    $image=images::create([
        'product_id'=>$Product->id,       
        'image'=>$data['image']
    ]);
    return redirect('/admin/products')->with('success' ,'Done Create Products Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Products  $products
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $product = Products::findOrFail($id);  
        $photos = explode(' | ',$product->images->image );
        $categories = Categories::all();  
        return view('cpanel.product_detail',compact('product','categories','photos'));
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Products  $products
     * @return \Illuminate\Http\Response
     */
    public function edit(Products $products)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Products  $products
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // return $request->all();
        
       $data=$this->validate($request,[
        'categories_id'=>'required',
        'name'=>'string',
        'price'=>'numeric',
        'offer'=>'numeric',        
        'description'=>'required',
        'image.*'=>'image|nullable|max:1024',        
    ]);
        $images=[];
    if($request->hasFile('image')){
        foreach($request->image as $key=> $image){
            // $fileNameWitheExtension = $image->getClientOriginalName();
            // $fileName= pathinfo($fileNameWitheExtension , PATHINFO_FILENAME);
            $extension  = $image->getClientOriginalExtension();
            $fileNameStore= $key .'_'.time() .'.'.$extension;            
            $images[]=  $fileNameStore;
            $image->move(public_path("/img/products_image"), $fileNameStore);                    

        }
        $data['image']=implode(' | ',$images);
        // $path=$request->file('post_photo')->storeAs('public/img/product_image',$fileNameStore);
    }
    
    $Product=Products::findorFail($id)->update($data);    
    if(!empty($data['image'])){
        $photos=images::where('product_id',$id)->first();
        foreach(explode(' | ',$photos->image) as  $photo){
             $path =public_path("img/products_image/").$photo; 
            \File::delete($path);
        }
        $photos->update(['image'=>$data['image']]);        
    }
    return redirect('/admin/products')->with('success' ,'Done Create Products Successfully');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Products  $products
     * @return \Illuminate\Http\Response
     */
    public function destroy( $id)
    {
        $product=Products::find($id);
           foreach(explode(' | ', $product->images->image) as  $image){
            $path =public_path("img/products_image/").$image; 
           \File::delete($path);
       }
       
       $product->delete();
           return redirect('/admin/products')
                        ->with('success','Products deleted successfully');


    }
}
