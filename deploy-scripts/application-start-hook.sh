# 실행 중인 스프링 부트 포트나 jar의 PID를 찾습니다 (예: 8080 포트 기준)
CURRENT_PID=$(lsof -t -i:8080)

# 만약 실행 중인 프로세스가 있을 때만 kill을 하도록 조건문을 걸어줍니다.
if [ -z "$CURRENT_PID" ]; then
    echo "> 현재 실행 중인 애플리케이션이 없으므로 종료하지 않습니다."
else
    echo "> kill -15 $CURRENT_PID"
    kill -15 $CURRENT_PID
    sleep 5
fi