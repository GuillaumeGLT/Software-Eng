
	 <?php  include('header.php'); ?>
     <div id="recherche" class="fixed-top ">
    
         <form class="form-inline">
            <input id="rech" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button id="rechbutton" class="btn btn-success my-2 my-sm-0" type="submit">Search</button>
        </form> 
     </div>
      
<div class="content">
      <div class="bd-example col-sm-11" >
        <h3><i class="fas fa-star"></i>Nos Meilleures ventes</h3>
        <div id="carouselExampleCaptions" class="carousel slide carousel-fade" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
              <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
              <div class="carousel-item active" data-interval="3000">
                <img height="550px" src="./assets/images/produits/16301395.webp" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item" data-interval="3000">
                <img height="550px" src="./assets/images/produits/dixit.jpg" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item" data-interval="3000">
                <img height="550px" src="./assets/images/produits/jeu-societe.jpg" class="d-block w-100" alt="...">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
        </div> 
        <div class="contain-products">
          <div id="boissons">
            <h3 id="nosboissons">Jeux pour enfants</h3>
            <?php displayProducts('boissons'); ?>
    </div>

    <div id="aliments">
          <h3 id="nosaliments">Jeux pour adolescents</h3>
          <?php displayProducts('aliments'); ?>
    </div>

    <div id="goodies">
            <h3 id="nosgoodies">Jeux pour adultes</h3>
            <?php displayProducts('goodies'); ?>
    </div>
          
  </div>
        
 </div>
</div>


	 <?php include('footer.php'); ?>