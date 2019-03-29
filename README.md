[BrowserMob Proxy](https://hub.docker.com/r/vgrygoruk/browsermob-proxy/) docker image repo.

![Automated](https://img.shields.io/docker/automated/vgrygoruk/browsermob-proxy.svg)
![Status](https://img.shields.io/docker/build/vgrygoruk/browsermob-proxy.svg)
![Pulls](https://img.shields.io/docker/pulls/vgrygoruk/browsermob-proxy.svg)
[![](https://images.microbadger.com/badges/image/vgrygoruk/browsermob-proxy.svg)](https://microbadger.com/images/vgrygoruk/browsermob-proxy)

More about BrowserMob Proxy here:

  - [https://bmp.lightbody.net/](https://bmp.lightbody.net/)
  - [https://github.com/lightbody/browsermob-proxy](https://github.com/lightbody/browsermob-proxy)


## Usage

With defaults: 

```
docker run -it -p 8080-8581:8080-8581 vgrygoruk/browsermob-proxy
```

With bmp CLI args:

```
docker run -it -p 8080-8180:8080-8180 vgrygoruk/browsermob-proxy -ttl 60 --port 8080 --proxyPortRange 8081-8180
```
