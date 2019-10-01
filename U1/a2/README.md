
# Acceso remoto SSH

---

## Introducción

Necesitaremos 4 MV's con la siguiente configuración

Función      | Sistema Operativo   |      IP        |    Nombre      |
:----------: | :-----------------: | :------------: | :------------: |
Servidor SSH | GNU/Linux OpenSUSE  | `172.19.15.31` | ssh-server15g  |
Cliente SSH  | GNU/Linux OpenSUSE  | `172.19.15.32` | ssh-client15g |
Servidor SSH | Windows Server 2016 | `172.19.15.11` | ssh-server15w  |
Cliente SSH  | Windows7            | `172.19.15.12` | ssh-client15w |

---

## 1. Preparativos

### 1.1. Servidor SSH

**Server OpenSUSE**

Añadimos en `/etc/hosts` los equipos `ssh-client15g` y `ssh-client15w`:

![Fichero /etc/hosts Server OpenSUSE](./images/hosts-server-os.png)

Para comprobar los cambios ejecutamos los siguientes comandos:
  * `ip a`
  * `ip route`

![Comprobacion IMG1](./images/comp1-server-os.png)

  * `ping 8.8.4.4 -c1`
  * `host www.nba.com`
  * `ping ssh-client15g -c1`

![Comprobación IMG2](./images/comp2-server-os.png)

  * `ping ssh-client15w -c1`
  * `lsblk`
  * `sudo blkid`

![Comprobación IMG3](./images/comp3-server-os.png)

Tras hacer las comprobaciones, crearemos los siguientes usuarios:
  * `suarez1`
  * `suarez2`
  * `suarez3`
  * `suarez4`

![Creación de usuarios](./images/usuarios.png)

### 1.2. Cliente GNU/Linux

En el cliente GNU/Linux añadimos al fichero `/etc/hosts` los equipos `ssh-server15g` y `ssh-client15w`

![Fichero Client /etc/hosts](./images/hosts-client-os.png)

Comprobamos que esta bien configurado haciendo ping a ambos equipos:

![Comprobación Ping](./images/comp-hosts.png)

### 1.3. Cliente Windows

Instalamos software cliente SSh en Windows. Para ello utilizaremos `PuTTy`

![PuTTY](./images/putty.png)

Añadimos los equipos`ssh-server15g` y `ssh-client15g` en el fichero `C:\Windows\System32\drivers\etc\hosts`.
  * Comprobamos que esta bien configurado haciendo ping a los dos equipos.

![Comprobar hosts Windows](./images/hosts-client-w.png)

---

## 2. Instalación del servicio SSH

Instalamos el servicio SSH en la máquina ssh-server15g por comandos:
  * Ejecutamos en la terminal `zypper search openssh` para mostrar los paquetes instalados o no con nombre *openssh*.
  * Ahora ejecutamos `zypper install openssh` para instalar el paquete **OpenSSH**.

### 2.1. Comprobación

Desde el propio **ssh-server** verificamos que el servicio esta en ejecución con los siguientes comandos:
  * `systemctl status sshd`
  * `ps -ef | grep sshd`

![Status SSH](./images/ssh-server-os.png)

* Para comprobar que el servicio está escuchando por el puerto 22 utilizamos el siguiente comando: [¹](#Notaa pie de página)
  * `sudo lsof -i:22 -n`

![Comando lsof](./images/.png)

### 2.2. Primera conexión SSH desde cliente GNU/Linux



![](./images/.png)

### 2.3. Primera conexión SSH desde el cliente Windows



![](./images/.png)

---

## 3. Cambiamos la identidad del servidor

### 3.1. Regenerar certificados



![](./images/.png)

### 3.2. Comprobamos



![](./images/.png)

---

## 4. Personalización del prompt Bash



![](./images/.png)

---

## 5. Autenticación mediante claves públicas



![](./images/.png)

---

## 6. Uso de SSH como túnel para X



![](./images/.png)

---

## 7. Aplicaciones Windows nativas



![](./images/.png)

---

## 8. Restricciones de uso

### 8.1. Restricción sobre un usuario



![](./images/.png)

### 8.2. Restricción sobre una aplicación



![](./images/.png)

---

## 9. Servidor SSH en Windows



![](./images/.png)

---
##### Notas a pie de página

###### Puertos escuchando: Puerto abiertos que usa el ordenador para la respectiva comunicación en la red.
