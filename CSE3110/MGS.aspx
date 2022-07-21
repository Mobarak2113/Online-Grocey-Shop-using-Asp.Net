<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MGS.aspx.cs" Inherits="CSE3110.MGS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Grocery Shop</title>

    <link href="MGS.css" rel="stylesheet" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
  
    <style>
        #logout{
            display: none;
        }
    </style>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</head>
</head>
<body>

    <div class="container " id="home">
        <div class="header1">
            <asp:Image ID="Image1" runat="server" Height="80px" ImageUrl="~/Images/Logo.png" Width="100px" />
            <form action="" class="search-box-container">

                <input type="search" id="search-box" placeholder="Search">
                <label for="search-box" class="fas fa-search"></label>
            </form>
        </div>
        <div class="header2">
            <nav class="navbar">
                <a href="#home">Home</a>
                <a href="#product">Product</a>
                <a href="#categories">Category</a>
                <a href="Registration.aspx">Registration</a>
                <a href="#contact">Contact Us</a>
            </nav>
            <div class="icons">
                <a href="#" class="fas fa-shopping-cart"></a>
                <a href="#" class="fas fa-heart"></a>
                <a href="Login.aspx" id="User" class="fas fa-user-circle"></a>
                <div>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    <button id="logout" class="btn btn-primary">Logout</button>
                </div>
            </div>
           
        </div>
    </div>



    <form id="form1" runat="server">
        <div>
        </div>

    </form>

    <div class="container">

        <div id="carouselExampleControls" style="background-color" class="carousel slide " data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                     <img src="Images/Online-Grocery-shop.png" style="height: 450px;" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                     <img src="Images/First.jpeg" style="height: 450px;" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                     <img src="Images/First.jpg" style="height: 450px;" class="d-block w-100" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

    </div>
    
    <div class="container categories" id="categories">
        <div class="row">
            <div class="col-md-4">
                <div class="d-flex justify-content-between align-items-center cat2">
                    <a href="#cooking"><h3>Cooking</h3></a>
                    <img src="Images/Cooking.png" />
                </div>
            </div>
            <div class="col-md-4">
                <div class="d-flex justify-content-between align-items-center cat1">
                   <a href="#Beverages" ><h3>Beverages and Snacks</h3></a>
                    <img src="Images/Beverages.png" />
                </div>
            </div>
            <div class="col-md-4">
                <div class="d-flex justify-content-between align-items-center cat3">
                    <a href="#Vegetables"><h3>Fruits and Vegetables</h3></a>
                    <img src="Images/Fruits%20and%20Vegitables.png" />
                </div>
            </div>

        </div>
    </div>

   
       <%-- <div class="card" style="width: 18rem;">
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
            </div>
            <img src="Images/First.jpg"  class="card-img-top" alt="...">
            <div style="padding: 1rem .1rem; font-size: 1.7rem; color: gold;">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
           <
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary">Add To Cart</a>
            </div>
        </div>--%>

    <div class="container cooking" id="cooking">
        <h3>Cooking</h3>
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <div class="col">
                <div class="card h-100">
                    <img src="Images/Cooking.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Rice</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                         <h5>1 kg</h5>
                        <h5>90 tk</h5>
                        <button class="btn btn-primary">ADD To Cart</button>
                    </div>
                    
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="Images/Oil.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Oil</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                         <h5>1 litre</h5>
                        <h5>250 tk</h5>
                        <button class="btn btn-primary">ADD To Cart</button>
                    </div>
                    
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="Images/Shemai.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Shemai</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                         <h5>2 pack</h5>
                        <h5>150 tk</h5>
                        <button class="btn btn-primary">ADD To Cart</button>
                    </div>
                    
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="Images/Spices.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Spices</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                         <h5>200 gm</h5>
                        <h5>100 tk</h5>
                        <button class="btn btn-primary">ADD To Cart</button>
                    </div>
                   
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="Images/Dal.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Dal</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                        <h5>1 kg</h5>
                        <h5>150 tk</h5>
                        <button class="btn btn-primary">ADD To Cart</button>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
     <div class="container Beverages" id="Beverages">
        <h3>Beverages</h3>
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <div class="col">
                <div class="card h-100">
                    <img src="Images/Cocacola.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Cocacola</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                         <h5>2 litre</h5>
                        <h5>100 tk</h5>
                        <button class="btn btn-primary">ADD To Cart</button>
                    </div>
                    
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="Images/CocacolaCan.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Cocacola Can</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                         <h5>250 ml</h5>
                        <h5>40 tk</h5>
                        <button class="btn btn-primary">ADD To Cart</button>
                    </div>
                    
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="Images/Sprite.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Sprite</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                         <h5>500 ml</h5>
                        <h5>30 tk</h5>
                        <button class="btn btn-primary">ADD To Cart</button>
                    </div>
                    
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="Images/Speed.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Speed</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                         <h5>400 ml</h5>
                        <h5>50 tk</h5>
                        <button class="btn btn-primary">ADD To Cart</button>
                    </div>
                   
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="Images/7Up.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Seven Up</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                        <h5>2 litre</h5>
                        <h5>100 tk</h5>
                        <button class="btn btn-primary">ADD To Cart</button>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
    <div class="container Fuits and Vegetables" id="Vegetables">
        <h3>Beverages</h3>
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <div class="col">
                <div class="card h-100">
                    <img src="Images/Dates.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Dates</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                         <h5>1 kg</h5>
                        <h5>300 tk</h5>
                        <button class="btn btn-primary">ADD To Cart</button>
                    </div>
                    
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="Images/Pineapple.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Pineapple</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                         <h5>1 piece</h5>
                        <h5>80 tk</h5>
                        <button class="btn btn-primary">ADD To Cart</button>
                    </div>
                    
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="Images/Banana.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Banana</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                         <h5>20 Piece</h5>
                        <h5>100 tk</h5>
                        <button class="btn btn-primary">ADD To Cart</button>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>

    <footer class="container" id="contact">

        <div class="footer-container">
            <!--logo-container------>
            <div class="footer-logo">
                <a href="#home"><span>M</span>GS</a>
                <!--social----->
                <div class="footer-social">
                    <a href="https://www.facebook.com/"><i class="fab fa-facebook-f"></i></a>
                    <a href="https://twitter.com/?lang=en-in"><i class="fab fa-twitter"></i></a>
                    <a href="https://www.instagram.com/"><i class="fab fa-instagram"></i></a>
                    <a href="https://www.youtube.com/"><i class="fab fa-youtube"></i></a>
                </div>
            </div>
            <!--links------------------------->
            <div class="footer-links">
                <strong>Product</strong>
                <ul>
                    <li><a href="#">Grocery</a></li>
                    <li><a href="#">Packages</a></li>
                    <li><a href="#">Popular</a></li>
                    <li><a href="#">New</a></li>
                </ul>
            </div>
            <!--links------------------------->
            <div class="footer-links">
                <strong>Category</strong>
                <ul>
                    <li><a href="#">Beauty</a></li>
                    <li><a href="#">Vegetables</a></li>
                    <li><a href="#">Baby</a></li>
                    <li><a href="#">Medicine</a></li>
                </ul>
            </div>
            <!--links-------------------------->
            <div class="footer-links">
                <strong>Contact</strong>
                <ul>
                    <li><a href="#">Mobile : +123456789</a></li>
                    <li><a href="#">Email : mgs@gmail.com</a></li>

                </ul>
                <br>
                <p style="color: aliceblue;">Copyright ©2022 | All Rights Reserved</p>
            </div>
        </div>

    </footer>

    <script>

      

</script>
</body>
</html>
