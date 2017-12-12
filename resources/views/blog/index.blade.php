
@extends('layout')

@section('contenido')
      <div class="page-header">
          <div class="container">
              <div class="row">
                  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                      <div class="page-caption">
                          <h2 class="page-title">Blog</h2>
                          <div class="page-breadcrumb">
                              <ol class="breadcrumb">
                                  <li><a href="/" id="blanco">Home</a></li>
                                  <li class="active" id="blanco">Blog</li>
                              </ol>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
      <div class="content">
          <div class="container">
              <div class="row">
                  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					@foreach($posts as $post)
                    <div class="post-block">
                        <div class="row ">
                            <!-- post block -->
                            <div class="col-md-6">
                                <div class="post-img">
                                    <a><img src="{{ Voyager::image( $post->image ) }}"  href="blog/{{ $post->slug }}" alt="" class="img-responsive"></a>
                                </div>
                            </div>
                            <div class="col-md-6">
                              <div class="post-content">
                                  <h2><a class="title" href="blog/{{ $post->slug }}" >{{ $post->title }}</a></h2>
								   <p class="meta"> <span class="meta-date"> {{ $post->created_at }}</span> 
								   <span class="meta-categoria"><a href="# ">category_id</a></span> 
								
								<p>{{ $post->excerpt }}</p>
                            </div>
                        </div>
                        <!-- /.post block -->
                    </div>
                    
                  </div>

				  
				@endforeach
                 
              </div>
          </div>
      </div>
      <div class="content">
          <div class="container">
              <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                      <div class="post-block post-quote">
                          <div class="row ">
                              <!-- post block -->
                              <div class="col-md-12">
                                  <div class="quote-content">
                                      <blockquote>“Un líder es mejor cuando la gente apenas sabe que existe,
                                        cuando su trabajo está hecho y su meta
                                         cumplida, ellos dirán: Lo hicimos nosotros”</blockquote>
                                  </div>
                              </div>
                              <!-- /.post block -->
                          </div>
                      </div>
                  </div>
                </div>
          </div>
      </div>

@stop
