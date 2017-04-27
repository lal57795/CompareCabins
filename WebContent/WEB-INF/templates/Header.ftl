<nav class="navbar navbar-default">
  	<div class="container-fluid">
    <div class="navbar-header">
    <a class="navbar-brand" href="index.html">Compare Cabins</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.html">Home</a></li>
      <li><a href="search.html">Search</a></li>
      <li><a href="search.html">Search</a></li>
      <li><a href="search.html">Search</a></li>
    </ul>
    <#if username?has_content>
        <ul class="nav navbar-nav navbar-right">
        <form action="ViewEditUserProfile" method="post">
                <button name="viewUser" class="btn center-block">Hello ${username}</button>
            </form>
    </ul>
    <#else>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="registerForm.html"><span class="glyphicon glyphicon-user"></span> Register</a></li>
      <li><a href="loginForm.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
    </#if>
  </div>
</nav>