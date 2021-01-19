<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>:smile:</title>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/masonry-layout@4.2.2/dist/masonry.pkgd.min.js" integrity="sha384-GNFwBvfVxBkLMJpYMOABq3c+d3KnQxudP/mGPkzpZSTYykLBNsZEnG2D9G/X/+7D" crossorigin="anonymous" async></script>
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900&amp;display=swap" rel="stylesheet">

<style type="text/css">
.title {
  font-family: "Playfair Display", Georgia, "Times New Roman", serif;
  font-size: 2.25rem;
}

.title:hover {
  text-decoration: none;
}

</style>
</head>
<body>
	<header class="container py-3">
    	<div class="text-center">
    		<a class="title text-dark" href="/home">Note</a>
      	</div>
      	<hr>
      	<nav class="nav d-flex justify-content-between text-dark">
	      <a class="p-2 text-dark" href="/">작성</a>
	      <a class="py-2 text-dark" href="#">메뉴메뉴</a>
	      <a class="py-2 text-dark" href="#">메뉴메뉴</a>
	      <a class="p-2 text-dark" href="#">메뉴메뉴</a>
	      <a class="p-2 text-dark" href="#">메뉴메뉴</a>
	      <a class="p-2 text-dark" href="#">메뉴메뉴</a>
    	</nav>
    	<br>
  	</header>

	<div class="container">
        <div class="card p-4">
	        <br>
            <form id="form">
            <div class="form-group">
              <input type="text" id="title" placeholder="제목" class="form-control col-md-0"  required autocomplete="off">
            </div>
            <div class="form-group float-right">
              <input id="writer" type="text" placeholder="작성자" class="form-control form-control-sm col-0"required autocomplete="off">
            </div>
            <div class="form-group">
              <textarea id="content" placeholder="내용"  class="form-control col-md-0" style="height: 35vh;"></textarea>
            </div>
            <div class="form-group">
              <input type='file' id="image" accept="image/*" class="form-control-file "/>
            </div>
            </form>
            <button class="btn col-1 btn-outline-primary btn-sm" onclick="Save()">저장</button>
            <p style="color: red;" id="warning"></p>
        </div>  
	</div>
    	<div class="container py-5">
        	<div class="row" id="inner" data-masonry="{&quot;percentPosition&quot;: true }" style="position: relative;">	
            </div>
            <!-- <button class="btn btn-sm btn-primary float-right" onclick="SessionClear()">clear</button> -->
            <button type="button" id="sessionClear"class="btn btn-sm btn-secondary float-right" onclick="SessionClear()">
                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
					  <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"></path>
					  <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4L4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"></path>
				</svg>
            </button>
        </div>    
</body>
<script type="text/javascript">
</script>
<script src="${contextPath}/js/write.js" charset="UTF-8"></script>
</html>
