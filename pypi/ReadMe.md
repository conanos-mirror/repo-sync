## cache python modules and their requrements
* pip3 install pip2pi
* fill the module names in requirements.txt
* run `sudo ./sync.sh`

A apache service will provide the source and you can view via browser: `http://172.16.65.42/pypi`.


## install module from source
### install from file
```bash
pip3 install --index-url=file:///dev/data/pypi/packages/simple cam
```

### install from web
```bash
pip3 install --index-url=http://172.16.65.42/pypi cam
```