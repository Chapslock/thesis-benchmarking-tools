Remove-Item -Recurse -Force .\local\*
Remove-Item -Recurse -Force .\nginx\*
Remove-Item -Recurse -Force .\varnish\*
Remove-Item -Recurse -Force .\custom\*

#fill the caches
Invoke-WebRequest b96773nginx.cloud.ut.ee/500KB.html
Invoke-WebRequest b96773nginx.cloud.ut.ee/1MB.html
Invoke-WebRequest b96773nginx.cloud.ut.ee/5MB.html
Invoke-WebRequest b96773nginx.cloud.ut.ee/10MB.html
Invoke-WebRequest b96773nginx.cloud.ut.ee/20MB.html
Invoke-WebRequest b96773nginx.cloud.ut.ee/50MB.html

Invoke-WebRequest b96773varnish.cloud.ut.ee/500KB.html
Invoke-WebRequest b96773varnish.cloud.ut.ee/1MB.html
Invoke-WebRequest b96773varnish.cloud.ut.ee/5MB.html
Invoke-WebRequest b96773varnish.cloud.ut.ee/10MB.html
Invoke-WebRequest b96773varnish.cloud.ut.ee/20MB.html
Invoke-WebRequest b96773varnish.cloud.ut.ee/50MB.html