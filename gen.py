import subprocess
import re
log = str(subprocess.check_output(["git", "log"]).strip())
commits = re.findall("[a-z0-9]{40}", log)[::-1]
current_commit = 0
for i in range(len(commits)-1):
    diff = subprocess.check_output(["git", "diff", commits[current_commit], commits[current_commit+1]]).strip()
    
    with open(f"{i}.patch", "wb") as o:
        o.write(diff)
    current_commit+=1
print(commits)

# 420d552233d8e68d572f972339b06fab4cdc1430