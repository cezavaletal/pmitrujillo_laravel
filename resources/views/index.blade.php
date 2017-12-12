@extends('layout')

@section('contenido')
    @foreach($banner as $banner)
   <style type="text/css">
   .hero-section { padding-top: 135px; padding-bottom: 135px; 
   background: linear-gradient(rgba(36, 39, 38, 0.5), rgba(36, 39, 38, 0.5)), rgba(36, 39, 38, 0.5) url('{{ Voyager::image( $banner->image ) }}') no-repeat center; 
   background-size: cover; }
   </style>
    <div class="hero-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                   <h1 class="hero-title">{{ $banner->titulo }}</h1>
                   <p class="hero-text"><strong>{{ $banner->subtitulo }}</strong> </p>
                   <a target="_blank" href="{{ $banner->url }}" class="btn btn-default">Ver Mas..</a> </div>
               </div>
            </div>
        </div>
    </div>
   @endforeach
    <div class="space-medium bg-default">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12"><img src="images/foto9.jpg" alt="" class="img-responsive"></div>
                <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
                    <div class="">
                        <h1>Voluntariado</h1>
                        <p>Ser Voluntario del PMI te ayudará a desarrollar habilidades de liderazgo, nuevos conocimientos, ganar experiencia y hacer crecer tu red de contactos. Y lo más importante, formarás parte de equipos de trabajo integrados por profesionales a los que les mueve una pasión común: el Project Management.
En el Capítulo Lima del Project Management Institute utilizamos la plataforma Volunteer Relationship Management System (VRMS, https://vrms.pmi.org) del PMI para publicar nuestras oportunidades de voluntariado.</p>

                        <a href="voluntariado.html" class="btn btn-default">Ver Mas...</a> </div>
                </div>
            </div>
        </div>
    </div>

    <div class="cta-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="cta-title">Formación y desarrollo</h1>
                    <p class="cta-text">Mejore su conjunto de habilidades, aumente su valor para su organización y mejore sus perspectivas de carrera a través de nuestras oportunidades de capacitación en persona y en línea, y más. Explore la capacitación y el desarrollo.
Construya una red profesional </p>
                    <a href="beneficios.html" class="btn btn-default" >Ver Mas..</a> </div>
            </div>
        </div>
    </div>
    <div class="space-medium">
        <div class="container">
            <div class="row">
                <div class="col-lg-offset-2 col-lg-8 col-md-offset-2 col-md-8 col-sm-12 col-xs-12">
                    <div class="section-title mb40 text-center">
                        <!-- section title start-->
                        <h1>Membresía</h1>
                    </div>
                    <!-- /.section title start-->
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="post-block">
                        <div class="row ">
                            <!-- post block -->
                            <div class="col-md-6">
                                <div class="post-img">
                                    <a href="#"><img src="images/foto6.jpg" alt="" class="img-responsive"></a>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="post-content">
                                    <h2><a href="tipos.html" class="title" target="_blank">Tenemos para profesionales, estudiantes y jubilados.</a></h2>

                                    <p>Consulte las opciones de membresía que tenemos para profesionales, estudiantes y jubilados.
                                       El plan de facturación grupal está disponible para organizaciones y universidades.</p>
                                    <a href="tipos.html" class="btn btn-default">Ver Mas..</a> </div>
                            </div>
                        </div>
                        <!-- /.post block -->
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
