import subprocess

# 后端构建
subprocess.run(["docker", "compose", "down"], cwd="activiti-dev", check=True)
subprocess.run(["docker", "compose", "up", "-d", "--build"], cwd="activiti-dev", check=True)

# 构建镜像
subprocess.run(["docker", "kill", "activiti-web"], check=False)
subprocess.run(["docker", "rm", "activiti-web"], check=False)
subprocess.run(["docker", "build", "-t", "activiti-web", "./activiti-web"], check=True)

# 运行容器
subprocess.run(["docker", "run", "-d", "--name", "activiti-web", "-p", "80:80", "activiti-web"], check=True)
