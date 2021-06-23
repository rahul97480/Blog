<?php

namespace App\Http\Controllers\front;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class Posts extends Controller
{
    function home(){
		$data['result']=DB::table('posts')->orderBy('id','desc')->get();
		return view('front.home',$data);
	}
	
	function post($id){
		$data['result']=DB::table('posts')->where('id',$id)->get();
		return view('front.post',$data);
	}
}
