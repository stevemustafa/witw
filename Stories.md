# Stories to be accomplished

* #### URL shortening
* #### User Registration (this whole block us under consideration)
  - User CRUD         
  - Registering a URL
  - Amending a registered URL
* ####Statistics on URL usage  
* #### CLI for mass upload of data


## Notes on stories:

#### URL shortening
An expected value to be passed to the environment is how long the url short form is.
The general steps are:

Two abbreviations in use are Long Form (LF) and Short Form (SF) and both are applicable to URLS

1. LF of url is provided and checked for validity (the URL is in a correct form, not necessarily reachable)
2. witw generates an SF which is limited to alphanumeric characters, with the alphabet being in either:  
    a. Uppercase  
    b. Lowercase  
    c. Both 
2. The LF and the SF are then registered & time stamped into the postgres database
3. When any request comes to the database in search for the SF, the LF is returned  
    - if the request came through a/the webpage, then a new tab is opened where it navigates to the LF directed site
    - if the request came through an API request, a JSON object is returned with both the LF and SF as well as some 
    statistics
    

