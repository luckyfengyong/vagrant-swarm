#!/bin/bash

#ssh
SSH_RES_DIR=/vagrant/resources/ssh
RES_SSH_COPYID_ORIGINAL=$SSH_RES_DIR/ssh-copy-id.original
RES_SSH_COPYID_MODIFIED=$SSH_RES_DIR/ssh-copy-id.modified
RES_SSH_CONFIG=$SSH_RES_DIR/config

#etcd
ETCD_PREFIX=/usr/local/etcd
ETCD_VERSION=v2.0.10
ETCD_ARCHIVE=etcd-$ETCD_VERSION-linux-amd64.tar.gz
ETCD_MIRROR_DOWNLOAD=https://github.com/coreos/etcd/releases/download/$ETCD_VERSION/$ETCD_ARCHIVE
ETCD_RES_DIR=/vagrant/resources/etcd

function resourceExists {
	FILE=/vagrant/resources/$1
	if [ -e $FILE ]
	then
		return 0
	else
		return 1
	fi
}

function fileExists {
	FILE=$1
	if [ -e $FILE ]
	then
		return 0
	else
		return 1
	fi
}

#echo "common loaded"
