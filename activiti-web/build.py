import subprocess

remote = "ghcr.io/sugar-ice/sugar-workflow-front"

subprocess.run(["docker", "build", "-t", remote, "."], check=True)
subprocess.run(["docker", "rm", "-f", "sugar-workflow-front"], check=False)
subprocess.run(["docker", "compose", "up", "-d"], check=True)
