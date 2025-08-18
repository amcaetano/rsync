#!/bin/bash

#------------------------------- SHELL SCRIPT DE SINCRONIZAÇÃO E CÓPIA DE SEGURANÇA DE ARQUIVOS E DADOS MÁQUINA LAIN PARA O SERVIDOR BROLY  -------------#

echo "INICIANDO PROCESSO DE SINCRONIZAÇÃO:"

date 

echo "Processo de sincronização e cópia de arquivos iniciado no servidor BROLY, em:" >> /home/adm01/dados1/backup.log

echo ""
echo ""

date >> /home/adm01/dados1/backup.log

echo ""
echo ""

sleep 2

echo "OS ARQUIVOS ESTÃO SENDO SINCRONIZADOS COM O SERVIDOR NAS BROLY, POR GENTILEZA AGUARDE O FIM DO PROCESSO!"

sleep 2

echo ""
echo ""


#--------------------------- CÓPIA DE SEGURANÇA DO SHELL SCRIPT DE BACKUP -------------------------#

sudo rsync -avh --info=progress2 /usr/bin/bkp_nas.sh /home/adm01/dados1/Script\ Bkp\ NAS


#--------------------------- CÓPIA DE SEGURANÇA DO ARQUIVO DE CONFIGURAÇÃO I3STATUS -------------------------#

sudo cp /etc/i3status.conf /home/adm01/dados1/bkp_satoshi/bkp_config/i3status

#--------------------------- CÓPIA DE SEGURANÇA DO ARQUIVO DE CONFIGURAÇÃO I3WM  -------------------------#

sudo cp /home/adm01/.config/i3/config /home/adm01/dados1/bkp_satoshi/bkp_config/i3wm

#--------------------------- CÓPIA DE SEGURANÇA DO ARQUIVO DE CONFIGURAÇÃO LIGHTDM E LIGHTDM GTK GREETER -------------------------#

sudo cp /etc/lightdm/lightdm.conf /home/adm01/dados1/bkp_satoshi/bkp_config/lightdm

sudo cp /etc/lightdm/lightdm-gtk-greeter.conf /home/adm01/dados1/bkp_satoshi/bkp_config/lightdm

#--------------------------- CÓPIA DE SEGURANÇA DO ARQUIVO DE CONFIGURAÇÃO DE INTERFACES DE REDE -------------------------#

sudo cp /etc/network/interfaces /home/adm01/dados1/bkp_satoshi/bkp_config/network

#--------------------------- CÓPIA DE SEGURANÇA DO ARQUIVO DE CONFIGURAÇÃO SHELL ZSH -------------------------#

sudo cp /home/adm01/.zshrc /home/adm01/dados1/bkp_satoshi/bkp_config/zsh

#--------------------------------- CÓPIA DE SEGURANÇA DO ARQUIVO DE CONFIGURAÇÃO DOS SERVIDORES DE DNS -----------------------#

sudo cp /etc/resolv.conf /home/adm01/dados1/bkp_satoshi/bkp_config/dns_server


#--------------------------- CÓPIA DE SEGURANÇA DO DIRETORIO DE CONFIGURAÇÃO DO VIRTUALBOX -------------------------#

sudo rsync -avh --info=progress2 /home/adm01/.config/VirtualBox /home/adm01/dados1/bkp_satoshi/labs


#--------------------------------------- SINCRONIZAÇÃO DE ARQUIVOS DO DIRETORIO /HOME COM DADOS1 ---------------------------------------#

sudo rsync -avh --info=progress2 /home/adm01/Documentos /home/adm01/dados1/bkp_satoshi
sudo rsync -avh --info=progress2 /home/adm01/Imagens /home/adm01/dados1/bkp_satoshi
sudo rsync -avh --info=progress2 /home/adm01/Vídeos /home/adm01/dados1/bkp_satoshi
sudo rsync -avh --info=progress2 /home/adm01/Músicas /home/adm01/dados1/bkp_satoshi
sudo rsync -avh --info=progress2 /home/adm01/Batocera  /home/adm01/dados1/bkp_satoshi
sudo rsync -avh --info=progress2 /home/adm01/labs /home/adm01/dados1/bkp_satoshi


#--------------------------------------- SINCRONIZAÇÃO DE ARQUIVOS DO DIRETORIO /HOME COM DADOS2 ---------------------------------------#

sudo rsync -avh --info=progress2 /home/adm01/dados1/bkp_satoshi /home/adm01/dados2
sudo rsync -avh --info=progress2 /home/adm01/dados1/bkp_android /home/adm01/dados2
sudo rsync -avh --info=progress2 /home/adm01/dados1/bkp_broly /home/adm01/dados2
sudo rsync -avh --info=progress2 /home/adm01/dados1/bkp_locmaq /home/adm01/dados2
sudo rsync -avh --info=progress2 /home/adm01/dados1/backup.log /home/adm01/dados2


#--------------------------------------- SINCRONIZAÇÃO DE ARQUIVOS DO DIRETORIO /HOME COM DADOS3 ---------------------------------------#

sudo rsync -avh --info=progress2 /home/adm01/dados1/bkp_satoshi /home/adm01/dados3
sudo rsync -avh --info=progress2 /home/adm01/dados1/bkp_android /home/adm01/dados3
sudo rsync -avh --info=progress2 /home/adm01/dados1/bkp_broly /home/adm01/dados3
sudo rsync -avh --info=progress2 /home/adm01/dados1/bkp_locmaq /home/adm01/dados3
sudo rsync -avh --info=progress2 /home/adm01/dados1/backup.log /home/adm01/dados3


#-----------------------------------------  ENVIO DE DADOS DE LOG PARA O NAS BROLY ---------------------------------#

echo "Backup Realizado com Sucesso em:" >> /home/adm01/dados1/backup.log

date >> /home/adm01/dados1/backup.log
echo "" 
echo "" 

#------------------------------------- MENSAGEM FINAL VALIDANDO OS PROCESSOS DO SHELL SCRIPT ----------------------------------#

echo "ARQUIVOS TOTALMENTE SINCRONIZADOS COM SERVIDOR NAS BROLY!!" 




# 01- AUTOR:

# Antonio Marcos de Paula Caetano

# 02- NOTAS:

# Este script foi escrito com a finalidade de facilitar o processo de copiar arquivos para um servidor de arquivos NAS.

# 03- HISTÓRICO:

# 25 de Maio de 2024 - Antonio Caetano iniciou o desenvolvimento deste script.

# Atualizado no dia 10/08/2025 às 03:39

# 04- LICENÇA:

# Gnu/Gpl

