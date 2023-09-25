<%@page import = "java.util.ArrayList"%>
<%@page import = "com.Search.SearchResult"%>
<html>
<head>
<link rel = "stylesheet" , type = "text/css" , href = "styles.css">
</head>
<h2>Here Is The Result You have Searched For</h2>
<body>
    <table border = 2 class = "resultTable">
        <tr>
            <th>Title</th>
            <th>Link</th>
        </tr>
        <%
            ArrayList<SearchResult> results = (ArrayList<SearchResult>)request.getAttribute("results");
            for(SearchResult result : results){
        %>
        <tr>
            <td><%out.println(result.getTitle());%></td>
            <td><a href = "<%out.println(result.getLink());%>"><%out.println(result.getLink());%></a></td>
        </tr>
        <%
            }
        %>

    </table>
</body>
</html>