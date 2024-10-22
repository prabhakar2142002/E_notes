<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Custom Navbar</title>
  <!-- Bootstrap CSS -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <!-- FontAwesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">

  <style>
    .bg-custom {
      background: #8e24aa;
    }
    .navbar .nav-item .nav-link {
      font-size: 20px;
      color: white;
    }
    .navbar-custom .nav-item:hover .nav-link {
      background: white;
      color: black;
      border-radius: 10px;
 /   }
  </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
  <a class="navbar-brand" href="#"><i class="fa fa-book" aria-hidden="true"></i>E-Notes</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"><i class="fa-solid fa-house"></i> Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"><i class="fa-solid fa-plus"></i> Add Notes</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"><i class="fa fa-address-book-o" aria-hidden="true"></i> Show Notes</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <button class="btn btn-light my-2 my-sm-0 mr-3" type="submit"><i class="fa fa-sign-in" aria-hidden="true"></i><a class="nav-link" href="Login.jsp"> Login</a></button>
      <button class="btn btn-light  my-2 my-sm-0" type="submit"><i class="fa fa-user-plus" aria-hidden="true"></i></i><a class="nav-link" href="Register.jsp"> Register</a></button>
    </form>
  </div>
</nav>

<!-- Bootstrap JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
