<%@ include file="../common/header.jspf" %>
<body id="loginForm">
<nav class="navbar navbar-default">

    <a href="/" class="navbar-brand">Activity Tracker</a>

    <ul class="nav navbar-nav">
        <li><a href="" data-toggle="modal" data-target="#exampleModalCenter">Home</a></li>
        <li><a href="/activity-list.do">Activities</a></li>
        <li><a href="https://namruthabv.github.io/">About</a></li>
    </ul>


    <ul class="nav navbar-nav navbar-right">
        <li><a href="" data-toggle="modal" data-target="#modalRegisterForm">Registration</a></li>
        <li><a href="" data-toggle="modal" data-target="#modalLoginForm">Login</a></li>
        <!-- <li><a href="/login.do">Login</a></li>  -->
    </ul>

    <!-- Home info  modal -->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h3 class="modal-title" id="exampleModalLongTitle">Home</h3>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <h3>Hello! Welcome to Activity Tracker</h3>
            <p> Activity Tracker helps in maintaining the activities of a user. It also keeps track of Category belonging to every activity</p> </br>
            <p> User registrated and logged-in can add and delete the activity and thus can keep track of daily routines </p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>

    <div class="modal fade" id="modalRegisterForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <form action="Registration" method="post">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <h4 class="modal-title w-100 font-weight-bold">Sign up</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body mx-3">
                    <div class="md-form mb-5">
                        <i class="fa fa-user prefix grey-text"></i>
                        <input type="text" name="name" id="orangeForm-name" placeholder="Your name"
                        class="form-control validate">

                    </div>
                    <div class="md-form mb-5">
                        <i class="fa fa-envelope prefix grey-text"></i>
                        <input type="email" name="email" id="orangeForm-email" placeholder="Your email"
                         class="form-control validate">

                    </div>

                    <div class="md-form mb-4">
                        <i class="fa fa-lock prefix grey-text"></i>
                        <input type="password" name="password" id="orangeForm-pass" placeholder="Your password"
                        class="form-control validate">

                    </div>

                </div>
                <div class="modal-footer d-flex justify-content-center">
                    <button type="submit" class="btn btn-primary">Sign up</button>
                </div>
            </div>
        </div>
        </form>
    </div>


    <!-- For login functionality -->
    <form action="/login.do" method="post">
    <div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="font-size:5erm">

        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <h4 class="modal-title w-100 font-weight-bold">Sign in</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body mx-3">
                    <div class="md-form mb-5">
                        <i class="fa fa-user prefix grey-text"></i>
                        <input type="text" name="name" id="defaultForm-email" placeholder="Your username" class="form-control validate">
                    </div>

                    <div class="md-form mb-4">
                        <i class="fa fa-lock prefix grey-text"></i>
                        <input type="password" name="password" id="defaultForm-pass" placeholder="Your password" class="form-control validate">
                    </div>

                </div>
                <div class="modal-footer d-flex justify-content-center">
                    <button type="submit" class="btn btn-primary">Login</button>
                </div>
            </div>
        </div>
    </div>
    </form>

</nav>

<div class="container" id="contID" >
    <div style="background-color: #e0ebeb;text-align:center">
    <H1> Activity Tracker </H1>
    <H3> Track the routine activities belonging to various categories </H3>
    </div>
    <span style="background-color:#ff3300;font-size:2.8rem;font-weight:400px;">${errorMessage}</span>
    <!--
    <form url="/login.do" method="post">

    <table border=0>
            <tr> <td>&nbsp; &nbsp; </td></tr>
            <tr>
                <td>Enter your name :</td>
                <td><input type="text" name="name"/></td>
            </tr>
            <tr> <td>&nbsp; &nbsp; </td></tr>
            <tr>
                <td>Enter your password:</td>
                <td><input type="password" name="password"></td>
            </tr>
            <tr> <td>&nbsp; &nbsp; </td></tr>
            <tr></tr>
            <tr>
                <td></td>
                <td><input type="Submit" value="Submit"></td>
            </tr>
        </table>

    </form>
    -->
</div>


<%@ include file="../common/footer.jspf" %>


