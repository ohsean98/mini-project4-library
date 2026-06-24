#!/bin/bash
cd /home/ec2-user/backend

# 기존에 켜져있던 백엔드가 있다면 종료
kill -9 $(pgrep -f 'app.jar') || true

# 백엔드 애플리케이션 실행 (H2 DB는 이 안에서 자동으로 함께 켜집니다)
nohup java -jar *.jar > deploy.log 2>&1 &