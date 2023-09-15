import subprocess
import sys
import shutil

# Check if a parameter is provided
if len(sys.argv) > 1:
    param = sys.argv[1]
else:
    param = None

# Check if Docker is available
if shutil.which("docker"):
    container_cmd = "docker "
elif shutil.which("podman"):
    container_cmd = "podman-"
else:
    print("Neither Docker nor Podman is available on your system.")
    sys.exit(1)

if param == "build":
    # Perform build operations
    subprocess.run("cd activiti-dev && python ./build.py", shell=True)
    subprocess.run("cd activiti-web && python ./build.py", shell=True)
else:
    # Stop and remove Docker/Podman containers
    subprocess.run(f"{container_cmd} rm -f sugar-workflow-front", shell=True)
    subprocess.run(f"{container_cmd} rm -f sugar-workflow-back", shell=True)

# Bring up Docker Compose/Podman Compose
subprocess.run(f"{container_cmd}compose up -d", shell=True)