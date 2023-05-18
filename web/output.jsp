<%-- 
    Document   : output.jsp
    Created on : 24/04/2023, 2:37:24 p. m.
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
        <link rel="icon" href="resources/icons/cerebro.png">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    </head>
    <body>
        <!-- Navbar -->
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <!-- Brand/logo -->
            <a class="navbar-brand" href="test.jsp">
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

        <!-- Output Predition -->
        <div class="container" id="output">
            <div class="row justify-content-center">
                <div >
                    <img id="imgOutput" src="${link}" class="img-fluid mx-auto d-block">
                    <div id="contentOutput"><p class="escritura-animada" >${msj}</p></div>

                    <button id="btn" type="submit" name="btnVerify" class="animated-button">
                        <span id="prueba">
                            <a href="inicio.jsp" class="btn mx-auto btn-block" style="color: white; font-family: Segoe UI ">Volver al inicio</a>
                        </span>
                    </button>
                </div>
            </div>
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
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
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
                        <h3 class="modal-title">Más Información</h3>
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
                            <h5><b>Integrantes</b></h5>
                            <i class="fa fa-check-circle" aria-hidden="true"></i> Duvan Jaimes R. <br> 
                            <i class="fa fa-check-circle" aria-hidden="true"></i> Karina Suarez J. <br> 
                            <i class="fa fa-check-circle" aria-hidden="true"></i> Jose D. Cañavera S.  <br>
                            <i class="fa fa-check-circle" aria-hidden="true"></i> Mauricio Guzman S. <br>
                            <br>
                            <a href="https://www.kaggle.com/code/senorx/stroke-analysis" target="_blank">Link Data Set</a>
                        </div>
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>
        <script src="resources/js/script.js"></script>      
        <footer id="footer"><p>Trabajo Weka Prediccion &copy; 2023</p></footer>
    </body>
</html>
