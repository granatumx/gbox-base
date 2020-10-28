!bquote
`gbox-base` is a gbox that provides a few conveniences for building gboxes
!equote

===== Prerequisites =====

You mainly need a working copy of "Docker": "http://docker.com". It is used
exclusively to manage system configurations for running numerous tools
across numerous platforms. You also need a version of "bash": "https://www.gnu.org/software/bash/" that supports 
"process substitution": "https://tldp.org/LDP/abs/html/process-sub.html".

===== Installation =====

* All docker images are at "https://hub.docker.com/u/granatumx".
* All github repos are at "https://github.com/granatumx/*".

First set up your scripts and aliases to make things easier. This command should pull the container if
it does not exist locally which facilitates installing on a server.
!bc sys
source <( docker run --rm -it granatumx/scripts:1.0.0 gx.sh )
!ec

Next, compile the files into the `granatumx/gbox-base:1.0.0` with:
!bc sys
$ make docker
!ec

===== Notes =====

The gbox has a set of parameters passed into it on the frontend. These are defined in the `yamls/*.yaml` file.
A `package.yaml` file in `./` should reference the yaml definition in `yamls/your_gbox_name_here.yaml`.
The `test/` directory and `test.sh` are set up to allow gbox authors to write test cases for their gboxes before deploying.
The `gbox-base` docker image is used by `gbox-py-base` and `gbox-R-base`. It sets up the scripts like `GBOXtranslateVERinYAMLS.sh`,
so those are available to run in inherited docker containers.

