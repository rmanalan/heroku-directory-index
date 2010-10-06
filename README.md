How to use Heroku to host static files
======================================

Here's a sample app that utilizes Rack's Directory module to serve up a
directory listings of your app.  Basically, all you need to know
is that:

    run Rack::Directory.new('.')

...will serve up the contents of your app as a directory listing.  The sample
here adds a few more embelishments such as a modified template and support for
etags for browser caching.

To see an example of this app running, go to http://protoman.heroku.com
