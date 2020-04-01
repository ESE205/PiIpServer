<!DOCTYPE html>
<html>
<head>
<title>ESE205 IPs</title>
<link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap" rel="stylesheet">
</head>
<body>
    <div class="content">
    <div class="title">ESE 205 IP Server</div>
    <table>
    <tr>
        <th>User</th>
        <th>Time Updated</th> 
        <th>IP</th>
    </tr>
    %for pair in data:
        <tr>
            <td>{{pair[0]}}</td>
            <td>{{pair[1][1]}}</td> 
            <td>{{pair[1][0]}}</td>
        </tr>
    %end
    </table>
    <div>
</body>
<style>

body {
    font-family: 'Ubuntu', sans-serif;
    color: #223843;
    background-color: #D77A61;
}

.content {
    max-width: 1000px;
    margin: auto;
    min-height: 90vh;
    margin-top: 20px;
}

.title {
    font-size: 1.8em;
    text-align: center;
    padding: 20px;
    font-weight: 700;
}

table {
    width: 80%;
    font-size: 1.2em;
    margin: auto;
    text-align: center;
    border-collapse: collapse;
    background-color: #E19E8C;
    font-weight: 300;
}

td, th {
    padding: 15px;
}

tr {
    border-bottom: 1px solid #232323;
}
</style>
</html>