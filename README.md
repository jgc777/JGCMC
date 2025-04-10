# JGCMC
![Windows Terminal](https://img.shields.io/badge/Windows%20Terminal-%234D4D4D.svg?style=for-the-badge&logo=windows-terminal&logoColor=white)

Un simple servidor Minecraft PaperMC 1.16.5 portable e independiente compatible con plugins y todas las versiones, con todo lo que necesitas. Funciona gracias a 7-zip, Minecraft, Amazon Correto JDK 16, PaperMC, Playit.gg y Bat To Exe Converter. Al usar esto aceptas el EULA de Minecraft.

## Compatibilidad
Requiere 64bits y ha sido probado en Windows 10. En teoría es compatible con todas las versiones de Windows a partir de Windows Vista SP2.

## Uso
1. Para la nueva versión, simplemente descargue JGCMC.exe desde [aquí](https://github.com/jgc777/JGCMC/releases/latest) y ejecútelo. Se recomienda ejecutarlo en una nueva carpeta.

2. 

  a) En la ventana de playit use Ctrl+C para copiar el enlace que aparece tras seleccionarlo y péguelo en su navegador para acceder a él. Siga las instrucciones de la web y elija las configuraciones predeterminadas para MC Java. Tras conectarse, obtendrá un enlace permanente mediante el cual cualquier persona con ella se podrá conectar a su servidor desde cualquier versión de Minecraft.

  b) Si usted tiene conocimiento avanzados puede abrir sus puertos manualmente y omitir todo el proceso relacionado con playit.

  c) Si usted únicamente va a jugar de forma local puede omitir los procesos relacionados con playit o abrir sus puertos y conectarse a 127.0.0.1 o a localhost desde Minecraft.

3. Disfrute del servidor. Para cerrar el servidor no cierre la ventana, use el comando stop.

## Versión antigua
Hace lo mismo solo que requiere más archivos. Requiere la instalación de Java.com y Playit.gg para funcionar. Como ventaja es bastante más rápida ya que no necesita descomprimir. Para usarla deberás abrir el acceso directo tras descomprimir el archivo JGCMC_old.zip ubicado en lanzamientos o [aquí](https://mega.nz/file/aqYVnIjJ#fATzH83l8EDBhuvwzWQPTS8C4vGz9PvOWUlXbrIbihs).

## Extra
Algunas opciones extra son:

 - Editar el icono (server-icon.png)
 - Añadir un paquete de recursos llamado rpack.zip
 - Añadir plugins compatibles con Paper/Spigot/Bukkit 1.16.5
 - Volver a compilar el programa tras editar el código, por ejemplo, eliminando playit o modificando el icono.
 - Editar la cantidad de GBs de RAM asignados al servidor en el archivo RAM .
 - Editar ciertas opciones en el archivo server.properties .

## Seguridad
Aunque el programa es totalmente seguro, como puede comprobar en el código fuente (además descarga los ejecutables desde sus webs originales, excepto bat to exe converter, los plugins y playit, los cuales no pude automatizar), puede que le surjan dudas ya que algún que otro antivirus detecta un falso positivo. Para verificar la seguridad del programa puede:

 - Verificar el código en la carpeta src y comprobar los archivos de la carpeta jgcmc, así como reemplazarlos descargándolos de internet manualmente.
 - Si aun no se fía, puede usar la versión antigua la cual no comprende ejecutables y puede revisar el código mucho más fácilmente, aunque esta requiera la instalación manual de Playit y Java.

## Recompilar/ modificar
Puede recompilar el programa para asegurarse de su seguridad o modificarlo. En la carpeta src hay un script llamado Compilar.jgcmc.cmd el cual generará un ejecutable para Windows x64 a partir de .jgcmc.cmd, le añadirá los archivos dentro de la carpeta jgcmc tras comprimir los de la carpeta archivos_, añadirá ciertos atributos y opciones y añadirá el icono icono.ico al ejecutable. No se añade el icono mediante la herramienta Bat To Exe Converter ya que genera un error al agregar los recursos. Si obtiene un error al agregar los recursos deberá esperar unos segundos tras cerrar el compilador y volver a iniciar este repitiendo este proceso hasta que añada los recursos. Puede ser compilado en Windows 10 17063 o superior de 64 bits con internet.
