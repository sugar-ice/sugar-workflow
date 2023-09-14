## Prerequisite
- nodejs 10
- java 8

## Usage

### Build images locally and start docker container
```bash
python ./build.py build
```

### Pull from remote or use any available images from local
```bash
python ./build.py
```

#### Replace local images from remote (aka. update)
```bash
docker pull
python ./build.py
```
