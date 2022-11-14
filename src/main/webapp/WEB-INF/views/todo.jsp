
<%@ include file="../common/header.jspf" %>

<body id="activityForm">
<script>
    $('input[type="submit"]').click(function(){
    $(this).css('color','red');
    });
</script>
<nav class="navbar navbar-default">

    <a href="/" class="navbar-brand">Activity Tracker</a>

    <ul class="nav navbar-nav">
        <li><a href="" data-toggle="modal" data-target="#exampleModalCenter">Home</a></li>
        <li><a href="/activity-list.do">Activities</a></li>
        <li><a href="https://namruthabv.github.io/">About</a></li>
    </ul>

    <ul class="nav navbar-nav navbar-right">
        <li><a href="/logout.do">Logout</a></li>
    </ul>

</nav>

<div class="container" style="overflow:auto;height:38em">
    <H3> Welcome ${name}</H3>
    <H1> Your Activity List are</H1>
    <H3 style="color:red;font-weight:400">${empMsg}</H3>
    <table class="table table-striped">
        <thead>
            <th>Description</th>
            <th>Category</th>
            <th>Actions</th>
        </thead>
        <tbody>
            <c:forEach items="${todo}" var="tod">
                <tr>
                    <td>${tod.activity}</td>
                    <td>${tod.category}</td>
                    <td><a class = "btn btn-danger" href="/delete-activity.do?todo=${tod.activity}&cag=${tod.category}">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

         </br>

    <form action="/add-activity.do" method="post">
       <!-- <input type="text" name="todoNewVal"/> -->

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

    <div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <h4 class="modal-title w-100 font-weight-bold">Add your Activity</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body mx-3">
                    <div class="md-form mb-5">
                        <i class="fa fa-envelope prefix grey-text"></i>
                        <input type="text" name="todoNewVal" id="defaultForm-email" placeholder="Your Activity" class="form-control validate">
                    </div>

                    <div class="md-form mb-5">
                        <i class="fa fa-envelope prefix grey-text"></i>
                        <input type="text" name="todoNewCat" id="category"  placeholder="Category" class="form-control validate">
                    </div>


                </div>

                <div class="modal-footer d-flex justify-content-center">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </div>
        </div>
    </div>

    <div >
        <a style="background-color: #27AE60" href="" class="btn btn-default btn-rounded mb-4" data-toggle="modal" data-target="#modalLoginForm">Add New Activity</a>
    </div>
    </form>
</div>
<%@ include file="../common/footer.jspf" %>
