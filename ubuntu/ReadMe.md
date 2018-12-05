## sync ubuntu sources to harddisk
```bash
sudo ./sync.sh
```

## start a webserver to provide apt source
```bash
sudo ./service.sh
```
A apache service will start and you can see the source via browser: `http://172.16.65.42/ubuntu/`.

## install package from source (on another machine)
Modify the source ip in `sources.list` and run the code:

```bash
sudo cp -f  ubuntu/16.04/sources.list /etc/apt/sources.list
sudo apt-get update
sudo apt-get upgrade
```