
# Acceso remoto SSH

---

## Introducción

Necesitaremos 4 MV's con la siguiente configuración

Función      | Sistema Operativo   |      IP        |    Nombre      |
:----------: | :-----------------: | :------------: | :------------: |
Servidor SSH | GNU/Linux OpenSUSE  | `172.19.15.31` | ssh-server15g  |
Cliente SSH  | GNU/Linux OpenSUSE  | `172.19.15.32` | ssh-cliente15g |
Servidor SSH | Windows Server 2016 | `172.19.15.11` | ssh-server15w  |
Cliente SSH  | Windows7            | `172.19.15.12` | ssh-cliente15w |

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



![](./images/.png)

### 1.3. Cliente Windows



![](./images/.png)

---

## 2. Instalación del servicio SSH

### 2.1. Comprobación



![](./images/.png)

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