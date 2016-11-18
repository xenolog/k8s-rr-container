# k8s-bgpd-container
BGPd (bird) container, implements Route-Reflector, Calico-node, ExtIP export
for multi-rack deployment of Kubernetes

ENV should contain:

ETCD_AUTHORITY=127.0.0.1:2379
ETCD_SCHEME=http
#HOSTNAME=svasilenko-01-001
RACK=1
BGPD_MODE=RR  # may be RR or NODE (default)
IP=10.222.1.1
DEBUG=1
#LOGGING=....

