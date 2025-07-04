<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RDV</title>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
 <link rel="stylesheet" href="style.css">
</head>
<body id="global">
<div class="container">
        <div class="custom-margin">
          <div class="row Rowup">
              <div class="col-md-8 offset-md-2">
                  <div class="titleF d-flex align-items-center text-center">
                      <div class="card-body mt-2">
                          <h1 class="card-title" style="color: white; font-family:DM Serif Display-regular; font-size: 65px;">Make an appointment</h1>
                          <h5 class="card-text mt-3" style="color: white; font-family: DM Serif Display, Serif; font-size: 25px;">Choose the timetable that suits you best from all the options available</h5>
                      </div>
                  </div>
              </div>
          </div>
        </div>
        <div class="row custom-margin">
          <div class="col-2 offset-1">
              <div class="frame-1">
                  <button class="back" id="btnP" value="rdvP" >
                      <span class="button-text"  >Prendre un rendez-vous</span>
                  </button>
                  <button class="back"  id="btnA" value="rdvA">
                      <span class="button-text">Annuler le rendez-vous</span>
                  </button>
                  <button class="back">
                      <span class="button-text">Commencer la consultation</span>
                  </button>
              </div>
          </div>
          <div class="col-8 mx-5">
            <div class="rectangle">
                <!-- Liste des rendez-vous pris -->
                <h1 class="title text-center" style="color: white; font-size: 27px; margin-bottom: 30px; margin-top: 20px;">Liste de Rendez-vous prise</h1>
                <div class="row row1 mx-2 d-flex justify-content-center align-items-center form-floating">
                    <select name="rdvs" class="form-select" id="rdvs" style="width:85%; height:fit-content;">
                    <option selected disabled>Selectionner</option>
          <c:forEach var="rdv" items="${requestScope.rdv}">
       <option class="option" value="${rdv.idRdv}">${rdv.session.date} </option>

</c:forEach>
</select>
                
                </div>
                 <form id="hiddenForm2" action="Controller" method="get" style="display: none;">
    <input type="hidden" id="selectedValue2" name="selectedValue2">
     <input type="hidden" id="myBtn2" name="myBtn">
</form>
                <!-- Formulaire de recherche de rendez-vous -->
                <div class="row pt-4 mx-2 mt-4" id="row2">
      
                   
                    <form id="hiddenForm" action="Controller" method="get" style="display: none;">
    <input type="hidden" id="selectedValue" name="selectedValue">
     <input type="hidden" id="myBtn" name="myBtn">
</form>
                </div>
                <!-- Liste des sessions selon les résultats de la recherche -->
                <h1 class="title text-center" style="color: white; font-size: 27px; margin-bottom: 30px; margin-top: 60px;">Liste de sessions selon les résultats de la recherche</h1>
                <div class="row row3">
                    <div class="container">
                      <div class="d-flex justify-content-center">
                        <select name="Sessions" class="form-select" id="Sessions" style="width:85%;">
                        <option selected disabled>Selectionner</option>
          <c:forEach var="sess" items="${requestScope.sessions}">
       <option class="option" value="${sess.idSession}">${sess.date} </option>

</c:forEach>
</select>
                      </diV>
                      
                
                        
                    </div>
                </div>
            </div>
        </div>
        </div>
</div>
<script type="text/javascript" src="app.js"></script>
</body>

</html>