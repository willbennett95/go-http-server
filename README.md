# go-http-server

*http-server.go*
- defines the main package
- imports the net/http package
+ main function:
  - register a new handler for every route using http.HandleFunc. This function accepts two parameters, a string defining the path and a function to be executed to handle the request.
  - create a variable that will be used to serve static assets. Using http.FileServer from net/http package, point to a URL path by passing the directory where the files to be served are saved.
  - map the static assets variable to a URL path using http.Handle
  - listen for and accept incoming connections across the network, using ListenAndServe from the net/http package
+ rootHandler function:
  - this function is used within the main function to load the static page 'index.html' within the static folder
