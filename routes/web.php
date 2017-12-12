<?php

Route::get('/', function () {
    $categorias=App\MenuPrincipal::where('estado', '=', 1)->get(); 
    $subcategoria1=App\MenuPrincipal::where('estado', '=', 2)->get();
    $subcategoria2=App\MenuPrincipal::where('estado', '=', 3)->get();
    $footer=App\Footer::where('estado', '=', 1)->get();
    $logo=App\Logo::where('estado', '=', 1)->get();
    $banner=App\Banner::where('estado', '=', 1)->get();
    return view('index',compact('categorias','subcategoria1','subcategoria2','footer','logo','banner'));
});

Route::get('autoridades', function () {
    $categorias=App\MenuPrincipal::where('estado', '=', 1)->get(); 
    $subcategoria1=App\MenuPrincipal::where('estado', '=', 2)->get();
    $subcategoria2=App\MenuPrincipal::where('estado', '=', 3)->get();
    $footer=App\Footer::where('estado', '=', 1)->get();
    return view('autoridades',compact('categorias','subcategoria1','subcategoria2','footer'));
});

Route::get('beneficios', function () {
    $categorias=App\MenuPrincipal::where('estado', '=', 1)->get(); 
    $subcategoria1=App\MenuPrincipal::where('estado', '=', 2)->get();
    $subcategoria2=App\MenuPrincipal::where('estado', '=', 3)->get();
    $footer=App\Footer::where('estado', '=', 1)->get();
    return view('beneficios',compact('categorias','subcategoria1','subcategoria2','footer'));
});

Route::get('contacto', function () {
    $categorias=App\MenuPrincipal::where('estado', '=', 1)->get(); 
    $subcategoria1=App\MenuPrincipal::where('estado', '=', 2)->get();
    $subcategoria2=App\MenuPrincipal::where('estado', '=', 3)->get();
    $footer=App\Footer::where('estado', '=', 1)->get();
    return view('contacto',compact('categorias','subcategoria1','subcategoria2','footer'));
});


Route::get('historia', function () {
    $categorias=App\MenuPrincipal::where('estado', '=', 1)->get(); 
    $subcategoria1=App\MenuPrincipal::where('estado', '=', 2)->get();
    $subcategoria2=App\MenuPrincipal::where('estado', '=', 3)->get();
    $footer=App\Footer::where('estado', '=', 1)->get();
    return view('historia',compact('categorias','subcategoria1','subcategoria2','footer'));
});

Route::get('membresias', function () {
    $categorias=App\MenuPrincipal::where('estado', '=', 1)->get(); 
    $subcategoria1=App\MenuPrincipal::where('estado', '=', 2)->get();
    $subcategoria2=App\MenuPrincipal::where('estado', '=', 3)->get();
    $footer=App\Footer::where('estado', '=', 1)->get();
    return view('membresias',compact('categorias','subcategoria1','subcategoria2','footer'));
});
Route::get('organizacion', function () {
    $categorias=App\MenuPrincipal::where('estado', '=', 1)->get(); 
    $subcategoria1=App\MenuPrincipal::where('estado', '=', 2)->get();
    $subcategoria2=App\MenuPrincipal::where('estado', '=', 3)->get();
    $footer=App\Footer::where('estado', '=', 1)->get();
    return view('organizacion',compact('categorias','subcategoria1','subcategoria2','footer'));
});
Route::get('presentacion', function () {
    $categorias=App\MenuPrincipal::where('estado', '=', 1)->get(); 
    $subcategoria1=App\MenuPrincipal::where('estado', '=', 2)->get();
    $subcategoria2=App\MenuPrincipal::where('estado', '=', 3)->get();
    $footer=App\Footer::where('estado', '=', 1)->get();
    return view('presentacion',compact('categorias','subcategoria1','subcategoria2','footer'));
});
Route::get('tipos', function () {
    $categorias=App\MenuPrincipal::where('estado', '=', 1)->get(); 
    $subcategoria1=App\MenuPrincipal::where('estado', '=', 2)->get();
    $subcategoria2=App\MenuPrincipal::where('estado', '=', 3)->get();
    $footer=App\Footer::where('estado', '=', 1)->get();
    return view('tipos',compact('categorias','subcategoria1','subcategoria2','footer'));
});
Route::get('voluntariado', function () {
    $categorias=App\MenuPrincipal::where('estado', '=', 1)->get(); 
    $subcategoria1=App\MenuPrincipal::where('estado', '=', 2)->get();
    $subcategoria2=App\MenuPrincipal::where('estado', '=', 3)->get();
    $footer=App\Footer::where('estado', '=', 1)->get();
    return view('voluntariado',compact('categorias','subcategoria1','subcategoria2','footer'));
});
Route::get('blog', function () {
    $categorias=App\MenuPrincipal::where('estado', '=', 1)->get(); 
    $subcategoria1=App\MenuPrincipal::where('estado', '=', 2)->get();
    $subcategoria2=App\MenuPrincipal::where('estado', '=', 3)->get();
    $footer=App\Footer::where('estado', '=', 1)->get();
    $posts = App\Post::all();
    $logo=App\Logo::where('estado', '=', 1)->get();
    return view('blog.index', compact('posts'),compact('categorias','subcategoria1','subcategoria2','footer','logo'));
});

Route::get('blog/{slug}', function($slug){
    $categorias=App\MenuPrincipal::where('estado', '=', 1)->get(); 
    $subcategoria1=App\MenuPrincipal::where('estado', '=', 2)->get();
    $subcategoria2=App\MenuPrincipal::where('estado', '=', 3)->get();
    $footer=App\Footer::where('estado', '=', 1)->get();
    $post = App\Post::where('slug', '=', $slug)->firstOrFail();  
    $logo=App\Logo::where('estado', '=', 1)->get();
	return view('blog.post', compact('post'),compact('categorias','subcategoria1','subcategoria2','footer','logo'));
});


Route::post('messages',function(){
  $data=request()-> all();
  //enviar un correo
  Mail::send("emails.message", $data,function($message) use ($data){
    $message->from($data['email'],$data['name'])
            ->to('cezavaletal@gmail.com','Eduardo')
            ->subject($data['subject']);
  });
  //responder al usuario

 return back()->with('flash',$data['name'].', Tu mensaje ha sido recibido');
})->name('messages');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

