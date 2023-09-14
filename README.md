## How to use

### Docker

Maybe compatible with Podman, not been widely tested, and use at your own risk :)

#### Warning

If you are using rootless docker or podman in Linux, you should ensure your virualize supervisor can bind to service ports.

Change the port range availiable for listening for rootless programs: 

```bash
sysctl net.ipv4.ip_unprivileged_port_start=80
```

FYI: https://stackoverflow.com/questions/413807/is-there-a-way-for-non-root-processes-to-bind-to-privileged-ports-on-linux

#### Prerequisite

- Docker
- Docker Compose Plugin/Standalone / ...
- Python 3.x

#### Build images locally and run
```bash
python ./build.py build
```

#### Pull from remote or use any available local images and run
```bash
python ./build.py
```

##### Upgrade your local image with the one built remotely by CI and run
```bash
docker compose pull
python ./build.py
```

### Manually

#### Prerequistie

- Java 8
- Nodejs 10.x

#### Debug the frontend
```bash
npm install
npm run dev
```

#### Run the backend
```bash
mvn dependency:resolve
mvn spring-boot:run
```
