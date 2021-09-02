# Gerar Site de markdown


## Sobre este projeto
Este projeto é simples exemplo de como gerar uma documentação html de arquivos markdown utilizando o projeto [mkdocs](https://www.mkdocs.org/).



## Estrutura deste projeto

Diretório / Arquivo          | Descrição
---                          | ---
docker/Dockerfile            | Arquivo que criará a imagem que conterá as instações do `mkdocs`
src/docs/content/*           | Diretório onde ficará os arquivos `.md` que será transformados em `.html` posteriormente.
src/docs/css/css-custom.css  | Diretório que terá os estilos `css` que sobrescreveram o padrão do `mkdocs`
src/docs/static/*            | Diretório para centralizar as imagens e outros arquivos estáticos
src/docs/index.md            | Arquivo index que será utilizado como página inicial do site
**src/mkdocs.yml**           | Arquivo onde conterá as configurações do `mkdocs`
start-build-docs-image.bash  | Script que fará o build da imagem que terá o `mkdocs` instalado
start-docs-in-localhost-9104.bash | Subindo nosso site na porta 9104 ( http:// localhost:9104 )


## Subindo a documentação localmente

Para subirmos este projeto localmente basta seguir os seguintes passos:

  - Criar a imagem docker
  - Subir um container da imagem criada
  - Testar o site localmente

Obs: É necessário ter o `docker`instalado na máquina para subir o container que terá o `mkdocs` instalado

### Criar a imagem docker
```bash
    bash ./start-build-docs-image.bash
```

### Subir um container da imagem criada
```bash
    bash ./start-docs-in-localhost-9104.bash
```
### Testar o site localmente
Acesse o link  [http:// localhost:9104](http:// localhost:9104)


## Alterando a documentação

Todos os paginas da documentação são originadas dos arquivos `markdown`que estão no diretório `src/docs/content/*`. Após subir o site basta apenas alterar arquivo dentro de  `src/docs/content/*` que o site será atualizado automaticamente.


## Instalando o mkdocs manualmente

Caso vc queira installar o mkdocs manuamente e realizar seus testes basta seguir os comandos abaixo:

> Necesário ter `python3.8+` instalado ( Não será necessário ter o `docker`instalado para esses comandos )

```bash

    # instalando recurso para virtualização de ambiente ( passo não obrigatório )
    # sudo apt-get install -y python3-venv

    # instalando o gerenciador de bibliotécas do python
    sudo apt-get install -y python3-pip

    # Criando um ambiente virtual para instalarmos as biblitécas apenas nesse ambiente  ( passo não obrigatório )
    # python3 -m venv env-py-doc

    # Ativando e acessando o ambiente criado  ( passo não obrigatório )
    # source env-py-doc/bin/activate
    
    # Instalando o mkdocs no ambiente
    pip install mkdocs

    # criando um novo projeto mkdocs
    mkdocs new doc-teste

    # subindo o site criado
    mkdocs serve

```

## Rodando e buildando o site localmente sem docker

Caso já tenha o `mkdocs` instalado na máquina, basta entrar no diretório no diretório `src/docs/*` que contem o arquivo `mkdocs.yml` ( arquivo de configuração ) e rodar o comando abaixo para rodar o site com live-reload ( qualquer alteração feita nos arquivos já será atualizado no site ):

```bash
    mkdocs serve
    # acesse o site na porta padrão em http://127.0.0.1:8000
```
Para fazer o build do site rode o comando:

```bash
    mkdocs build
```

Mais comandos acesse a documentação completa em [www.mkdocs.org](https://www.mkdocs.org/getting-started/)







