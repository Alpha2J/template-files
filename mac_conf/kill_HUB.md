mac的中文输入法经常抽风，导致系统转菊花直接卡死，需要把输入法kill掉才能恢复，搞一个定时任务来kill它

1. 创建可执行文件：`mkdir -p /Users/noname/workspace/apps/hubkiller && touch /Users/noname/workspace/apps/hubkiller/hubkiller.sh`
   ```bash
   #!/bin/bash

   sudo kill -HUP `ps ax | grep -v grep | grep SCIM | awk '{print $1}'`
   ```
2. 给它可执行权限：`chmod +x /Users/noname/workspace/apps/hubkiller/hubkiller.sh`
3. 用root身份来创建cron，`sudo crontab -e`，然后输入：
   ```bash
   0 * * * * /Users/noname/workspace/apps/hubkiller/hubkiller.sh && /bin/echo success >> /Users/noname/workspace/apps/hubkiller/result.log
   ```

