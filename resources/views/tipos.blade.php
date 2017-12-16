@extends('layout')

@section('contenido')

      <div class="page-header">
          <div class="container">
              <div class="row">
                  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                      <div class="page-caption">
                          <h2 class="page-title">Membresias</h2>
                          <div class="page-breadcrumb">
                              <ol class="breadcrumb">
                                  <li><a href="/" id="blanco">Home</a></li>
                                  <li class="active" id="blanco">Tipos </li>
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
                  <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                      <h1>Tipos </h1>
                      <img src="images/foto2.jpg" alt="" class="img-responsive mb30">
                      <p class="lead"> Si eres nuevo en la gestión de proyectos o un veterano con experiencia, tenemos el plan de membresía adecuado para tí.</p>
          <img src="images/estudiantes.jpg" class="alignleft img-responsive" alt="">
                      <p class="lead">Estudiantes</p>
                      <p>La membresía al PMI no es solamente para personas que trabajan en proyectos. La membresía de estudiante del PMI puede ser lo mejor para ti si tú estás cursando un título universitario o de posgrado, a tiempo completo, en una universidad acreditada en USA o su equivalente global (reconocida como universidad ante el gobierno de tu país)
  Lo único que necesitas para ello es tu pasión por la dirección de proyectos y poder verificar que estás cursando una carrera universitaria o un posgrado a tiempo completo.
  </p>
  <table class="table table-dark">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">Tipos</th>
        <th scope="col">Costo</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th scope="row">1</th>
        <td>Membresía a PMI</td>
        <td><p>USD 32 para afiliarse </p><p>USD 32 para renovar la membresía</p></td>
      </tr>
      <tr>
        <th scope="row">2</th>
        <td>Membresía a un capítulo de PMI</td>
        <td><p>Membresía a un capítulo de PMI</p>
        </td>

      </tr>

    </tbody>
  </table>
                      <img src="images/profesional.jpg" class="alignleft img-responsive" alt="">
                      <p class="lead">Individual</p>
                      <p>Este tipo de membresía está abierto a todos aquellos interesados en la dirección de proyectos. Si su trabajo involucra proyectos o dirección de proyectos, o si Ud. simplemente quiere aprender más acerca de ellos, la membresía individual es la mejor solución para Ud. Tarifas:
  </p>
  <table class="table table-dark">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">Tipos</th>
        <th scope="col">Costo</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th scope="row">1</th>
        <td>Membresía a PMI</td>
        <td><p>USD 129 para afiliarse y USD 10 para tasa de registro USD 129 para renovar la membresíaz</p> </td>
      </tr>
      <tr>
        <th scope="row">2</th>
        <td>Membresía a un capítulo de PMI</td>
        <td><p>Las tarifas varían por capítulo; vea el cuadro. Busque un capítulo cerca suyo en el listado de capítulos.</p>
        </td>

      </tr>

    </tbody>
  </table>
    <img src="images/jubilado.jpg" class="alignleft img-responsive" alt="">
                      <p class="lead">Jubilado</p>
                      <p>Su entusiasmo por la dirección de proyectos no debe terminar cuando Ud. deja de trabajar. Si Ud. ha sido un miembro del PMI (cuya membresía no ha sido suspendida o rechazada) durante cinco años consecutivos y se ha jubilado (no está trabajando), Ud. puede beneficiarse con el descuento para miembros jubilados y seguir involucrado con la profesión. Tarifas:
  </p>
  <table class="table table-dark">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">Tipos</th>
        <th scope="col">Costo</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th scope="row">1</th>
        <td>Membresía a PMI</td>
        <td><p>USD 65 para afiliarse</p> </td>
      </tr>
      <tr>
        <th scope="row">2</th>
        <td>Membresía a un capítulo de PMI</td>
        <td><p>Las tarifas varían por capítulo; vea el cuadro. Busque un capítulo cerca suyo en el listado de capítulos.</p>
        </td>

      </tr>

    </tbody>
  </table>




                  </div>
                  <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                      <div class="sidenav">
                          <ul class="listnone">
                              <li> <a href="beneficios" >Beneficios</a></li>
                              <li> <a href="tipos" class="active">Tipos</a></li>
                          </ul>
                      </div>
                      <div class="widget widget-call-to-action">
                          <h1 class="widget-title">Guía de los fundamentos para la dirección de proyectos</h1>
                          <p class="text-white">La Guía de los fundamentos para la dirección de proyectos es un libro en el que se presentan estándares, pautas y normas para la gestión de proyectos.</p>
                          <a href="#" class="btn btn-primary btn-lg">Descargar</a>
                      </div>
                  </div>
              </div>
          </div>
      </div>
       <div class="space-small bg-primary">

          <div class="container">
              <div class="row">
                  <div class="col-lg-8 col-sm-7 col-md-8 col-xs-12">
                      <h1 class="cta-title">La gestión de proyectos</h1>
                      <p class="cta-text"> La gestión de proyectos es una competencia crítica que tiene una influencia positiva en los resultados de la organización y la sociedad</p>
                  </div>
                  <div class="col-lg-4 col-sm-5 col-md-4 col-xs-12">
                      <a href="contacto" class="btn btn-white btn-lg mt20">Contactanos</a>
                  </div>
              </div>
          </div>
      </div>
@stop
