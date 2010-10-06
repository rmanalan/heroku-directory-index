Rack::Directory::DIR_PAGE =
<<-PAGE
<!doctype html>  
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="description" content="Rich Manalang's set of web experiments">
  <meta name="author" content="Rich Manalang">
  <meta name="viewport" content="width=device-width; initial-scale=1.0">
  <title>@rmanalan&rsquo;s experiments: %s</title>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <link href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz|Inconsolata&subset=latin' rel='stylesheet' type='text/css'>
  <link rel='stylesheet' href="/assets/css/style.css">
  <link rel='stylesheet' href="/assets/css/app.css">
</head>
<body>
  <div class="container">
  <header>
    <h1><a href="/">@rmanalan&rsquo;s experiments: %s</a></h1>
  </header>
  <table>
    <tr>
      <th class='name'>Name</th>
      <th class='size'>Size</th>
      <th class='type'>Type</th>
      <th class='mtime'>Last Modified</th>
    </tr>
  %s
  </table>
    <footer>
      Shared by <a href="http://twitter.com/rmanalan" title="Rich Manalang">@rmanalan</a> and served up by <a href="http://rack.rubyforge.org/">Rack</a> on the awesome <a href="http://heroku.com">Heroku</a> platform. Code for this site is <a href="/code">available here</a>.
    </footer>
  </div>

  <script src="/assets/js/LAB.min.js"></script>
  <script>
    $LAB
      .script("assets/js/jquery-1.4.2.min.js")
      .script("assets/js/modernizr-1.5.min.js").wait()
      .script("assets/js/app.js");
  </script>

  <!--[if lt IE 7 ]>
    <script src="/assets/js/dd_belatedpng.js?"></script>
    <script>
      DD_belatedPNG.fix('img, .png_bg'); //fix any <img> or .png_bg background-images
    </script>
  <![endif]-->

  <!-- asynchronous google analytics: mathiasbynens.be/notes/async-analytics-snippet 
       change the UA-XXXXX-X to be your site's ID -->
  <script>
   var _gaq = [['_setAccount', 'UA-XXXXX-X'], ['_trackPageview']];
   (function(d, t) {
    var g = d.createElement(t),
        s = d.getElementsByTagName(t)[0];
    g.async = true;
    g.src = ('https:' == location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    s.parentNode.insertBefore(g, s);
   })(document, 'script');
  </script>
</body>
</html>
PAGE

use Rack::ETag

map "/assets" do
  run Rack::Directory.new('./assets')
end

map "/code" do
  run Rack::Directory.new('.')
end

map "/" do
  run Rack::Directory.new('./public')
end
