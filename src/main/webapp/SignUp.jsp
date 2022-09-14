<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</head>
<body style="background: url(image/image.jpg); background-size:cover; background-attachment: fixed;">
      <div class="container">
        <div class="row">
          <div class="col m6 offset-m3"> 
             <div class="card"> 
               <div class="card-content">
                 <h3 style="margin-top: 10px" class="center-align">Register here!!</h3>
                    <div class="form center-align">
                      <form action="Register" method="post" id="myform">
                       <input type="text" name="user_name" placeholder="Enter your name here">
                       <input type="password" name="user_password" placeholder="Enter your password here">
                       <input type="email" name="user_email" placeholder="Enter your email here">
                       <button type="submit" class="btn light-blue accent-3">Submit</button>
                      </form>
                    
                    </div>
                    <div class="loader center-align" style="margin-top: 10px; display: none "  >
                    
                    
                    <div class="preloader-wrapper big active">
    <div class="spinner-layer spinner-blue-only">
      <div class="circle-clipper left">
        <div class="circle"></div>
      </div><div class="gap-patch">
        <div class="circle"></div>
      </div><div class="circle-clipper right">
        <div class="circle"></div>
      </div>
    </div>
  </div>

  <h6>Please wait...</h6>
  
                    
                    
                   
                   
                    </div>
                    
                    
                    
                                    
                </div>
             
             
             </div>
     
          
          </div>
      
        </div>
      
      </div>
      <script
  src="https://code.jquery.com/jquery-3.6.1.min.js"
  integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
  crossorigin="anonymous"></script>
  
  <script >
  $(document).ready(function(){
	  console.log("page is ready......")
	  
	 $("#myform").on('submit',function(event){
		 event.preventDefault();
		 var f= $(this).serialize();
		 console.log(f);
		 
		 $.ajax({
			 url:"Register",
			 data:f,
			 type:'POST',
			 success: function(data,textStatus,jqXHR)
			 {
				 console.log(data);
				 console.log(Successful......);
			 }
		     error: function(jqXHR,textStatus,errorThrown)
		     {
		    	 console.log(data);
				 console.log(Error......);
		     }
		 })
		 
		 
	 })
	  
	  
  })
  
  </script>
    
</body>
</html>