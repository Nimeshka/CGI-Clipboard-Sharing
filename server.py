#!/usr/bin/env python

import sys
from BaseHTTPServer import HTTPServer
from CGIHTTPServer import CGIHTTPRequestHandler


class SilentHandler(CGIHTTPRequestHandler):
    def log_message(self, format, *args):
        return


def web_server(port):
    handler = SilentHandler
    handler.cgi_directories = ["/", "/cgi-bin"]
    server = HTTPServer(('localhost', port), handler)
    print "using port %s" %port
    server.serve_forever() 


if __name__ == "__main__":
    if len(sys.argv) > 1: 
        port = int(sys.argv[1])
    else:
        port = 8000
        
    try:
        web_server(port)
    except KeyboardInterrupt:
        print '\nBye..'
    except Exception as e:
        print 'Error ' + getattr(e, 'message', repr(e))