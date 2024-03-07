<%@ page contentType="application/json" %>

<%
    // Enable CORS - Allow requests from any origin
    response.setHeader("Access-Control-Allow-Origin", "*");
    response.setHeader("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE, OPTIONS");
    response.setHeader("Access-Control-Allow-Headers", "Content-Type, Authorization");

    // Construct the JSON response
    String mensaje = "Hola mundo desde el servidor";
    String jsonString = "{\"mensaje\":\"" + mensaje + "\"}";

    // Output JSON response
    out.print(jsonString);
%>