#!/bin/bash
echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando grupos de usuários..."

useradd carlos -c "Carlos Silva" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd maria -c "Maria Silva" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd joao -c "Joao Silva" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM

useradd debora -c "Debora Silva" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Silva" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd roberto -c "Roberto Silva" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN

useradd josefina -c "Josefina Silva" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd amanda -c "Amanda Silva" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Silva" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec 

echo "Fim da execução do script de configuração"
