api
===

The api project works to define web service api endpoints with http://swagger.io

install:
  1. git clone https://github.com/OpenTransitTools/api.git
  1. cd api
  1. git update-index --assume-unchanged .pydevproject
  1. buildout

run:
  1. ./build.sh
  1. this will either: start bindings/html/index.html -or- open bindings/html/index.html 

view (alt):
  1. python -m SimpleHTTPServer 80
  1. start http://localhost/bindings/html/index.html -or- open http://localhost/bindings/html/index.html 
