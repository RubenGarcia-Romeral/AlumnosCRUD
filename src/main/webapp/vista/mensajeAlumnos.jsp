
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Alumnos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <%
        String grupoSeleccionado = (String)request.getAttribute("grupo");
        ArrayList<Alumnos> seleccionados = (ArrayList<Alumnos>) request.getAttribute("seleccionados");
        %>
        
        
        <div class="container">
            <div class="row">
                <div class="col-mb">
                    
                    
                    <h3>Grupo Seleccionado <%=grupoSeleccionado%></h3>
                    
                    
                    <form action="ServletAlumnos" method="post">
                        
                        <table class="table">
                            
                            
                            <tr>
                                <th>Nombre del alumno:</th>
                                <th>Apellidos del alumno:</th>
                                <th>Email del alumno:</th>
                            </tr>
                            
                            
                                <%for(Alumnos a: seleccionados){%>
                                
                                
                            <tr>
                                <td><%= a.getNombre() %></td>
                                <td><%= a.getApellidos() %></td>
                                <td><%= a.getCorreo() %></td>
                            </tr>
                            
                            
                            <%}%>
                        </table> 
                        
                        
                        <textarea class="form-control" name="mensaje"></textarea><br>
                        
                        
                        <input class="brn btn-primary" type="submit" value="Enviar">
                        
                        
                    </form>
                </div>
                        
            </div>
                        
        </div>
                        
                        
                        
    </body>
</html>
