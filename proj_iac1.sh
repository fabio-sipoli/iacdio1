#!/bin/bash

echo "Inicializando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Inicializando usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Passw0rd) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Passw0rd) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Passw0rd) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Passw0rd) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Passw0rd) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Passw0rd) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Passw0rd) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Passw0rd) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Passw0rd) -G GRP_SEC

echo " ajustando permissoes..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 777 /publico

echo "Se vc não viu nenhum erro, entao tudo certo..."












