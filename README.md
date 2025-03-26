# flutter_fbase

## En el archivo ¨Yaml¨ se deben instalar las extensiones con el siguiente formato

- flutter upgrade --force

## instalación de firebase para flutter

1) instalar firebase tools:
<https://firebase.google.com/docs/cli?hl=es&authuser=0#windows-npm>
 npm install -g firebase-tools
2) dart pub global activate flutterfire_cli
3) firebase Login
4) flutterfire configure (No ejecutar en bash, si no en powershell de vscode)
5) instalar firebase core y cloud fire store
<https://pub.dev/packages/firebase_core/install>
 flutter pub add firebase_core
<https://pub.dev/packages/cloud_firestore/install>
 flutter pub add cloud_firestore
En casos extremos:

- firebase --versión
- firebase Login --reauth
- flutter clean
- flutter pub get
En casos aun más extremos
- flutter pub upgrade --force

A new Flutter project.

## google authentication

keytool -genkey -v -keystore my-release-key.keystore -alias my-key-alias -keyalg RSA -keysize 2048 -validity 10000

- Enter keystore password( llave del archivo generado ): 19421945 // coltpaterson
- Name: Juan
- Org unit: TIADSM
- Org unit2: TIADSM
- Huamantla
- Tlaxcala
- MX

Comando para abrir el archivo:

- keytool -list -v -keystore [ruta_del_nuevo_keystore] -alias my-key-alias
- keytool -list -v -keystore my-release-key.keystore -alias my-key-alias

Alias name: my-key-alias
Creation date: 18 mar 2025
Entry type: PrivateKeyEntry
Certificate chain length: 1
Certificate[1]:
Owner: CN=Juan, OU=TIADSM, O=TIADSM, L=Huamantla, ST=Tlaxcala, C=MX
Issuer: CN=Juan, OU=TIADSM, O=TIADSM, L=Huamantla, ST=Tlaxcala, C=MX
Serial number: 7c0b615e170e42f2
Valid from: Tue Mar 18 12:01:08 GMT-06:00 2025 until: Sat Aug 03 12:01:08 GMT-06:00 2052
Certificate fingerprints:
         SHA1: 1B:D2:0E:F3:8A:0D:D1:E8:DF:46:86:D0:1F:0F:3C:59:69:EB:D1:66
         SHA256: 2B:FD:DF:EA:05:A5:BA:DA:C4:17:3A:68:2B:F7:5D:ED:29:84:41:6D:6A:40:87:3B:C0:BE:94:C5:2D:95:9C:1D

Configuración de proyecto

- -> Seleccionar la app(s) para android -> agregar huellla digital con el algoritmo SHA indicado

- Authentication -> Google -> habilitar -> descargar json -> reemplazar en la carpeta android/apps

## Instalar Firebase Auth y Google SignIn

- flutter pub add firebase_auth

- flutter pub add google_sign_in

### PASOS 'ULTIMOS'

flutter clean

flutter pub get

flutter pub outdated

cd android

./gradlew signinReport

### IMPORTANTE

1) LAS KEYS SE GENERAN CON `JAVA` (importante generarlas con la version que este en el build.gradle)
2) REVISAR VARIABLES DEL ENTORNO, VERIFICAR VERSIÓN DE JAVA.
    CHECAR VAR JAVA_HOME (SESIÓN DE SISTEMA)
3) LA VERSIÓN DE JAVA (build grade) DEFINE LA VERSIÓN DE FLUTTER Y DE GRADLE (kotlin)
    -- JAVA21 => FLUTTER 31
    -- JAVA17 => FLUTTER 29
4) REVISAR QUE ANDROID STUDIO ESTÉ ACTUALIZANDO
5) ACTUALIZAR FLUTTER
    -- VER LA VERSION: flutter --version
    -- ACTUALIZAR flutter upgrade --force
(5.1) - En caso de no poder actualizar a otra versión más avanzada, ejecutar:
    -- flutter channel beta
    -- flutter upgrade
    -- flutter channel stable
    -- flutter upgrade
    - Por último, antes de ir al siguiente punto, actualizar flutter:
    -- `flutter upgrade --force`
6) EL ARCHIVO .keystore DEBE ESTAR EN:
    -- tu_proyecto/android/app, Y REVISAR QUE LOS VALORES ESTÉN EN LA CONSOLA DE GOOGLE.
    TAMBIÉN PUEDES ACTUALIZAR google.services.json
7) VERIFICAR QUE LAS HUELLAS FUNCIONEN CON `gradlew signinReport` => BUILD SUCCESFUL
    -- ir a /android y ejecutar `./gradlew sininReport` en powershell de Windows
8) SI TODO ESTÁ BIEN, EJECUTAR:
    -- flutter clean
    -- flutter pub get
    -- flutter pub outdated (marca dependencias obsoletas)
9) DESINTALAR LA APP EN EL EMULADOR:
    -- adb uninstall com.example.tu.proyecto
10) CORRER EL PROYECTO, SE PUEDE CORRER CON
    -- flutter run --release
    -- (CON ESTE COMANDO LA APP SE DETIENE CON ``Alt + 0``)
