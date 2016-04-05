<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<nav class="navbar navbar-default margin-bottom-0">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" 
			data-target="#menu-bar-navbar" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="menu-bar-navbar">
			<ul class="nav navbar-nav">
				<li class="dropdown">
					<a href="" class="dropdown-toggle" data-toggle="dropdown" 
					role="button" aria-haspopup="true" aria-expanded="false">
						Banco de Im&aacute;genes <span class="caret"></span>
					</a>
					<ul class="dropdown-menu font-size-1em">
						<li><a href="<c:url value="/bancoImg/imgFB" />">Im&aacute;genes para Facebook</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="">Fotos platillos</a></li>
						<li><a href="">Fotos bebidas</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="">Especiales de temporada</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="" class="dropdown-toggle" data-toggle="dropdown" 
					role="button" aria-haspopup="true" aria-expanded="false">
						Recetarios / Cardex <span class="caret"></span>
					</a>
					<ul class="dropdown-menu font-size-1em">
						<li class="dropdown sub-menu">
							<a href="" class="dropdown-toggle" data-toggle="dropdown" 
							role="button" aria-haspopup="true" aria-expanded="false">
								Bebidas <span class="caret-right"></span>
							</a>
							<ul class="dropdown-menu font-size-1em">
								<li><a href="">Fr&iacute;as</a></li>
								<li><a href="">Calientes</a></li>
							</ul>	
						</li>
						<li class="dropdown sub-menu">
							<a href="" class="dropdown-toggle" data-toggle="dropdown" 
							role="button" aria-haspopup="true" aria-expanded="false">
								Alimentos <span class="caret-right"></span>
							</a>
							<ul class="dropdown-menu font-size-1em">
								<li><a href="">Recetas</a></li>
								<li><a href="">Subrecetas</a></li>
							</ul>	
						</li>
						<li class="dropdown sub-menu">
							<a href="" class="dropdown-toggle" data-toggle="dropdown" 
							role="button" aria-haspopup="true" aria-expanded="false">
								Video recetas <span class="caret-right"></span>
							</a>
							<ul class="dropdown-menu font-size-1em">
								<li><a href="">Alimentos</a></li>
								<li><a href="">Bebidas</a></li>
							</ul>	
						</li>
						<li role="separator" class="divider"></li>
						<li class="dropdown sub-menu">
							<a href="" class="dropdown-toggle" data-toggle="dropdown" 
							role="button" aria-haspopup="true" aria-expanded="false">
								Cardex <span class="caret-right"></span>
							</a>
							<ul class="dropdown-menu font-size-1em">
								<li><a href="">Productos obligatorios Cafe Colibri</a></li>
								<li><a href="">Productos marca autorizada</a></li>
								<li><a href="">Proveedores autorizados</a></li>
							</ul>	
						</li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="" class="dropdown-toggle" data-toggle="dropdown" 
					role="button" aria-haspopup="true" aria-expanded="false">
						Manuales <span class="caret"></span>
					</a>
					<ul class="dropdown-menu font-size-1em">
						<li><a href="">Manuales</a></li>
						<li><a href="">Reglamento</a></li>
						<li><a href="">Videos</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="" class="dropdown-toggle" data-toggle="dropdown" 
					role="button" aria-haspopup="true" aria-expanded="false">
						Promociones / Especiales de temporada <span class="caret"></span>
					</a>
					<ul class="dropdown-menu font-size-1em">
						<li><a href="">Calendario plan anual de promociones</a></li>
						<li class="dropdown sub-menu">
							<a href="" class="dropdown-toggle" data-toggle="dropdown" 
							role="button" aria-haspopup="true" aria-expanded="false">
								Especiales de temporada <span class="caret-right"></span>
							</a>
							<ul class="dropdown-menu font-size-1em">
								<li><a href="">Recetas</a></li>
								<li><a href="">Materiales para impresi&oacute;n</a></li>
							</ul>	
						</li>
					</ul>
				</li>
				<li><a href="">Sucursales</a></li>
				<li><a href="">Directorio Corporativo</a></li>
			</ul>
		</div>
	</div>
</nav>