publicKey="$(cat ~/.ssh/id_rsa.pub)"
ssh huangwei@$1 "echo $publicKey >> ~/.ssh/authorized_keys"
