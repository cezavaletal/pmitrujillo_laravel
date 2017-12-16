@extends('layout')

@section('contenido')

      <div class="page-header">
          <div class="container">
              <div class="row">

                  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                      <div class="page-caption">
                          <h2 class="page-title">Contacto</h2>
                          <div class="page-breadcrumb">
                              <ol class="breadcrumb">
                                  <li><a href="/" id="blanco">Home</a></li>
                                  <li class="active" id="blanco">Contacto</li>
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
                @if(session()->has('flash'))
                <div class="alert alert-success alert-dismissible " role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  <strong>  {{ session()->get('flash') }}</strong>
                  </div>
                @endif
                  <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">

                      <div class="widget widget-contact">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d9394.238859426308!2d-79.041046085499!3d-8.122761037344349!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xcc9df42dd0f598f!2sColegio+de+Ingenieros+de+La+Libertad!5e0!3m2!1ses-419!2spe!4v1510514386630" width="100%" height="200" frameborder="0" style="border:0" allowfullscreen></iframe>
                         
                          <h3 class="widget-title">Información</h3>
                          <address>
                              <strong>Colegio de  de La Libertad</strong>
                              <br> Francisco Borja 250,
                              <br> Victor Larco Herrera 13008
                              <br>
                              <abbr title="Phone">P:</abbr> (044) 608395 : Ing. Lourdes Amaya
                          </address>
                          <address>
                              <strong>Email</strong>
                              <br>
                              <a href="mailto:#">pmitrujillo@cip.com.pe</a>
                          </address>
                      </div>
                      
                      <div class="widget widget-social">
                          <div class="social-circle">
                              <a href="#" class="#"><i class="fa fa-facebook"></i></a>
                              <a href="#" class="#"><i class="fa fa-google-plus"></i></a>
                              <a href="#" class="#"><i class="fa fa-twitter"></i></a>
                              <a href="#" class="#"><i class="fa fa-youtube-play"></i></a>
                          </div>
                      </div>
                  </div>
                  <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                      <div class="row">
                          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                              <h1>Formulario</h1>
                              <p>
  Por favor completa el formulario a continuación. Haremos todo lo posible para responderle lo más rápido posible.</p>
                              <form id="contacto-formulario" method="post" action="{{route('messages')}}" role="form">
                                {{csrf_field()}}
                                  <div class="row">
                                      <div class="col-md-6">
                                          <label class="control-label" for="name">Nombre</label>
                                          <input type="text" name="name" id="name" placeholder="" class="form-control" required>
                                      </div>
                                      <div class="col-md-6">
                                          <label class="control-label" for="phone">Telefono</label>
                                          <input type="text" name="phone" id="phone" placeholder="" class="form-control" required>
                                      </div>
                                      <div class="col-md-6">
                                          <label class="control-label" for="email">Email</label>
                                          <input type="text" name="email" id="email" placeholder="" class="form-control" required>
                                      </div>
                                      <div class="col-md-6">
                                          <label class="control-label" for="Subject">Tema</label>
                                          <input type="text" name="subject" id="subject" placeholder="" class="form-control" required>
                                      </div>
                                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                          <div class="form-group">
                                              <label class="control-label" for="textarea">Mensaje</label>
                                              <textarea class="form-control" id="textarea" name="body" rows="6" placeholder="" required></textarea>
                                          </div>
                                      </div>
                                      <div class="col-md-12">
                                          <div class="form-group">
                                              <button  type="submit" class="btn btn-default">Enviar</button>
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
@stop
