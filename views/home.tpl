<!DOCTYPE html>
<html>
  <head>
    <title>ESE205 IPs</title>
    <link
      href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <div class="title">205 IP Record Server</div>
    <div class="content">
      <div class="table-title">Recent IP Pings</div>
      <table>
        <tr class="table-header">
          <th>User</th>
          <th>Time Updated</th>
          <th>IP</th>
        </tr>
        %for pair in data:
        <tr>
          <td class="name">{{pair[0]}}</td>
          <td>
            <div class="time">{{pair[1][1]}}</div>
            <div class="day">{{pair[1][2]}}</div>
          </td>
          <td class="ip">{{pair[1][0]}}</td>
        </tr>
        %end
      </table>
    </div>
  </body>
  <style>
    body {
      font-family: "Ubuntu", sans-serif;
      color: #223843;
      background-color: #ececec;
      margin: 0px;
    }
    .title {
      color: #ececec;
      font-size: 1.6em;
      padding: 20px;
      background-color: #1a2940;
    }
    .content {
      max-width: 1000px;
      margin: auto;
    }
    .table-title,
    table {
      width: 80%;
      max-width: 850px;
      margin: auto;
    }
    .table-title {
      padding: 30px 0px 20px 20px;
      font-size: 1.4em;
      font-weight: 700;
    }
    table {
      border-collapse: collapse;
      text-align: left;
      font-weight: 400;
      border: 1px solid #e3e3e3;
      background-color: #fefefe;
    }
    th,
    td {
      padding: 15px;
    }
    th {
      text-transform: uppercase;
      font-size: 0.9em;
    }
    td {
      color: #454545;
    }
    tr {
      border-bottom: 1px solid #e3e3e3;
    }
    .time,
    .name,
    .ip {
      font-size: 1.2em;
      color: #223843;
    }
    .day {
      font-size: 0.8em;
    }
  </style>
</html>
