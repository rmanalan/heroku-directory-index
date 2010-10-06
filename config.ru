Rack::Directory::DIR_PAGE =
<<-PAGE
<html>
<head>
  <title>%s</title>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <style type='text/css'>
    table { width:100%%; }
    .name { text-align:left; }
    .size, .mtime { text-align:right; }
    .type { width:11em; }
    .mtime { width:15em; }
  </style>
</head>
<body>
  <h1><a href="http://twitter.com/rmanalan">@rmanalan</a>'s projects: %s</h1>
  <hr />
  <table>
    <tr>
      <th class='name'>Name</th>
      <th class='size'>Size</th>
      <th class='type'>Type</th>
      <th class='mtime'>Last Modified</th>
    </tr>
  %s
  </table>
  <hr />
</body>
</html>
PAGE

run Rack::Directory.new('./public')
