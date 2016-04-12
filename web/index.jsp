<%-- 
    Document   : index

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
    
    <link rel="stylesheet" href="css/normalize.css">

    
        <link rel="stylesheet" href="css/style.css">

    
    
    
  </head>

  <body background="img/bg.jpg">

    <div class="form">
      
      <ul class="tab-group">
          <li class="tab"><a href="#login">Entrar</a></li>
          <li class="tab"><a href="#loginAdmin">Entrar como Admin</a></li><br><br><br>
         <li class="tab active"><a href="#signup">Registrarse</a></li>
        
       
      </ul>
      
      <div class="tab-content">
        <div id="signup">   
          <h1>Registrate</h1>
          
          <form action="Autenticacion" method="post">
          
          <div class="top-row">
            <div class="field-wrap">
              <label>
                Nombre<span class="req">*</span>
              </label>
                <input type="text" required autocomplete="off" name="nombre" id="nombre" />
            </div>
        
            <div class="field-wrap">
              <label>
                Apellidos<span class="req">*</span>
              </label>
                <input type="text"required autocomplete="off" name="apellidos" id="apellidos"/>
            </div>
          </div>

          <div class="field-wrap">
            <label>
              Correo<span class="req">*</span>
            </label>
              <input type="email"required autocomplete="off" name="mail" id="mail"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Contraseña<span class="req">*</span>
            </label>
              <input type="password"required autocomplete="off" name="pass" id="pass"/>
          </div>
          
          <button type="submit" class="button button-block"/>Registrarse</button>
          
          </form>

        </div>
        
        <div id="login">   
          <h1>Bienvenido de nuevo</h1>
          
          <form action="Autenticacion" method="post">
          
            <div class="field-wrap">
            <label>
              Correo<span class="req">*</span>
            </label>
                <input type="email"required autocomplete="off" name="mail" id="mail" />
          </div>
          
          <div class="field-wrap">
            <label>
              Contraseña<span class="req">*</span>
            </label>
              <input type="password"required autocomplete="off" name="pass" id="pass"/>
          </div>
          
          
          <button class="button button-block"/>Entrar</button>
          
          </form>

        </div>
          
          
                  <div id="loginAdmin">   
          <h1>Welcome Back!</h1>
          
          <form action="Autenticacion" method="post">
          
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email"required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off"/>
          </div>
          
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          
          <button class="button button-block"/>Log In</button>
          
          </form>

        </div>
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/index.js"></script>

    
    
    
  </body>
</html>
