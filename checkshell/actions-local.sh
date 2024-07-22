# 这个脚本放在本地或者服务器运行。
# 前置条件是配置好了git，并且对仓库有读写权限。
# 建议把user.name、user.email、git commit -m的内容改成特定的，比较容易区分commits信息。
rm -rf ./knloop-service-status/
git clone git@github.com:shadowqcom/knloop-service-status.git
cd ./knloop-service-status/
bash ./checkshell/servicecheck.sh
git config --local user.name 'Github Actions'
git config --local user.email 'actions@knloop.com'
git add -A --force ./logs/
git commit -m '🆙 [Automated] Update service status logs'
git push origin main
cd ..
rm -rf ./knloop-service-status/