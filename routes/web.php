<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\admin\Page;
use App\Http\Controllers\admin\Post;
use App\Http\Controllers\admin\Contact;
use App\Http\Controllers\front\Posts;
use App\Http\Controllers\Admin_auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/',[Posts::class,'home']);
Route::get('/post/{id}',[Posts::class,'post']);



Route::get('/admin/login',function(){
	return view('admin.login');
});
Route::post('/admin/login_submit', [Admin_auth::class,'login_submit']); //'Admin_auth@login_submit'

Route::get('/admin/logout', function () {
    session()->forget('BLOG_USER_ID');
	return redirect('/admin/login');
});

Route::group(['middleware'=>['admin_auth']],function(){
	Route::get('/admin/post/list',[Post::class,'listing']); //'admin\Post@listing'
	Route::get('/admin/post/add',function(){
		return view('admin.post.add');
	});	
	Route::post('/admin/post/submit',[Post::class,'submit']); //'admin\Post@submit'
	Route::get('/admin/post/delete/{id}',[Post::class,'delete']); //'admin\Post@delete'
	Route::get('/admin/post/edit/{id}', [Post::class,'edit']);  //'admin\Post@edit'
	Route::post('/admin/post/update/{id}',[Post::class,'update']); //'admin\Post@update'
	
	Route::get('/admin/page/list',[Page::class,'listing']);  //'admin\Page@listing'
	Route::get('/admin/page/add',function(){
		return view('admin.page.add');
	});	//'admin.page.add'
	Route::post('/admin/page/submit',[Page::class,'submit']);// 'admin\Page@submit'
	Route::get('/admin/page/delete/{id}',[Page::class,'delete']); //'admin\Page@delete'
	Route::get('/admin/page/edit/{id}',[Page::class,'edit']); //'admin\Page@edit'
	Route::post('/admin/page/update/{id}',[Page::class,'update']); //'admin\Page@update'
	
	Route::get('/admin/contact/list',[Contact::class,'listing']); //'admin\Contact@listing'
});