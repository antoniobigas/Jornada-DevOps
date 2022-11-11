#!/bin/bash

echo  "Criação de diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criação de grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criação de usuários"

echo "Usuários que pertecem ao GRUPO ADM"
useradd carlos -c "Carlos" -m -s /bin/bash -G GRP_ADM -p $(openssl passwd Senha123)
useradd maria -c "Maria" -m -s /bin/bash -G GRP_ADM -p $(openssl passwd Senha123)
useradd joao -c "João" -m -s /bin/bash -G GRP_ADM -p $(openssl passwd Senha123)

echo "Usuários que pertecem ao GRUPO VEN"
useradd debora -c "Debóra" -m -s /bin/bash -G GRP_VEN -p $(openssl passwd Senha123)
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -G GRP_VEN -p $(openssl passwd Senha123)
useradd roberto -c "Roberto" -m -s /bin/bash -G GRP_VEN -p $(openssl passwd Senha123)

echo "Usuários que pertecem ao GRUPO SEC"
useradd josefina -c "Josefina" -m -s /bin/bash -G GRP_SEC -p $(openssl passwd Senha123)
useradd amanda -c "Amanda" -m -s /bin/bash -G GRP_SEC -p $(openssl passwd Senha123)
useradd rogerio -c "Rogerio" -m -s /bin/bash -G GRP_SEC -p $(openssl passwd Senha123) 

echo "Especificando as permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado"
