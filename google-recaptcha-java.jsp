<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>Prijavljen</title>
</head>

<body>
    <% 
        String inputIme = request.getParameter("ime"); 
        String inputPriimek = request.getParameter("priimek"); 
        String inputEmail = request.getParameter("email"); 
        String inputPass = request.getParameter("pass"); 
        String recaptchaResponse = request.getParameter("g-recaptcha-response");

        if (inputIme != null && inputPriimek != null && inputEmail != null && inputPass != null && recaptchaResponse != null) {
            %>
                <b>Dobrodošli:</b>
                <%= inputIme %>
                <br />
                <b>Vaša elektronska pošta je:</b>
                <%= inputEmail %>
            <%
        } else {
            %>
                <p>Podatki niso bili vnešeni</p>
            <%
        }
    %>

        
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
      <script src="https://www.google.com/recaptcha/enterprise.js?render=6LeJAW0mAAAAAHzAAM3NadLBt4HLIV27RC6sIixa"></script>
</body>

</html>

