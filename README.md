# docker-cvmfs

Proof of concept for using CVMFS within a container, without requiring the 
localhost have cvmfs-client installed and configured.

## Usage

Docker:
```
sudo docker run -it --privileged wmoore28/cvmfs
```

Singularity:
```
singularity run docker://wmoore28/cvmfs
```

Once inside the container:
```
parrot_run ls /cvmfs/oasis.opensciencegrid.org/gluex
```

