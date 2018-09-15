from cgi import parse_qs, escape

def app(environ, start_response): 
    q = parse_qs(environ['QUERY_STRING'])
    
    body = ""
    for k, v in q.iteritems():
        body += "{}={}\n".format(k, "".join(v))
    
    start_response("200 OK", [ 
         ("Content-Type", "text/plain"), 
         ("Content-Length", str(len(body))) 
    ]) 
    return iter([body])

