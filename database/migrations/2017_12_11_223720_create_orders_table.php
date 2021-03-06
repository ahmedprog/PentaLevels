<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {     
           $table->engine = 'InnoDB';
            $table->increments('id');
            $table->integer('user_id')->unsigned(); 
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');            
            $table->integer('product_id')->unsigned(); 
            $table->foreign('product_id')->references('id')->on('products');   
            $table->decimal('amount', 8, 2);  
            $table->string('transferedby')->default('Commessions');            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders');
    }
}
