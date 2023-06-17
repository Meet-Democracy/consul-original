# Conoce la bifurcación Democracy del proyecto Consul

**NOTA** Esta es una **fork** de [Proyecto Cónsul](https://github.com/consul/consul/).

Nuestro más sincero agradecimiento y reconocimiento a Consul Project por el increíble trabajo y el apoyo que brindan.

![Logotipo de Meet Democracy](https://meetdemocracy.com/images/LogoMeetDemocracy.png)


# ¡Hola, somos Meet Democracy! 👋
[https://meetdemocracy.com](https://meetdemocracy.com)

La plataforma Meet Democracy permite a los participantes de su comunidad debatir y votar sobre legislación, presupuesto y más. Nuestro objetivo es facilitar el desarrollo comunitario. Pretendemos democratizar la participación comunitaria haciéndola accesible a todos. Reconocemos la importancia de tener acceso a una plataforma democrática y confiable. Ofrezca a los ciudadanos de su comunidad la libertad de expresarse.

## Qué hay de nuevo ?

- Actualizar Font Awesome de 5.15.1 a 6.4.0 [PR #6](https://github.com/Meet-Democracy/consul-original/pull/6)

- Representar imagen de presupuesto con corchetes en su nombre [PR #3](https://github.com/Meet-Democracy/consul-original/pull/3)

- Corrige el error de la consola Parser/Rubocop [PR #2](https://github.com/Meet-Democracy/consul-original/pull/2)

- Corrección de prueba fallida: SDG management Relations_spec [PR #1](https://github.com/Meet-Democracy/consul-original/pull/1)

## Ejecutar localmente

Clonar el proyecto

```bash
git clone https://github.com/Meet-Democracy/consul-original.git
```

Ir al directorio del proyecto

```bash
cd consul-original
```

Instalar dependencias

```bash
bundle install
```
Configurar la base de datos y los secretos

```bash
cp config/database.yml.example config/database.yml
cp config/secrects.yml.example config/secrets.yml
```

Configurar la base de datos

```bash
bin/rake db:create
bin/rake db:setup
bin/rails db:dev_seed
```

Ejecutar las pruebas

```bash
bin/rake db:prueba:preparar
bin/rspec
```


Inicie el servidor

```bash
bin/rails s
```

## Credenciales de administrador y usuario de demostración

Puede usar el usuario administrador predeterminado del archivo de semillas:

  **usuario:** admin
  **pase:** 12345678

Pero para algunas acciones como votar, necesitará un usuario verificado, el archivo de semillas también incluye uno:

  **usuario:** verified
  **pase:** 12345678