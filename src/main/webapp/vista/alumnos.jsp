
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
            
            
        ArrayList<Alumnos> grupo = new ArrayList<Alumnos>();
        String grupoSeleccionado = (String)request.getAttribute("grupo");
        
        
        if(grupoSeleccionado.equals("2daw_a")){
            grupo = (ArrayList<Alumnos>) request.getAttribute("daw_a2");
        }else
            
            if(grupoSeleccionado.equals("2daw_b")){
            
           
                grupo = (ArrayList<Alumnos>) request.getAttribute("daw_b2");
        }else;
        
        
        ArrayList<String> grupos = (ArrayList<String>) request.getAttribute("grupos");
        String texto="";
        %>
        <div class="container">
            <div class="row">
                <div class="col-mb">
                    
                    
                    <h2>Grupo Seleccionadao <%=grupoSeleccionado%> </h2>
                    <form method="get" action="ServletAlumnos">
                        
                        
                        
                        <label>Grupo: </label><select class="form-control" name="grupo">
                            
                            <%for(String s: grupos){
                                
                                
                                if(grupoSeleccionado.equals(s)){
                                    
                                    
                                    texto="selected";%>
                                    <option selected="selected" value="<%=s%>"><%=s%></option>
                                <%}else{%>
                                
                                
                                    <option value="<%=s%>"><%=s%></option>
                            <%}}%>
                        </select><br>
                        
                        
                        
                        <input class="brn btn-primary" type="submit" value="Seleccionar">
                    </form>
                        
                        
                        
                </div>
            </div>
            <div class="row">
                <div class="col-mb">
                    
                    
                    <form action="ServletAlumnos" method="post">
                        <label>Grupo seleccionado</label><input type="text" readonly name="grupo" value="<%=grupoSeleccionado%>" class="form-control">
                        <table class="table">
                            
                            
                            <tr>
                                <th></th>
                                
                                
                                <th>Nombre del alumno:</th>
                                <th>Apellidos del alumno:</th>
                                <th>Email del alumno:</th>
                                
                                
                            </tr>
                            
                            
                            
                                <%for(Alumnos a: grupo){%>
                                
                                
                            <tr>
                                
                                
                                <td><%= a.getNombre() %></td>
                                <td><%= a.getApellidos() %></td>
                                <td><%= a.getCorreo() %></td>
                                <td><input type="checkbox" name="<%= a.getId() %>"></td>
                            </tr>
                            
                            
                            
                            <%}%>
                        </table> 
                        <input class="brn btn-primary" type="submit" value="Enviar">
                    </form>
                        
                        
                        
                </div>
                        
                        
            </div>
                        
                        
                        
        </div>
                        
                        
    </body>
    
    
</html>
