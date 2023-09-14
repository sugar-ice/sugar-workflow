import subprocess
import sys

# Check if a parameter is provided
if len(sys.argv) > 1:
    param = sys.argv[1]
else:
    param = None

if param == "build":
    # Perform build operations
    subprocess.run("cd activiti-dev && python ./build.py", shell=True)
    subprocess.run("cd activiti-web && python ./build.py", shell=True)
else:
    # Stop and remove Docker containers
    subprocess.run("docker rm -f sugar-workflow-front", shell=True)
    subprocess.run("docker rm -f sugar-workflow-back", shell=True)
    
# Bring up Docker Compose
subprocess.run("docker-compose up -d", shell=True)