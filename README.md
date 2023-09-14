## How to use

### Docker/Podman

#### Prerequisite

- Docker
- Docker Compose
- Python 3.x

#### Build images locally and start docker container
```bash
python ./build.py build
```

#### Pull from remote or use any available images from local
```bash
python ./build.py
```

##### Replace local images from remote (aka. update from remote)
```bash
docker pull
python ./build.py
```

### Manually

#### Prerequistie

- Java 8
- Nodejs 10.x

#### Frontend
```bash
npm install
npm run dev
```

#### Backend
```bash
mvn dependency:resolve
mvn spring-boot:run
```