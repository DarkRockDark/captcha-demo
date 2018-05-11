<html>
<head>
    <title>Welcome</title>
    <link href="css/custom.css"
          rel="stylesheet">
    <script type="text/javascript" src="/js/mootools-1.2.3-core-yc.js"></script>
    <script type="text/javascript" src="/js/mootools-1.2.3.1-more.js"></script>
    <script type="text/javascript" src="/js/dci_core.js"></script>
    <script type="text/javascript" src="/js/Lighter.js"></script>
    <script type="text/javascript" src="/js/hOOmanTest.js"></script>
    <script src='https://www.google.com/recaptcha/api.js'></script>
</head>
<body>
<div class="container">
    <table class="table table-striped">
        <caption>Your todos are</caption>
        <thead>
        <tr>
            <th>Description</th>
            <th>Target Date</th>
            <th>Is it Done?</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>Todo 1</td>
            <td>10/12/2017</td>
            <td>No</td>
            <td><a class="btn btn-warning" href="/edit-todo">Edit Todo</a></td>
            <td><a class="btn btn-warning" href="/delete-todo">Delete Todo</a></td>
        </tr>
        </tbody>
    </table>
</div>
<br/>
<div>
    <a class="btn btn-default" href="/add-todo">Add a Todo</a>
</div>
<form id="myForm" action="/name_submit_page.html">
    First name: <input type="text" name="fname"><br>
    Last name: <input type="text" name="lname"><br><br>
    <input type="button" onclick="myFunction()" value="Submit form">
</form>
<script>
    function myFunction() {
        document.getElementById("myForm").submit();
    }
</script>
<br/>
<h2>demo stuff above</h2>
<br/>
<%--<script src="js/custom.js"></script>--%>
<%--line above renders custom.js--%>
<script type="text/javascript">
    window.addEvent((Browser.Engine.trident) ? "load" : "domready", function () {
        var huhOOman = new hOOmanTest($("demo"), {
            callback: function (state) {
                if (state)
                    this.instructions.set("html", "We appreciate it, you can now continue and submit your form.");
                else
                    this.instructions.set("html", "No, no, no! Drag and drop the <strong>" + this.mover.name + "</strong> into the BOX!");
            }
        });

        $$('pre').light({
            path: '/js/',
            altLines: 'hover',
            flame: "git",
            fuel: "js",
            mode: "ol"
        });

        $("logo").getFirst().set({
            events: {
                click: function () {
                    window.location.href = "http://fragged.org/";
                },
                mouseenter: function () {
                    this.fade(1);
                },
                mouseleave: function () {
                    this.fade(.5);
                }
            }
        }).addClass("cur").fade(.5);

    })
</script>
<%--production sitekey for NetRoadshow--%>
<div id="g-recaptcha" class="g-recaptcha" data-theme="dark" data-sitekey="6LfNulgUAAAAAAE4urKAtoJKGox_1VSYPfDs-mhU"></div>

<%--dev localhost sitekey--%>
<%--<div id="g-recaptcha" class="g-recaptcha" data-theme="dark" data-sitekey="6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI"></div>--%>


<%--  grecaptcha.getResponse()  --%>
<br/>
<br/>
    <b><div id="logo"><img src="cone.png" alt="cone.png is not being rendered"/></div></b>
</div>
</body>
</html>