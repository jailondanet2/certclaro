#/bin/bash
clear
echo -e "ATUALIZANDO REPOSITÓRIOS, AGUARDE..."
sleep 3
apt update; apt upgrade -y; clear
echo -e "Instalado gerenciador de arquivos compactados..."
sleep 2
apt install zip -y; apt install unzip -y
cd /etc; rm -rf ssl stunnel; clear
echo -e "Substituindo certificados SSL..."
sleep 3
wget --no-check-certificate https://www.dropbox.com/s/rqywwa11baqmip3/ssl.zip
unzip ssl.zip; rm ssl.zip; clear
echo -e "Atualização do certificado SSL concluída"
echo -e "Reinicie o servidor para que as mudancas "
echo -e "entrem em vigor imediatamente!!"
echo ""
echo -e "Script feito por @JailondaNET"
cd; rm ssl.sh