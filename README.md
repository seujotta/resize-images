## Resolução do problema Hells Triangle

ara resolver o problema, criei um projeto rails api.

Dentro do projeto criei uma task para consumir o endpoint de imagens, e pegar cada uma delas.

Para rodar a aplicação basta clonar esse repositório, executar o comando:

```ruby
bundle install
```

OBS: Essa aplicação foi desenvolvida com ruby 2.3.3 e com rails 5. É necessário que o servidor tenha a biblioteca imagemagick instalada.

Após instalar as dependências do projeto rode a task:

```ruby
rake images_source:populate
```

após o término rode:

```ruby
rails s Puma
```

E acesse `http://localhost:3000`
