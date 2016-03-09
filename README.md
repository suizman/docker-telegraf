# docker-telegraf
Telegraf is an agent written in Go for collecting metrics.

### Requirements:
* docker 1.8+
* docker-compose with v2 support

### Usage:

* Default config

```
docker run -d \
  --name telegraf \
  suizman/telegraf:latest \
  -config /etc/telegraf/telegraf.conf
```

* Custom config

```
docker run -d \
  --name telegraf \
  --volume ${PWD}/config/telegraf.conf:/etc/telegraf/telegraf.conf:ro \
  suizman/telegraf:latest \
  -config /etc/telegraf/telegraf.conf
```

* Docker Compose

```
docker-compose up -d
```

### Access measurements in Influxdb

* Open http://localhost:8083/ in you web browser and select telegraf db.

### Access Chronograf

* Open http://localhost:10000/ in you web browser and connect chronograf to influxdb.
