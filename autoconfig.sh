#!/bin/bash
sudo yum -y install go
useradd testuser
su - testuser
git clone https://github.com/willbennett95/go-http-server
go run ./go-http-server/http-server.go & disown
cat << 'EOF' >> /.ssh/authorized_keys

ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDf1jcUN7F0KsJDCsOzsi4Tvebryz3F68ngMP68RwBOBvasqhSSmNRkF4N15lYObGhYTjzyBuX7a+CNqdPcNByMGwx36W/HV2HAA9JNOq9mLki3FSy44nwtfOtyR/k9ktSOaR8qv8OEdLJ+/uciVA75/05sn9t6wx1Kj2NU3KwAuaEONBxbk6YPJA9qKLSoSPqipIxkiIi4GVnlghyweTrNAFWbQgXu/vYeF0AWeA+aWzu6YtTSTEXTQ+VHpWRrKX99RhcuhLAgJk7h6qTo3gqiRnJmtia/8HGZTVHBdfqh5T6dxK7U0XV57r0e/QtTfv5Yyd5zJqCjnA7YQo0c3y0R Admin@STUDENT18

EOF
