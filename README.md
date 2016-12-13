### SETUP

Execute o Bundle Install

```
bundle install
```

Crie o config/database.yml para a aplicação

```
  default: &default
  adapter: sqlite3
  encoding: utf8
  host: localhost
  username: root
  password:
  timeout: 5000

  test:
    <<: *default
    database: database_test

  development:
    <<: *default
    database: database_development

  production:
    <<: *default
    database: database_production
```

Para inicializar o Banco com os dados iniciais de marcas e modelos

```
rake db:create db:migrate db:seed
```

Para inicializar o serviço que atualiza as marcas e modelos a cada uma hora,
através do `db:seed`

```
whenever --update-crontab
```

Execute o Servidor e acesse a aplicação

```
rails s
```
