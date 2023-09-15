import subprocess
import shutil

remote = "ghcr.io/sugar-ice/sugar-workflow-back"

# Check if Docker is available
if shutil.which("docker"):
    print("Using Docker")
    subprocess.run(["docker", "build", "-t", remote, "."], check=True)
else:
    # Use Podman as an alternative
    print("Using Podman")
    subprocess.run(["podman", "build", "-t", remote, "."], check=True)
