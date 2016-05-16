# Web Performance

As you start building your web applications, and when most of your wiring ups, 
separation of concerns or code reaches a point of stability, you start thinking 
about the performance. *Here, stability is something, I refer to minimum bugs and 
a proper(if not good) UX flow in product development phase*. 

> Steve Souders, author of “High Performance Websites” and “Even Faster Websites”, 
> says *that 80-90% of end user response time is spent on the frontend*. 

What’s a good response time to aim for? Since __user conversion__ or __bounce rate__ 
is highly co-related with response / pageload time. And before we dig more, we 
need to understand what exactly is Page Load time.

Basically, page load time is the average amount of time it takes for a page to
show up on your screen. For a better understanding, checkout 
https://blogs.akamai.com/2014/02/what-is-your-page-load-time.html

Now, that we know what’s page load time, lets talk about what exactly a good response 
time is. It is generally a good idea to have the page load within 2-3 seconds. You can 
allow up to an additional 5 seconds on top of this for JavaScript loading and 
pictures to download if this is the first time the user has been on your site. 
Google on the other hand, aims for 500ms (crazy!!!). 

However, I believe that, page load time totally depends on what application you are building. 
This enables you to understand what page load time to aim for. And the most important part of 
this is, you understand your current Page Speed stats. In order to do so, you need 
to use the tools effectively and a general instructions to kickstart.

Instructions 
- http://stevesouders.com/hpws/rules.php
- https://developers.google.com/speed/docs/insights/rules#speed-rules

Tools
- [webpagetest](http://www.webpagetest.org)
- [Google Page Speed](https://developers.google.com/speed/pagespeed/)
- [GTMetrix](https://gtmetrix.com)
- [pingdom.com](http://tools.pingdom.com/fpt/)

Extensions
- [HTTP Archive Viewer (.har)](https://github.com/THemming/harviewer-chrome-app)
- [Yahoo’s YSlow](http://yslow.org/) /* handy when you have authentication */
