<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Commession extends Model
{
    protected $fillable = ['user_id', 'commession'];





// Commession belongs to one user 
     public function user()
    {
       return $this->belongsTo('App\User');
    }
}
