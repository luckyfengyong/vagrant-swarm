# vagrant-swarm
vagrant script for swarm and compose cluster

https://github.com/docker/swarm/

http://docs.docker.com/swarm/

http://docs.docker.com/swarm/discovery/

http://matthewkwilliams.com/index.php/2015/04/03/swarming-raspberry-pi-docker-swarm-discovery-options/

https://docs.docker.com/compose/

# Start etcd

setsid /usr/local/etcd/etcd --listen-peer-urls 'http://10.211.62.101:2380,http://10.211.62.101:7001' --listen-client-urls 'http://10.211.62.101:2379,http://10.211.62.101:4001' --advertise-client-urls 'http://10.211.62.101:2379,http://10.211.62.101:4001' >"/tmp/etcd.log" 2>&1 &

# Test etcd

Run the following command to make sure etcd works

```
etcdctl --peers 10.211.62.101:4001 set key1 value1
```

Refer to https://github.com/coreos/etcd/blob/master/Documentation/admin_guide.md for more info of etcd