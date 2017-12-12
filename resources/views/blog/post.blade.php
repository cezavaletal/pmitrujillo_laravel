
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
                <div class="">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="post-holder">
                                <!-- post holder -->
                                <div class="post-img"><img src="{{ Voyager::image( $post->image ) }}" alt="Free Therapy Website Template" class="img-responsive">
                                </div>
                                <br>
                                <br>
                                <div class="post-content">
                                    <!-- post content -->
                                    <div class="post-header">
                                        <h1>{{ $post->title }}</h1>
                                        <div class="meta">
                                            <!-- post meta -->
                                            <span class="meta-date">{{ $post->created_at }} </span>
                                        </div>
                                    </div>
                                     <p>{{ $post->excerpt }}</p>
                                     <div> 
                                     {{ $post->body }}
                                     </div>
                                    <!-- /. post navigation
                                    <div class="author-post">
                                        Post author 
                                        <div class="row">
                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                <div class="author-img">
                                                    <a href="#"><img src="images/author.jpg" class="img-responsive" alt=""></a>
                                                </div>
                                            </div>
                                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                                <div class="author-bio">
                                                    <div class="author-header">
                                                        <h3><a href="#" class="title">Thomas Warren</a></h3>
                                                    </div>
                                                    <div class="author-content">
                                                        <p>Etiam laoreet sitamet purus sed vestibulu ullam cursus lacus eget pharetra accumsan ante metus tinante in ones leousce in consectetur lacus non efficiturex.</p>
                                                        <a href="#" class="btn btn-default">View All Post</a> </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div> -->
                                    <!-- /.post author 
                                    <div class="comments-area">
                                        <h2 class="comments-title">04 Comments</h2>
                                        <ul class="comment-list">
                                            <li class="comment">
                                                <div class="comment-body">
                                                    <div class="comment-author"><img src="images/user-pic-1.jpg" alt="" class="img-circle"> </div>
                                                    <div class="comment-info">
                                                        <div class="comment-header">
                                                            <div class="comment-meta"><span class="comment-meta-date pull-right">25 February, 2020 </span></div>
                                                            <h4 class="user-title">Willy Smith</h4>
                                                        </div>
                                                        <div class="comment-content">
                                                            <p>Laoreet sitamet purus sed vestibulu ullam cursus, lacus eget pharetra accumsan ante metus psumet efficitur elit.</p>
                                                        </div>
                                                        <div class="reply"><a href="#" class="btn-link">Reply</a></div>
                                                    </div>
                                                </div>
                                                <ul class="childern">
                                                    <li class="comment">
                                                        <div class="comment-body">
                                                            <div class="">
                                                                <div class="comment-author"><img src="images/user-pic-2.jpg" alt="" class="img-circle"> </div>
                                                                <div class="comment-info">
                                                                    <div class="comment-header">
                                                                        <div class="comment-meta"><span class="comment-meta-date pull-right">25 February, 2020 </span></div>
                                                                        <h4 class="user-title">Cryst Jones</h4>
                                                                    </div>
                                                                    <div class="comment-content">
                                                                        <p>Getub reet sitamet purus sed vestibulu ullam cursus, lacus eget pharetra accumsan anteme psumet.</p>
                                                                    </div>
                                                                    <div class="reply"><a href="#" class="btn-link">Reply</a></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                        <ul class="comment-list">
                                            <li class="comment">
                                                <div class="comment-body">
                                                    <div class="">
                                                        <div class="comment-author"><img src="images/user-pic-3.jpg" alt="" class="img-circle"> </div>
                                                        <div class="comment-info">
                                                            <div class="comment-header">
                                                                <div class="comment-meta"><span class="comment-meta-date pull-right">24 February, 2020 </span></div>
                                                                <h4 class="user-title">Rosario Scott</h4>
                                                            </div>
                                                            <div class="comment-content">
                                                                <p>Laoreet sitamet purus sed vestibulu ullam cursus, lacus eget pharetra accumsan ante metus psumet efficitur elit.</p>
                                                            </div>
                                                            <div class="reply"><a href="#" class="btn-link">Reply</a></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="comment-list">
                                            <li class="comment">
                                                <div class="comment-body">
                                                    <div class="">
                                                        <div class="comment-author"><img src="images/user-pic-4.jpg" alt="" class="img-circle"> </div>
                                                        <div class="comment-info">
                                                            <div class="comment-header">
                                                                <div class="comment-meta"><span class="comment-meta-date pull-right">24 February, 2020 </span></div>
                                                                <h4 class="user-title mb10">Susan White</h4>
                                                            </div>
                                                            <div class="comment-content">
                                                                <p>Sed mattis sem leoat sollicitudin nulla egestas acstibulum ante ipsum primis in faucibus orci luctus.</p>
                                                            </div>
                                                            <div class="reply"><a href="#" class="btn-link">Reply</a></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>-->
                                </div>
                                <div class="leave-comments">
                                    <h2 class="reply-title">Leave a Reply</h2>
                                    <form class="reply-form">
                                        <div class="row">
                                            <!-- Textarea -->
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <label class="control-label" for="textarea">Comments</label>
                                                    <textarea class="form-control" id="textarea" name="textarea" rows="6"></textarea>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <!-- Text input-->
                                                <div class="form-group">
                                                    <label class="control-label" for="name">Name</label>
                                                    <span class="required">*</span>
                                                    <input id="name" name="name" type="text" class="form-control" required="">
                                                </div>
                                            </div>
                                            <!-- Text input-->
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label" for="email">E-mail</label>
                                                    <span class="required">*</span>
                                                    <input id="email" name="email" type="email" class="form-control" required="">
                                                </div>
                                            </div>
                                            <!-- Text input-->
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label" for="Website">Website</label>
                                                    <span class="required">*</span>
                                                    <input id="Website" name="Website" type="text" class="form-control" required="">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <!-- Button -->
                                                <div class="form-group">
                                                    <button id="singlebutton" name="singlebutton" class="btn btn-default">Leave A Comment</button>
                                                </div>
                                            </div>
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

@stop
