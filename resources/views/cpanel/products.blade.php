 @extends('cpanel.layouts.index') @section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="wrapper wrapper-content animated ">
            <div class="row">
                <div class="col-lg-12">
                    <!-- Header -->
                    <div class="ibox float-e-margins">
                        <!-- Button to Add new Product -->
                        <div class="ibox-title">
                            <button class="btn btn-info btn-rounded" data-toggle="modal" data-target="#add">&nbsp;&nbsp;Add New Product
                                <i class="fa fa-plus-circle" aria-hidden="true" style="padding-left: 22px"></i>
                            </button>
                            <br>

                            <div class="row">
                                <!-- Page title -->
                                <div class="col-md-3">
                                    <h3 class="title m-t-sm">Products</h3>
                                </div>
                                <div class="clearfix"></div>
                                <!-- filter by category -->
                                <div class="col-md-3" style="position: absolute;">
                                    <div class="form-group">
                                        <select name="categories_id" class="form-control" id="sel1" style=" margin-top: 13px;margin-left: 14px;">
                                            <option value="" disabled selected hidden>Filtration</option>
                                            @foreach($categories as $category)
                                            <option value='{{$category->id}}'>{{$category->catName}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- All products here -->
                        <div class="ibox-content">

                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover dataTables-example">
                                    <thead>
                                        <tr class="frist">
                                            <th>Product Name</th>
                                            <th>Price</th>
                                            <th>Price After Discount</th>
                                            <th>Category</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($products as $product)
                                        <tr class="gradeX">
                                            <td>{{$product->name}}</td>
                                            <td class="center">{{$product->price}} EGP </td>
                                            <td class="center">{{$product->offer}}EGP </td>
                                            <td class="center">{{$product->categories->catName}} </td>

                                            <td>
                                                <button class="btn btn-danger sendIdDelete btn-xs " data-toggle="modal" data-target="#confirm-delete" data-id='{{$product->id}}'>
                                                    <span class="glyphicon glyphicon-trash">
                                                </button>&nbsp;&nbsp;
                                                        <button class="btn btn-primary sendProductId btn-xs" 
                                                        data-id='{{$product->id}}' data-ProductName="{{$product->name}}"
                                                         data-ProductPrice="{{$product->price}}" data-ProductOffer="{{$product->offer}}" 
                                                         data-ProductDes="{{$product->description}}" data-ProductCatID="{{$product->categories->id}}"
                                                         data-toggle="modal" data-toggle="tooltip" title="Edit" data-target="#edit">
                                                    <span class="glyphicon glyphicon-edit"></span>
                                                </button>
                                                &nbsp;
                                                <a href="product_detail/{{$product->id}}" class="btn btn-success btn-xs" data-toggle="tooltip" title="
                                          view">
                                                    <span class="glyphicon glyphicon-edit"></span>
                                                </a>
                                            </td>
                                        </tr>
                                        @endforeach


                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- Modal Add new Product -->
                    <div id="add" class="modal fade product" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h3 class="title">Add New Product</h3>
                                </div>
                                <div class="modal-body">
                                    <div class="row m-t-sm">
                                        <div class="row">
                                            <!--  -->
                                            <div class="col-lg-12">
                                                <div class="tabs-container">
                                                    <ul class="nav nav-tabs">
                                                        <li class="active">
                                                            <a data-toggle="tab" href="#tab-1"> Product info</a>
                                                        </li>
                                                        <li class="">
                                                            <a data-toggle="tab" href="#tab-4"> Images</a>
                                                        </li>
                                                    </ul>
                                                    <form action='' method='POST' enctype='multipart/form-data'>
                                                        {{ csrf_field() }}
                                                        <div class="tab-content">
                                                            <div id="tab-1" class="tab-pane active">
                                                                <div class="panel-body">
                                                                    <fieldset class="form-horizontal">
                                                                        <div class="form-group">
                                                                            <label class="col-sm-2 control-label">Category:</label>
                                                                            <div class="col-sm-10">
                                                                                <select class="form-control" name="categories_id" id="sel1">
                                                                                    @foreach($categories as $category)
                                                                                    <option value='{{$category->id}}'>{{$category->catName}}</option>
                                                                                    @endforeach
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                                                                            <label class="col-sm-2 control-label">Name:</label>
                                                                            <div class="col-sm-10">
                                                                                <input type="text" class="form-control" placeholder="Product name" name="name" value="{{ old('name') }}" required> @if ($errors->has('name'))
                                                                                <span class="help-block">
                                                                                    <strong>{{ $errors->first('name') }}</strong>
                                                                                </span>
                                                                                @endif
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group{{ $errors->has('price') ? ' has-error' : '' }}">
                                                                            <label class="col-sm-2 control-label">Price:</label>
                                                                            <div class="col-sm-10">
                                                                                <input type="text" class="form-control" placeholder="$160.00" name="price" value="{{ old('price') }}" required>
                                                                            </div>
                                                                            @if ($errors->has('price'))
                                                                            <span class="help-block">
                                                                                <strong>{{ $errors->first('price') }}</strong>
                                                                            </span>
                                                                            @endif
                                                                        </div>

                                                                        <div class="form-group{{ $errors->has('offer') ? ' has-error' : '' }}">
                                                                            <label class="col-sm-2 control-label">Price After Discound:</label>
                                                                            <div class="col-sm-10">
                                                                                <input type="text" class="form-control" placeholder="$160.00" name="offer" value="{{ old('offer') }}" required>
                                                                            </div>
                                                                            @if ($errors->has('offer'))
                                                                            <span class="help-block">
                                                                                <strong>{{ $errors->first('offer') }}</strong>
                                                                            </span>
                                                                            @endif
                                                                        </div>

                                                                        <div class="form-group{{ $errors->has('description') ? ' has-error' : '' }}">
                                                                            <label class="col-sm-2 control-label">Description:</label>
                                                                            <div class="col-sm-10">
                                                                                {{Form::textarea('description', '', ['placeholder'=>'Enter your Description here', 'class'=>'form-control','id'=>'article-ckeditor','required'])}}
                                                                            </div>
                                                                            @if ($errors->has('description'))
                                                                            <span class="help-block">
                                                                                <strong>{{ $errors->first('description') }}</strong>
                                                                            </span>
                                                                            @endif
                                                                        </div>
                                                                    </fieldset>
                                                                </div>
                                                            </div>
                                                            <div id="tab-4" class="tab-pane">
                                                                <div class="panel-body">
                                                                    <div class="row">
                                                                        <div class="col-md-3">
                                                                            Image 1
                                                                            <small>(main image)</small>
                                                                        </div>
                                                                        <div class="col-md-9">
                                                                            <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                                                                <div class="form-control" data-trigger="fileinput">
                                                                                    <i class="glyphicon glyphicon-file fileinput-exists"></i>
                                                                                    <span class="fileinput-filename"></span>
                                                                                </div>
                                                                                <span class="input-group-addon btn btn-default btn-file">
                                                                                    <span class="fileinput-new">Select file</span>
                                                                                    <span class="fileinput-exists">Change</span>
                                                                                    <input type="file" name="image[mena]">
                                                                                </span>
                                                                                <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="clearfix"></div>
                                                                        <div class="col-md-3">
                                                                            Image2
                                                                        </div>
                                                                        <div class="col-md-9">
                                                                            <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                                                                <div class="form-control" data-trigger="fileinput">
                                                                                    <i class="glyphicon glyphicon-file fileinput-exists"></i>
                                                                                    <span class="fileinput-filename"></span>
                                                                                </div>
                                                                                <span class="input-group-addon btn btn-default btn-file">
                                                                                    <span class="fileinput-new">Select file</span>
                                                                                    <span class="fileinput-exists">Change</span>
                                                                                    <input type="file" name="image[]">
                                                                                </span>
                                                                                <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-3">
                                                                            Image3
                                                                        </div>
                                                                        <div class="col-md-9">
                                                                            <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                                                                <div class="form-control" data-trigger="fileinput">
                                                                                    <i class="glyphicon glyphicon-file fileinput-exists"></i>
                                                                                    <span class="fileinput-filename"></span>
                                                                                </div>
                                                                                <span class="input-group-addon btn btn-default btn-file">
                                                                                    <span class="fileinput-new">Select file</span>
                                                                                    <span class="fileinput-exists">Change</span>
                                                                                    <input type="file" name="image[]">
                                                                                </span>
                                                                                <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-3">
                                                                            Image4
                                                                        </div>
                                                                        <div class="col-md-9">
                                                                            <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                                                                <div class="form-control" data-trigger="fileinput">
                                                                                    <i class="glyphicon glyphicon-file fileinput-exists"></i>
                                                                                    <span class="fileinput-filename"></span>
                                                                                </div>
                                                                                <span class="input-group-addon btn btn-default btn-file">
                                                                                    <span class="fileinput-new">Select file</span>
                                                                                    <span class="fileinput-exists">Change</span>
                                                                                    <input type="file" name="image[]">
                                                                                </span>
                                                                                <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <button class="btn btn-sm btn-warning btn-block m-t-n-xs" type="submit">
                                                                <strong>Submit</strong>
                                                            </button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end modal -->
            <!-- Modal edit -->
            <div id="edit" class="modal fade product" role="dialog">
                <div class="modal-dialog modal-lg">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h3 class="title">Edit Product</h3>
                        </div>
                        <div class="modal-body">
                            <div class="row m-t-sm">
                                <div class="row">
                                    <!--  -->
                                    <div class="col-lg-12">
                                        <div class="tabs-container">
                                            <ul class="nav nav-tabs">
                                                <li class="active">
                                                    <a data-toggle="tab" href="#tab-11"> Product info</a>
                                                </li>
                                                <li class="">
                                                    <a data-toggle="tab" href="#tab-44"> Images</a>
                                                </li>
                                            </ul>
                                            <form action='' id="EditProduct" method='post' enctype='multipart/form-data'>
                                                {{ csrf_field() }}
                                                {{ Form::hidden('_method','put') }}
                                                <div class="tab-content">
                                                    <div id="tab-11" class="tab-pane active">
                                                        <div class="panel-body">
                                                            <fieldset class="form-horizontal">
                                                                <div class="form-group">
                                                                    <label class="col-sm-2 control-label">Category:</label>
                                                                    <div class="col-sm-10">
                                                                        <select class="form-control" name="categories_id" id="sel1">
                                                                            @foreach($categories as $category)
                                                                            <option value='{{$category->id}}'>{{$category->catName}}</option>
                                                                            @endforeach
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                                                                    <label class="col-sm-2 control-label">Name:</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="text" class="form-control" placeholder="Product name" id='prName' name="name" value="" required> @if ($errors->has('name'))
                                                                        <span class="help-block">
                                                                            <strong>{{ $errors->first('name') }}</strong>
                                                                        </span>
                                                                        @endif
                                                                    </div>
                                                                </div>
                                                                <div class="form-group{{ $errors->has('price') ? ' has-error' : '' }}">
                                                                    <label class="col-sm-2 control-label">Price:</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="text" class="form-control" placeholder="$160.00" name="price"id='prPrice'  value="" required>
                                                                    </div>
                                                                    @if ($errors->has('price'))
                                                                    <span class="help-block">
                                                                        <strong>{{ $errors->first('price') }}</strong>
                                                                    </span>
                                                                    @endif
                                                                </div>

                                                                <div class="form-group{{ $errors->has('offer') ? ' has-error' : '' }}">
                                                                    <label class="col-sm-2 control-label">Price After Discound:</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="text" class="form-control" placeholder="$160.00" id='prOffer' name="offer" value="" required>
                                                                    </div>
                                                                    @if ($errors->has('offer'))
                                                                    <span class="help-block">
                                                                        <strong>{{ $errors->first('offer') }}</strong>
                                                                    </span>
                                                                    @endif
                                                                </div>

                                                                <div class="form-group{{ $errors->has('description') ? ' has-error' : '' }}">
                                                                    <label class="col-sm-2 control-label">Description:</label>
                                                                    <div class="col-sm-10">
                                                                        {{Form::textarea('description', '', ['placeholder'=>'Enter your Description here', 'class'=>'form-control prDesc','id'=>'articleed-ckeditor','required'])}}
                                                                    </div>
                                                                    @if ($errors->has('description'))
                                                                    <span class="help-block">
                                                                        <strong>{{ $errors->first('description') }}</strong>
                                                                    </span>
                                                                    @endif
                                                                </div>
                                                            </fieldset>
                                                        </div>
                                                    </div>
                                                    <div id="tab-44" class="tab-pane">
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-md-3">
                                                                    Image 1
                                                                    <small>(main image)</small>
                                                                </div>
                                                                <div class="col-md-9">
                                                                    <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                                                        <div class="form-control" data-trigger="fileinput">
                                                                            <i class="glyphicon glyphicon-file fileinput-exists"></i>
                                                                            <span class="fileinput-filename"></span>
                                                                        </div>
                                                                        <span class="input-group-addon btn btn-default btn-file">
                                                                            <span class="fileinput-new">Select file</span>
                                                                            <span class="fileinput-exists">Change</span>
                                                                            <input type="file" name="image[mena]">
                                                                        </span>
                                                                        <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
                                                                    </div>
                                                                </div>
                                                                <div class="clearfix"></div>
                                                                <div class="col-md-3">
                                                                    Image2
                                                                </div>
                                                                <div class="col-md-9">
                                                                    <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                                                        <div class="form-control" data-trigger="fileinput">
                                                                            <i class="glyphicon glyphicon-file fileinput-exists"></i>
                                                                            <span class="fileinput-filename"></span>
                                                                        </div>
                                                                        <span class="input-group-addon btn btn-default btn-file">
                                                                            <span class="fileinput-new">Select file</span>
                                                                            <span class="fileinput-exists">Change</span>
                                                                            <input type="file" name="image[]">
                                                                        </span>
                                                                        <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    Image3
                                                                </div>
                                                                <div class="col-md-9">
                                                                    <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                                                        <div class="form-control" data-trigger="fileinput">
                                                                            <i class="glyphicon glyphicon-file fileinput-exists"></i>
                                                                            <span class="fileinput-filename"></span>
                                                                        </div>
                                                                        <span class="input-group-addon btn btn-default btn-file">
                                                                            <span class="fileinput-new">Select file</span>
                                                                            <span class="fileinput-exists">Change</span>
                                                                            <input type="file" name="image[]">
                                                                        </span>
                                                                        <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    Image4
                                                                </div>
                                                                <div class="col-md-9">
                                                                    <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                                                        <div class="form-control" data-trigger="fileinput">
                                                                            <i class="glyphicon glyphicon-file fileinput-exists"></i>
                                                                            <span class="fileinput-filename"></span>
                                                                        </div>
                                                                        <span class="input-group-addon btn btn-default btn-file">
                                                                            <span class="fileinput-new">Select file</span>
                                                                            <span class="fileinput-exists">Change</span>
                                                                            <input type="file" name="image[]">
                                                                        </span>
                                                                        <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <button class="btn btn-sm btn-warning btn-block m-t-n-xs" type="submit">
                                                        <strong>Submit</strong>
                                                    </button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<!-- end modal -->
<!-- delete Modal-->
<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel" style="padding-left: 14px;">Confirm Delete</h4>
            </div>
            <div class="modal-body m-t">
                <p>Do you want to delete this Product?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Cancel</button>
                {!! Form::open(['method'=>'POST' ,'id'=>'DeleteProduct']) !!} {{ Form::hidden('_method','DELETE') }}
                <button type="submit" class="btn btn-danger btn-ok ">Delete</button>
                {!! Form::close() !!}
            </div>
        </div>
    </div>
</div>
</div>

@endsection @section('js')

<script>
    $(document).ready(function () {
        $('.summernote').summernote();

        $('.input-group.date').datepicker({
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true
        });

    });

    // pass product data when show model 
    $(document).on("click", ".sendProductId", function () {
        var myId = $(this).data('id');
        var name = $(this).data('productname');
        var price = $(this).data('productprice');
        var offer = $(this).data('productoffer');
        var desc = $(this).data('productdes');
        var catID = $(this).data('productcatid');
        $("#EditProduct").attr("action", "/admin/products/" + myId);
        $("#prName").attr("value", name);
        $("#prPrice").attr("value", price);
        $("#prOffer").attr("value", offer);
        $("#articleed-ckeditor").text(desc);
        // console.log(desc);

        // $("#productName").attr("value", catID);
    })

    // pass product id when show delete model
    $(document).on("click", ".sendIdDelete", function () {
        var myId = $(this).data('id');
        $("#DeleteProduct").attr("action", "/admin/products/" + myId);
    })
</script>
@endsection