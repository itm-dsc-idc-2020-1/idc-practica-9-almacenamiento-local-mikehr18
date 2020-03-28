


##Instalar conector mysql y ntplib
#pip3 install mysql-connector 
import mysql.connector
import time
import random
import hashlib
import os
import datetime
from time import ctime
import ntplib

servidor_de_tiempo = "time-e-g.nist.gov"

print("\nObteniendo la hora del servidor NTP:")
cliente_ntp = ntplib.NTPClient()
respuesta = cliente_ntp.request(servidor_de_tiempo)
print(respuesta)
hora_actual = datetime.datetime.strptime(ctime(respuesta.tx_time), "%a %b %d %H:%M:%S %Y")
print("Respuesta de " + servidor_de_tiempo +  ": " + str(hora_actual) + "\n")
os.system("sudo date -s \"" + hora_actual.strftime("%d %b %Y %H:%M:%S") + "\"")




#Generación de firma digital
caracteres = "abcdefghijklmnopqrstuvwxyz0123456789"

def generar_cadena():
      cadena=""
      for ciclo in range(1,10):
            cadena = cadena +random.choice(caracteres)
      return cadena

cadena = generar_cadena()
firma = (hashlib.md5(cadena.encode())).hexdigest()

print("Generando la firma electrónica")

##Conexion a base de datos
mydb = mysql.connector.connect(
  host="localhost",
  port="3306", ## Esta linea debe ajustarse segun el puerto de tu compu
  user="mike",
  passwd="equipo4",
  database="datos"
  )

mycursor = mydb.cursor()


def insertar(id_,firma,temperatura, variable):
  
  sql = "INSERT INTO `clima` (`id`, `firma`, `latitud`, `longitud`, `fecha`, `hora`, `variable`, `valor`) VALUES ('"+id_+"', '"+firma+"', '"+str(getlatitud())+"', '"+str(getlongitud())+"', '"+time.strftime("%y/%m/%d")+"', '"+time.strftime("%H:%M:%S")+"', '"+variable+"', '"+temperatura+"')"
  print(sql)
  mycursor.execute(sql)

  mydb.commit()
  
  return 


def getlatitud():
  
  return round(random.uniform(19.721784, 19.721803),6)

def getlongitud():
  return round(random.uniform(-101.185761, -101.185852),6)



def actualizarDato():
  id = "temperatura_01"
  firma_digital = firma
  temperatura = "22"
  variable="2"
  insertar(id,firma_digital,temperatura,variable)
  time.sleep(60)
  return



while True:
    actualizarDato()