<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vruksha</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }
        .header-top {
            display: flex;
            justify-content: flex-end;
            align-items: center;
            padding: 5px 20px;
            background-color: #fff6f4; /* Updated background color */
        }
        .header-top a {
            margin: 0 10px;
            color: #149253; /* Updated text color */
            text-decoration: none;
            position: relative;
        }
        .header-top a::after {
            content: '|';
            position: absolute;
            right: -10px;
            color: #0F4C63; /* Updated separator color */
        }
        .header-top a:last-child::after {
            content: '';
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
            background-color: #fff6f4; /* Updated background color */
        }
        .navigation {
            display: flex;
            justify-content: space-around;
            width: 100%;
            background-color: #fff6f4; /* Updated background color */
            padding: 10px 0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Adding shadow */
            position: relative;
        }
        .navigation ul {
            list-style-type: none; /* Remove default list styling */
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: space-around; /* Adjust as needed */
        }
        .navigation a {
            color: #149253; /* Updated text color */
            text-decoration: none;
            margin: 0 10px;
            padding: 5px 0;
            position: relative;
        }
        .navigation a::after {
            content: '';
            position: absolute;
            left: 0;
            bottom: -10px; /* Adjust based on the distance from the text */
            width: 100%;
            height: 2px; /* Thickness of the underline */
            background-color: #0F4C63; /* Updated underline color */
            transform: scaleX(0);
            transform-origin: center;
            transition: transform 0.3s ease;
        }
        .navigation a:hover::after {
            transform: scaleX(1);
        }
        .user-options a {
            margin: 0 10px;
            position: relative;
            color: #149253; /* Updated text color */
            transition: color 0.3s ease; /* Smooth transition for color change */
        }
        .user-options a:hover {
            color: #0F4C63; /* Change text color on hover */
        }
        .user-options a:hover .badge {
            background-color: #149253; /* Change badge background color on hover */
        }
        .user-options a i {
            font-size: 24px; /* Increased size */
        }
        .user-options a .badge {
            position: absolute;
            top: -5px;
            right: -10px;
            background-color: #d9534f;
            color: #fff;
            border-radius: 50%;
            padding: 2px 5px;
            font-size: 10px;
            transition: background-color 0.3s ease; /* Smooth transition for badge background color */
        }
        
        .user-options .dropdown {
    position: relative;
    display: inline-block;
    margin-left: 10px; /* Adjust spacing between dropdowns */
}

.user-options .dropdown-content {
    display: none;
    position: absolute;
    background-color: #fff;
    box-shadow: 0 8px 16px rgba(0,0,0,0.1);
    z-index: 1;
    top: 40px; /* Adjust the distance from the icon */
    right: 0; /* Align with the user icon */
    min-width: 120px; /* Adjust the minimum width as needed */
    border-radius: 8px; /* Rounded corners */
    overflow: hidden; /* Ensure contents don't overflow rounded corners */
}

.user-options .dropdown-content a {
    color: #149253;
    padding: 8px 12px;
    text-decoration: none;
    display: block;
    font-size: 14px;
}

.user-options .dropdown:hover .dropdown-content {
    display: block;
}

.user-options .dropdown:hover .fa-heart,
.user-options .dropdown:hover .fa-shopping-cart {
    color: #0F4C63;
}


  
.search-btn {
    position: relative;
}

.search {
    --padding: 12px;
    width: max-content;
    display: flex;
    align-items: center;
    padding: var(--padding);
    border-radius: 28px;
    background: #ffffff;
    transition: box-shadow 0.25s;
}

.search:focus-within {
    box-shadow: 0 0 2px rgba(0, 0, 0, 0.75);
}

.search-input {
    font-size: 16px;
    font-family: 'Lexsed', sans-serif;
    color: #333333;
    margin-left: var(--padding);
    outline: none;
    border: none;
    width: 300px;
}
.d-btn {
    position: relative;
    font-family: 'Lexsed', sans-serif;
    font-size: 16px;
    font-weight: bold;
    padding: 12px 20px;
    background: linear-gradient(180deg, rgba(174, 215, 201, 1) 0%, rgba(0, 128, 96, 1) 100%);
    color: #000000;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transition: box-shadow 0.3s, transform 0.3s;
}

.d-btn:hover, .d-btn:focus {
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    transform: translateY(-2px);
}
        .logo {
            display: flex;
            align-items: center;
        }

        .logo-img {
            height: auto; 
            max-height: 60px; 
            margin-right: 10px; 
        }
        
       
        .dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 800px;
    z-index: 1;
    padding: 5px;
}

.dropdown-content h6 {
    font-size: 15px;
    font-weight: bold;
    color: #0F4C63;
    margin-bottom: 5px;
    padding: 4px 7px; 
}

.dropdown-content a {
    color: #149253; 
    font-size: 12px;
    font-weight: bold;
    padding: 4px 7px;
    text-decoration: none;
    display: block;
    margin-bottom: 5px; 
}

.dropdown-content a:hover {
    background-color: #f1f1f1;
}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    color: #0F4C63;
}

.dropdown-column {
    float: left;
    width: 25%; 
    padding: 5px;
}

.dropdown-row:after {
    content: "";
    display: table;
    clear: both;
}


@media (max-width: 1000px) {
    .navigation,
    .dropdown,
    .dropdown-content,
    .dropdown-column {
        display: none !important;
    }
}

@media (max-width: 768px) {
    .header-top {
        flex-wrap: wrap;
        justify-content: center;
        padding: 10px;
    }
    .header-top a {
        margin: 5px;
    }
    .logo {
        text-align: center;
        margin-bottom: 10px;
    }
    .search-btn {
        margin-top: 10px;
    }
    .navigation ul {
        flex-direction: column;
        align-items: center;
    }
    .navigation li {
        margin-bottom: 5px;
    }
    .dropdown-content {
        min-width: 100%;
        left: 0;
        padding: 10px;
    }
    .dropdown-column {
        width: 100%;
        padding: 5px;
    }
}

@media (max-width: 468px) {
    .header-top {
        flex-direction: column;
        align-items: center;
    }
    .header-top a {
        margin: 5px 0;
    }
    .search-btn {
        margin-top: 10px;
    }
    .navigation,
    .dropdown,
    .dropdown-content,
    .dropdown-column {
        display: none !important;
    }
}
        

    </style>
</head>
<body>
    <nav>
      <div class="header-top">
        <a href="help.jsp">Help</a>
        <a href="#">Currency - INR</a>
        <a href="#">Corporate Gifts</a>
        <a href="#">Partner With Us</a>
        <a href="#">Track Order</a>
      </div>
    
      <header class="header">
          <div class="logo">
              <img src="images/logo1.jpg" alt="Logo" class="logo-img">
          </div>
          <div class="search-btn">
              <form>
                  <div class="search">
                      <span class="search-icon material-symbols-outlined">search</span>
                      <input class="search-input" type="search" placeholder="Search">
                  </div>
              </form>
          </div>
    
          <div class="delivery-location">
              <a href="citysam.jsp" class="d-btn" id="deliveryLocationBtn">
                  <i class="fa fa-map-marker"></i> Delivery Location
              </a>
          </div>
    
          <div class="user-options">
              <div class="dropdown">
                  <a href="login.jsp">
                      <i class="fas fa-user"></i>
                  </a>
              </div>
    
              <div class="dropdown">
                  <a href="#">
                      <i class="fas fa-heart"></i>
                  </a>
                  <div class="dropdown-content">
                      <a href="#">Wishlist</a>
                  </div>
              </div>
    
              <div class="dropdown">
                  <a href="cart1.jsp">
                      <i class="fas fa-shopping-cart"></i>
                  </a>
              </div>
          </div>
      </header>
    
      <nav class="navigation">
          <ul>
              <li><a href="#">EXPRESS</a></li>
              <li><a href="#">CAKES</a></li>
              <li><a href="#">FLOWERS</a></li>
              <div class="dropdown">
                  <a href="#" class="dropbtn">PLANTS</a>
                  <div class="dropdown-content">
                      <div class="dropdown-row">
                          <div class="dropdown-column">
                              <h6>By Type</h6>
                              <a href="home.jsp">All Plants</a>
                              <a href="indoorplants.jsp">Indoor Plants</a>
                              <a href="outdoorplants.jsp">Outdoor Plants</a>
                              <a href="#">Personalised Plants</a>
                              <a href="medicinal.jsp">Medicinal Plants</a>
                              <a href="lomaintainance.jsp">Low Maintenance Plants</a>
                              <a href="#">Air Purifier Plants</a>
                              <a href="#">Flowering Plants</a>
                              <a href="#">Succulent Plants</a>
                              <a href="#">New Arrivals</a>
                          </div>
                          <div class="dropdown-column">
                              <h6>By Name</h6>
                              <a href="#">Lucky Bamboo</a>
                              <a href="#">Money Plants</a>
                              <a href="#">Jade Plants</a>
                              <a href="#">Syngonium</a>
                              <a href="bonsai.jsp">Bonsai Plants</a>
                              <a href="#">Rose Plants</a>
                              <a href="#">Cactus Plants</a>
                              <a href="#">Plant Set</a>
                          </div>
                          <div class="dropdown-column">
                              <h6>By Occasions</h6>
                              <a href="#">Birthday</a>
                              <a href="#">Anniversary</a>
                              <a href="#">Good Luck</a>
                              <a href="#">House Warming</a>
                          </div>
                          <div class="dropdown-column">
                              <h6>By Planters</h6>
                              <a href="#">Ceramic Planters</a>
                              <a href="#">Metal Planters</a>
                              <a href="#">Glass Planters</a>
                              <a href="#">Self Watering Planters</a>
                          </div>
                      </div>
                  </div>
              </div>
              <li><a href="#">GIFTS</a></li>
              <li><a href="#">PERSONALIZED GIFTS</a></li>
              <li><a href="#">CHOCOLATES</a></li>
              <li><a href="#">COMBOS</a></li>
              <li><a href="#">BIRTHDAY</a></li>
              <li><a href="#">ANNIVERSARY</a></li>
              <li><a href="#">OCCASIONS</a></li>
              <li><a href="#">2 Hour Delivery Gifts</a></li>
          </ul>
      </nav>
    </nav>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    </body>
    </html>