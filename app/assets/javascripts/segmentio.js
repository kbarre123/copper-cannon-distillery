// Downloaded from Copper Cannon RoR app @ 2013.12.24 7:34PM.
// This script doesn't appear to to loading properly, as I'm not able to see the Real-Time analytics
// on my Google Analytics page. However, Google Analytics is recording events. This is a CYA file.

var analytics=analytics||[];
(
  function(){
    var e=["identify","track","trackLink","trackForm","trackClick","trackSubmit","page","pageview","ab","alias","ready","group"],
    t=function(e){
      return function(){
        analytics.push([e].concat(Array.prototype.slice.call(arguments,0)))
      }
    };
  for(var n=0;n<e.length;n++)analytics[e[n]]=t(e[n])})(),analytics.load=function(e){
    var t=document.createElement("script");t.type="text/javascript",t.async=!0,t.src=("https:"===document.location.protocol?"https://":"http://")+"d2dq2ahtl5zl1z.cloudfront.net/analytics.js/v1/"+e+"/analytics.min.js";
    var n=document.getElementsByTagName("script")[0];
    n.parentNode.insertBefore(t,n)
  };
  analytics.load('66w1mgqvve');
  // Accomodate turbolinks
  $(document).on('ready page:change', function() {
      console.log('KCB says page loaded');
      analytics.page();
      analytics.trackForm($('#new_subscribers'), 'Signed Up');
      analytics.trackForm($('#new_contacts'), 'Contact Request');
  }
)