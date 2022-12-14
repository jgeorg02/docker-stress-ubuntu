# Docker Image for Stress (Using Ubuntu)
Docker image for [stress tool](https://linux.die.net/man/1/stress), which as its name implies, stresses systems under test. 
The image is based on Ubuntu.

## Build Image
This image is available through [Dockerhub](https://hub.docker.com/r/benchpilot/stress), but you can always build it locally:
````
docker build -t stress .
````

## Run docker container
````
$ docker run --rm -it benchpilot/stress --cpu 4 --io 1 --vm 2 --vm-bytes 128M --timeout 15s
````
## Stress Options
````
Usage: stress [OPTION [ARG]] ...
 -?, --help         show this help statement
     --version      show version statement
 -v, --verbose      be verbose
 -q, --quiet        be quiet
 -n, --dry-run      show what would have been done
 -t, --timeout N    timeout after N seconds
     --backoff N    wait factor of N microseconds before work starts
 -c, --cpu N        spawn N workers spinning on sqrt()
 -i, --io N         spawn N workers spinning on sync()
 -m, --vm N         spawn N workers spinning on malloc()/free()
     --vm-bytes B   malloc B bytes per vm worker (default is 256MB)
     --vm-stride B  touch a byte every B bytes (default is 4096)
     --vm-hang N    sleep N secs before free (default none, 0 is inf)
     --vm-keep      redirty memory instead of freeing and reallocating
 -d, --hdd N        spawn N workers spinning on write()/unlink()
     --hdd-bytes B  write B bytes per hdd worker (default is 1GB)

Example: stress --cpu 8 --io 4 --vm 2 --vm-bytes 128M --timeout 10s

Note: Numbers may be suffixed with s,m,h,d,y (time) or B,K,M,G (size).
````