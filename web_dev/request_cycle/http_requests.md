Release 0: View HTTP Requests

1. What are some common HTTP status codes?
-->	Status codes fall into five classes: informational (1xx), success (2xx), redirection (3xx), client errors (4xx), server errors (5xx).
-->	200: OK
	202: Accepted
	302: Not Found
	400: Bad Request
	401: Unauthorized
	403: Forbidden
	404: Not Found

2. What is the difference between a GET request and a POST request? When might each be used?
-->	GET: Requests data from a specified resource
	->	Includes all required data in the URL, which can be less than ideal in a situation requiring sensitive data; best used for "unsafe" actions in which it's ok, for example, for a request to be cached or bookmarked.
	
	POST: Submits data to be processed to a specified resource
	-> Supplies additional data from the client/browser to the server in the message body; best used when dealing with sensitive data such as passwords or credit card information.

3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
--> An HTTP cookie (web cookie/internet cookie/browser cookie) is a small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing. They are designed to remember stateful information to record the user's browsing activity, such as buttons clicked, items added to a cart, logging in, or noting which pages were previously visited.