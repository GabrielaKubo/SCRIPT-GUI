#!/bin/bash
#Criando jar executável

java -version
if [ $? -eq 0 ];
then
	echo "Arquivo .jar não instalado!"
	echo "Gostaria de instalar arquivo .jar Gerencie! ? (s/n)"
	read inst
	if [ \"$inst\" == \"s\" ];
	then
		cd /home/ubuntu/Desktop
		git clone https://github.com/Gerencie-Monitoramento-de-totens/JAR.git
		echo "Arquivo clonado com sucesso!"
		echo "Executando arquivo"
		cd /home/ubuntu/Desktop
		cd JAR/gerencie/target
		java -jar gerencie-1.0-SNAPSHOT-jar-with-dependencies.jar
	fi
else
		echo "Arquivo .jar já adquirido!"
		echo "Executando arquivo"
		cd /home/ubuntu/Desktop
		cd JAR/gerencie/target
		java -jar gerencie-1.0-SNAPSHOT-jar-with-dependencies.jar
fi