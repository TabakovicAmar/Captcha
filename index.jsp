<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


  <html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
  </head>

  <body>
    <% 
        boolean napaka = true;
        if (request.getMethod().equals("POST")) { 
          String inputIme=request.getParameter("ime"); 
          String inputPriimek=request.getParameter("priimek"); 
          String inputEmail=request.getParameter("email"); 
          String inputPass=request.getParameter("pass"); 
          if (inputIme !=null && inputPriimek !=null && inputEmail !=null && inputPass !=null) {
              response.sendRedirect("google-recaptcha-java.jsp");
        } 
      } 
    %>

      <div class="container d-flex justify-content-center">
        <div class="row">
          <div class="card col-sm-12 d-flex align-items-center">
            <h1 class="font-weight-bold">Prijava</h1>
            <form method="post" action="google-recaptcha-java.jsp">
              <label>Vnesite ime:</label>
              <input type="text" name="ime" class="form-control">
              <label>Vnesite priimek:</label>
              <input type="text" name="priimek" class="form-control">
              <label>Vnesite elektronsko posto:</label>
              <input type="email" name="email" class="form-control">
              <label>Vensite geslo:</label>
              <input type="password" name="pass" class="form-control">
              <br />
              <div class="g-recaptcha" name="g-recaptcha-response" data-sitekey="6Ld2nX4mAAAAACYN94XvyZgGmcPOhVX-nsADphfH"></div>
              <br />
              <button class="btn btn-primary" type="submit">Potrdi</button>
            </form>
          </div>
        </div>
      </div>

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