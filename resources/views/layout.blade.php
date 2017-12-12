
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="Comunidad PMI Trujillo">
    <meta name="keywords" content="Comunidad PMI Trujillo">
    <title>Comunidad PMI Trujillo</title>

    <!-- Bootstrap 
    <link href="css/bootstrap.min.css" rel="stylesheet">-->
    <link href="{{asset('css/bootstrap.min.css') }}" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i%7cMontserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="{{asset('css/font-awesome.min.css') }}" rel="stylesheet">
    <!-- Style -->
    <link href="{{asset('css/style.css') }}" rel="stylesheet">
</head>

<div class="header" id="azul">
      <div class="container">
          <div class="row" >
               
              <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
               
                  <a href="/">
                   @foreach($logo as $logoprincipal)
                  <img src="{{ Voyager::image( $logoprincipal->image ) }}" alt="LOGO_COMUNIDADPMITRUJILLO"></a>
                 @endforeach
              </div>
            
              <div class="col-lg-8 col-md-4 col-sm-12 col-xs-12">
                  <div class="navigation">
                      <div id="navigation">
                          <ul>
                             <li class="active"><a href="/" title="Home">Inicio</a></li> 
                        
                              <li class="has-sub"><a  title="nosotros">Nosotros</a>
                                  <ul>
                                      @foreach($subcategoria1 as $subcategoria1)
                                        <li><a href="{{ $subcategoria1->url }}" title="{{ $subcategoria1->nombre }}">{{ $subcategoria1->nombre }}</a>
                                         @endforeach
                                  </ul>
                              </li>
                              <li class="has-sub"><a  title="Membresía">Membresía</a>
                                  <ul>
                                      @foreach($subcategoria2 as $subcategoria2)
                                        <li><a href="{{ $subcategoria2->url }}" title="{{ $subcategoria2->nombre }}">{{ $subcategoria2->nombre }}</a>
                                         @endforeach
                                  </ul>
                              </li>
                              @foreach($categorias as $categorias)
                              <li><a href="{{ $categorias->url }}" title="{{ $categorias->nombre }}">{{ $categorias->nombre }}</a>
                            @endforeach
                              </li>
                             
                          </ul>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </div>
@yield('contenido')

    @foreach($footer as $footer)
  <div class="footer">
          <!-- footer-->
          <div class="container">
              <div class="footer-block">
                  <!-- footer block -->
                  <div class="row">
                      <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                          <div class="footer-widget">
                              <h2 class="widget-title">Ubícanos</h2>
                              <ul class="listnone contact">
                                  <li><i class="fa fa-map-marker"></i>{{$footer->direccion}}</li>
                                  <li><i class="fa fa-phone"></i>{{$footer->telefono}}</li>
                                  <li><i class="fa fa-envelope-o"></i> {{$footer->email}}</li>
                              </ul>
                          </div>
                      </div>
                      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                          <div class="footer-widget footer-social">
                              <!-- social block -->
                              <h2 class="widget-title">Redes Sociales</h2>
                              <ul class="listnone">
                                  <li>
                                      <a href="{{$footer->facebook}}"> <i class="fa fa-facebook"></i>Facebook</a>
                                  </li>
                                  <li><a href="{{$footer->twitter}}"><i class="fa fa-twitter"></i>Twitter</a></li>
                                  <li><a href="{{$footer->google}}"><i class="fa fa-google-plus"></i>Google+</a></li>
                                  <li><a href="{{$footer->linked}}"><i class="fa fa-linkedin"></i>Linkedin</a></li>
                                  <li>
                                      <a href="{{$footer->youtube}}"> <i class="fa fa-youtube"></i>Youtube</a>
                                  </li>
                              </ul>
                          </div>
                          <!-- /.social block -->
                      </div>
                      <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                          <div class="footer-widget widget-newsletter">
                              <!-- newsletter block -->
                              <h2 class="widget-title">Newsletters</h2>
                                <p>{{$footer->Newsletters}}</p>
                              <div class="input-group">
                                  <input type="text" class="form-control" placeholder="Email Address">
                                  <span class="input-group-btn">
                              <button class="btn btn-default" type="button">Suscríbete</button>
                              </span>
                              </div>
                              <!-- /input-group -->
                          </div>
                          <!-- newsletter block -->
                      </div>
                  </div>
                  <div class="tiny-footer">
                      <!-- tiny footer block -->
                      <div class="row">
                          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                              <div class="copyright-content">
                                  <p>all rights reserved</p>
                              </div>
                          </div>
                      </div>
                  </div>
                  <!-- /.tiny footer block -->
              </div>
              <!-- /.footer block -->
          </div>
      </div>
      <!-- /.footer-->
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src="{{asset('js/jquery.min.js')}}"></script>
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src="{{asset('js/bootstrap.min.js')}} "></script>
      <script src="{{asset('js/menumaker.js ')}} "></script>
      <!-- sticky header -->
      <script src="{{ asset('js/jquery.sticky.js') }}"></script>
      <script src="{{ asset('js/sticky-header.js') }}"></script>
  </body>
   @endforeach

  </html>
