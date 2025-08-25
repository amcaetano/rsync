#!/bin/bash

#------------------------------- SHELL SCRIPT DE SINCRONIZAÇÃO E CÓPIA DE SEGURANÇA DE ARQUIVOS E DADOS MÁQUINA LAIN PARA O SERVIDOR BROLY  -------------#

echo "INICIANDO PROCESSO DE SINCRONIZAÇÃO:"

date 

echo "Processo de sincronização e cópia de arquivos iniciado no servidor BROLY, em:" >> /home/user/backup.log

echo ""
echo ""

date >> /home/user/nas/backup.log

echo ""
echo ""

sleep 2

echo "OS ARQUIVOS ESTÃO SENDO SINCRONIZADOS COM O SERVIDOR NAS BROLY, POR GENTILEZA AGUARDE O FIM DO PROCESSO!"

sleep 2

echo ""
echo ""




#--------------------------- CÓPIA DE SEGURANÇA DO ARQUIVO DE CONFIGURAÇÃO I3STATUS -------------------------#

sudo cp /etc/i3status.conf /home/user/nas/bkp_config/i3status

#--------------------------- CÓPIA DE SEGURANÇA DO ARQUIVO DE CONFIGURAÇÃO I3WM  -------------------------#

sudo cp /home/user/.config/i3/config /home/user/nas/bkp_config/i3wm

#--------------------------- CÓPIA DE SEGURANÇA DO ARQUIVO DE CONFIGURAÇÃO LIGHTDM E LIGHTDM GTK GREETER -------------------------#

sudo cp /etc/lightdm/lightdm.conf /home/user/nas/bkp_config/lightdm

sudo cp /etc/lightdm/lightdm-gtk-greeter.conf /home/user/nas/bkp_config/lightdm

#--------------------------- CÓPIA DE SEGURANÇA DO ARQUIVO DE CONFIGURAÇÃO DE INTERFACES DE REDE -------------------------#

sudo cp /etc/network/interfaces /home//user/nas/bkp_config/network

#--------------------------- CÓPIA DE SEGURANÇA DO ARQUIVO DE CONFIGURAÇÃO SHELL ZSH -------------------------#

sudo cp /home/user/.zshrc /home/user/nas/bkp_config/zsh

#--------------------------------- CÓPIA DE SEGURANÇA DO ARQUIVO DE CONFIGURAÇÃO DOS SERVIDORES DE DNS -----------------------#

sudo cp /etc/resolv.conf /home/user/nas/bkp_config/dns_server


#--------------------------- CÓPIA DE SEGURANÇA DO DIRETORIO DE CONFIGURAÇÃO DO VIRTUALBOX -------------------------#

sudo rsync -avh --info=progress2 /home/user/.config/VirtualBox /home/user/nas


#--------------------------------------- SINCRONIZAÇÃO DE ARQUIVOS DO DIRETORIO /HOME PARA STORAGE NAS  ---------------------------------------#

sudo rsync -avh --info=progress2 /home /home/user/nas


#-----------------------------------------  ENVIO DE DADOS DE LOG PARA O NAS  ---------------------------------#

echo "Backup Realizado com Sucesso em:" >> /home/user/nas/backup.log

date >> /home/user/nas/backup.log
echo "" 
echo "" 

#------------------------------------- MENSAGEM FINAL VALIDANDO OS PROCESSOS DO SHELL SCRIPT ----------------------------------#

echo "ARQUIVOS TOTALMENTE SINCRONIZADOS COM SERVIDOR NAS !!" 




# 01- AUTOR:

# Antonio Marcos de Paula Caetano

# 02- NOTAS:

# Este script foi escrito com a finalidade de facilitar o processo de copiar arquivos para um servidor de arquivos NAS.

# 03- HISTÓRICO:

# 25 de Maio de 2024 - Antonio Caetano iniciou o desenvolvimento deste script.

# Atualizado no dia 24/08/2025 às 22:09

# 04- LICENÇA:

# Gnu/Gpl

