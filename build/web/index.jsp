<%-- 
    Document   : index.jsp
    Created on : 24/04/2023, 2:36:29 p. m.
    Author     : Usuario
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prediccion de Acciendentes CerebroVascular</title>
        <link rel="stylesheet" href="resources/css/bootstrap.css"/>
        <link rel="stylesheet" href="resources/css/styles.css"/>
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel="icon" href="resources/icons/icono-cv.png">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    </head>
    <body>
        <!-- Navbar -->
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <!-- Brand/logo -->
            <a class="navbar-brand" href="index.jsp">
                <img src="resources/img/logo.png" height="50" width="55" alt="50">
                <span id="brandTwo"> Prediccion </span> <span id="brandOne"> Accidente Cerebro-Vascular </span>
            </a>

            <!-- Links -->
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" title="View Data Set" data-toggle="modal" data-target="#dataSet">
                        <i class="fa fa-file-text fa-lg" aria-hidden="true"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" title="More Info" data-toggle="modal" data-target="#moreInfo">
                        <i class="fa fa-info-circle fa-lg" aria-hidden="true"></i>
                    </a>
                </li>
            </ul>
        </nav>



        <!-- Form Weather Predition -->
        <div class="container" id="contentBox">
            <form class="form" id="form" action="MyServlet" method="POST">
                <div class="row justify-content-center">
                    <div class="col-md-12">
                        <div class="form-group" id="contentTitle">
                            <h1><b>¿Tendré Algun accidente CerebroVascular?</b></h1>
                        </div>
                        <div class="form-group" id="contentText">
                            <h4>¡Rellena el formulario para saber si tiendras Un Accidente Cerebro-Vascular!!</h4>
                        </div>
                        <div class="form-group">
                            <!-- Campo de Genero -->
                            <div class="">
                                <label for="gender">Cual es su Genero? &nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="¿Indique su genero?"></i></label>
                                <select name="gender" class="form-control" required>
                                    <option value="">Seleccione una Opcion</option>
                                    <option value="Female">Mujer</option>
                                    <option value="Male">Hombre</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <!-- Campo de Edad -->
                            <div class="">
                                <label for="age">Cual es su Edad? &nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="¿Indique su edad?"></i></label>
                                <input type="number" name="age" placeholder="Indica Su Edad.." id="age" class="form-control" required min="0" max="150">
                            </div>    
                        </div>
                        <div class="form-group">
                            <!-- Campo de Hipertension -->
                            <div class="">

                                <label for="hypertension">Sufres de Hipertension? &nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="¿Indique si sufre de hipertension?"></i></label>
                                <select name="hypertension" class="form-control" required>
                                    <option value="">Seleccione una Opcion</option>
                                    <option value="0">No</option>
                                    <option value="1">Si</option>
                                </select>

                            </div>
                        </div>
                        <div class="form-group">
                            <!-- Campo de Grosor de la cardiopatía -->
                            <div class="">

                                <label for="heart_disease">Tienes Cardiopatía? &nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="Tipo de enfermedad que afecta el corazón o los vasos sanguíneos"></i></label>
                                <select name="heart_disease" class="form-control" required>
                                    <option value="">Selecciona una Opcion</option>
                                    <option value="0">No</option>
                                    <option value="1">Si</option>
                                </select>

                            </div>
                        </div>
                        <div class="form-group">
                            <!-- Campo de Alguna vez casado -->
                            <div class="">
                                <label for="ever_married">Estas Casado/a? &nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="¿Indica su estado civil?"></i></label>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="ever_married" value="Yes" required/>
                                    <label class="form-check-label" for="ever_marriedYes">
                                        Si
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="ever_married" value="No" />
                                    <label class="form-check-label" for="ever_marriedNo">
                                        No
                                    </label>
                                </div>
                            </div>  

                        </div>
                        <div class="form-group">
                            <!-- Campo de tipo de trabajo work_type -->
                            <div class="">
                                <label for="work_type">Tipo de Trabajo? &nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="¡indique el tipo de trabajo que se desempeña?"></i></label>
                                <select name="work_type" class="form-control" required>
                                    <option value="">Seleccione una Opcion</option>
                                    <option value="Private">Privado</option>
                                    <option value="Self-employed">Independiente</option>
                                    <option value="Govt_job">Trabajo Con el Gobierno</option>
                                    <option value="children">Niño</option>
                                    <option value="Never_worked">No Trabajo</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <!-- Campo de Tipo de residencia -->
                            <div class="">
                                <label for="Residence_type">Tipo de Residencia? &nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="Zona donde vives?"></i></label>
                                <select name="Residence_type" class="form-control" required>
                                    <option value="">Seleccione una Opcion</option>
                                    <option value="Urban">Zona Urbana</option>
                                    <option value="Rural">Zona Rural</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <!-- Campo de nivel promedio de glucosa -->
                            <div class="">
                                <label for="avg_glucose_level">Nivel Promedio De Glucosa? &nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="Valores de glucosa mayor que 205 son inicios de prediabetes a diabetes?"></i></label>
                                <input type="number" name="avg_glucose_level" placeholder="Indique su Nivel Promedio De Glucosa.." id="avg_glucose_level" class="form-control" pattern="[0-9]+(\.[0-9])?" step="0.01" >
                            </div>
                        </div>
                        <div class="form-group">
                            <!-- Campo de estado_de_fumar  -->
                            <div class="">
                                <label for="smoking_status">Fumas? &nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="¿Has fumado alguna vez?"></i></label>
                                <select name="smoking_status" class="form-control" required>
                                    <option value="">Seleccione una Opcion</option>
                                    <option value="formerly smoked">Antes Fumaba</option>
                                    <option value="never smoked">Nunca Fumé</option>
                                    <option value="smokes">Fuma</option>
                                    <option value="Unknown">Desconocido</option>
                                </select>
                            </div>
                        </div>

                        <button  id="btn" type="submit" name="btnVerify" class="animated-button"><span>Enviar</span></button>
                    </div>
                </div>
            </form>
        </div>
        <!-- Data Set Modal -->
        <div class="modal fade" id="dataSet">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Data Set</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <!-- Modal body -->
                    <div class="modal-body" id="myData">

                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- More Info Modal -->
        <div class="modal fade" id="moreInfo">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Más Informacion</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <!-- Modal body -->
                    <div class="modal-body">
                        <div class="text-justify">
                            Este es un programa web Java que utiliza el algoritmo de clasificación probabilistico NaiveBayes y el conjunto de datos 
                            <i>cerebrovascular.arff</i> para predecir si una persona puede sufrir un accidente cerebrovascular.
                        </div>
                        <br>
                        <div>
                            <h6><b>Developed by</b></h6>
                            <i class="fa fa-check-circle" aria-hidden="true"></i> Duvan Jaimes R. <br> 
                            <i class="fa fa-check-circle" aria-hidden="true"></i> Karina Suarez J. <br> 
                            <i class="fa fa-check-circle" aria-hidden="true"></i> Jose D. Cañavera S.  <br>
                            <i class="fa fa-check-circle" aria-hidden="true"></i> Mauricio Guzman S.  
                        </div>
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>

        </div>

        <footer id="footer"><p>Trabajo Weka Prediccion</p></footer>
        <script src="resources/js/script.js"></script>
    </body>
</html>