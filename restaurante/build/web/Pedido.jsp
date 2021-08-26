<%-- 
    Document   : Pedido
    Created on : 02-20-2019, 08:28:46 AM
    Author     : jason.rodriguezusam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <form action="Fact" method="Post">
                <div class="row">
                    <div class="col-lg-8"><br>
                    </div>
                    <div class="col-lg-4"> 
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8">
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="cl" name="cl">Cliente</span>
                            </div>
                            <input type="text" class="form-control" id="nombre" name="nombre" aria-label="Default" aria-describedby="inputGroup-sizing-default" required="">
                        </div>
                    </div>
                    <div class="col-lg-4"> 
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroup-sizing-default">Fecha</span>
                            </div>
                            <input type="date" class="form-control" aria-label="Default" name="fecha" aria-describedby="inputGroup-sizing-default" required="">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8"><br>
                    </div>
                    <div class="col-lg-4"> 
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4"> 
                        <div class="card" style=" width: 350">
                            <img  class="card-img-top" src="image/1-1.JPG" height="250"> 
                            <div class="card-body">
                                <h5 class="card-title">$2.50</h5></div>
                        </div>
                    </div>
                    <div class="col-lg-4"> <div class="card" style=" width: 350">
                            <img  class="card-img-top" src="image/2-1.jpg" height="250"> 
                            <div class="card-body">
                                <h5 class="card-title">$1.25</h5></div>
                        </div></div>
                    <div class="col-lg-4">  <div class="card" style=" width: 350">
                            <img  class="card-img-top" src="image/3-1.jpg" height="250"> 
                            <div class="card-body">
                                <h5 class="card-title">$1.50</h5></div>
                        </div></div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-lg-8"><br>
                    </div>
                    <div class="col-lg-4"> 
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">

                        <select name="sl1" class="form-control">
                            <option value = 1>No</option>
                            <option value = 2>Si</option>
                        </select> 
                    </div>
                    <div class="col-lg-4">                       
                        <select name="sl2" class="form-control">
                            <option value = 1>No</option>
                            <option value = 2>Si</option>
                        </select> </div>
                    <div class="col-lg-4">   
                        <select name="sl3" class="form-control">
                            <option value = 1>No</option>
                            <option value = 2>Si</option>
                        </select>  </div>

                </div>
                <div class="row">
                    <div class="col-lg-8"><br>
                    </div>
                    <div class="col-lg-4"> 
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4"> 
                        <div class="input-group input-group-sm mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroup-sizing-sm">Cantidad</span>
                            </div>
                            <input type="text" class="form-control" aria-label="Small" name="Cant1" aria-describedby="inputGroup-sizing-sm" value="0" required="">
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="input-group input-group-sm mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroup-sizing-sm">Cantidad</span>
                            </div>
                            <input type="text" class="form-control" aria-label="Small" name="Cant2"aria-describedby="inputGroup-sizing-sm" value="0" required=""> 
                        </div>
                    </div>
                    <div class="col-lg-4"> 
                        <div class="input-group input-group-sm mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroup-sizing-sm">Cantidad</span>
                            </div>
                            <input type="text" class="form-control" aria-label="Small" name="Cant3" aria-describedby="inputGroup-sizing-sm" value="0" required="">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-2"> </div>
                    <div class="col-lg-8">
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroup-sizing-default">Monto de pago</span>
                            </div>
                            <input type="text" class="form-control" name="txtres"aria-label="Default" aria-describedby="inputGroup-sizing-default" value="" required="">
                        </div>
                    </div>
                    <div class="col-lg-2"> </div>
                </div>
                <div class="row">
                    <div class="col-lg-3"><button type="submit" class="btn btn-success">Facturar</button> </div>
                    <div class="col-lg-9"> </div>
                </div>
                <br>
                <table class="table">
                    <thead  class="container alert alert-primary ">


                        <tr >
                            <td class="col-md-1"> Cliente:
                            </td> 
                            <td class="col-md-5"> <h4>${nombre}</h4>
                            </td> 
                            <td class="col-md-2"> 
                            </td> 
                            <td class="col-md-1"> Fecha:
                            </td> 

                            <td class="col-md-1"> <h5>${fecha}</h5></td> 
                        </tr>

                    <hr>
                    <tr>
                    
                        <th scope="col" class="col-md-1"> N°
                        </th> 
                        <th scope="col" class="col-md-5"> Producto
                        </th> 
                        <th scope="col" class="col-md-2"> Precio Unitario
                        </th> 
                        <th scope="col" class="col-md-1"> Cantidad
                        </th> 
                        <th scope="col" class="col-md-1"> SubTotal
                        </th> 
                        </tr>
                        </thead>
                        <tbody class="container alert alert-light" >
                           ${cod}
                        </tbody>                    
                </table> 
                <div class="row">
                    <div class="col-md-8"></div>
                    <div class="col-md-2">Total:</div>
                    <div class="col-md-2">${cant}</div>
                </div>
                <div class="row">
                    <div class="col-md-8"></div>
                    <div class="col-md-2">${letra}</div>
                    <div class="col-md-2">${vu}</div>
                </div>
                <div class="row">
                    <div class="col-md-8">${let}</div>
                    <div class="col-md-2"></div>
                    <div class="col-md-2"></div>
                </div>
            </form>
        </div>
    </body>
</html>
