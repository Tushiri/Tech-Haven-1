<?php

include 'components/connect.php';

session_start();

if (isset($_SESSION['user_id'])) {
   $user_id = $_SESSION['user_id'];
} else {
   $user_id = '';
};

?>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>

<body>

   <?php include 'components/user_header.php'; ?>

   <section class="about">

      <div class="row">

         <div class="image">
            <img src="images/about-img.png" alt="">
         </div>

         <div class="content">
            <h3>why choose us?</h3>
            <p>Choose Tech Haven for all your PC part needs! With an extensive selection of top-quality components, unbeatable prices, and a user-friendly website, we make it easy for you to build or upgrade your computer. Rest assured, your security is our priority, and our reliable shipping ensures swift delivery. Join our community of PC enthusiasts and experience exceptional performance. Shop with us at Tech Haven and unlock the power of your PC!</p>
            <a href="contact.php" class="btn">contact us</a>
         </div>

      </div>

   </section>

   <section class="reviews">

      <h1 class="heading">client's reviews</h1>

      <div class="swiper reviews-slider">

         <div class="swiper-wrapper">

            <div class="swiper-slide slide">
               <img src="images/pic-2.png" alt="">
               <p>Tech Haven exceeded my expectations! I ordered a CPU and RAM for my gaming rig, and I couldn't be happier with the products and service. The website was user-friendly, making it easy to find what I needed. The prices were competitive, and the shipping was fast. I highly recommend Tech Haven to anyone looking for quality PC parts. The</p>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>Bryan Santos</h3>
            </div>

            <div class="swiper-slide slide">
               <img src="images/pic-2.png" alt="">
               <p>I recently purchased a motherboard and SSD from Tech Haven, and I'm pleased with my experience. The selection of components was impressive, and I found exactly what I was looking for. The prices were reasonable, and the checkout process was smooth. My order arrived promptly, and the products were well-packaged. The only reason I'm </p>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>Steven Geronimo</h3>
            </div>

            <div class="swiper-slide slide">
               <img src="images/pic-1.png" alt="">
               <p>Tech Haven is my go-to online store for PC parts. I've made multiple purchases, including a graphics card and power supply, and I've always been satisfied with the quality and service. The prices are competitive, and the website is easy to navigate. The customer support team is responsive and helpful whenever I had questions. I highly</p>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>Beverly Brigido</h3>
            </div>

            <div class="swiper-slide slide">
               <img src="images/pic-2.png" alt="">
               <p>I recently built a new PC and bought several components from Tech Haven, such as a CPU cooler and case fans. The products I received were of excellent quality, and I appreciated the reasonable prices. The shipping was fast, and everything arrived in perfect condition. The only improvement I would suggest is to have more variety in </p>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>John Michael Emeterio</h3>
            </div>

   </section>









   <?php include 'components/footer.php'; ?>

   <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

   <script src="js/script.js"></script>

   <script>
      var swiper = new Swiper(".reviews-slider", {
         loop: true,
         spaceBetween: 20,
         pagination: {
            el: ".swiper-pagination",
            clickable: true,
         },
         breakpoints: {
            0: {
               slidesPerView: 1,
            },
            768: {
               slidesPerView: 2,
            },
            991: {
               slidesPerView: 3,
            },
         },
      });
   </script>

</body>

</html>