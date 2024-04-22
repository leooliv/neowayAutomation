# Serve Rest Automation
Repositório para testes com Robot

python/robot project.

## Tools used

* Python 3.12.2
* Robot Framework 7.0
* chromedriver 123.0.6312.58

## Requirements

Clone o Repositório

Faça o download das dependências do Python

* Tenha uma IDE instalada no seu computador, utilizada para o teste: VSCode.
* Configure a instância do chromedriver globalmente

### neowayRobotAutomation\resources\pages

|  Recurso                    |  Descrição                                                     |
|-----------------------------|----------------------------------------------------------------|
| `home.robot`                | Configuração de PageObject da pagina Home da aplicação         |
| `learn_colors.robot`        | Configuração de PageObject da pagina Learn Colors da aplicação |
| `learn_how_to.robot`        | Configuração de PageObject da pagina Learn How To              |
| `learn_html.robot`          | Configuração de PageObject da pagina Learn HTML                |

### neowayRobotAutomation\resources\shared

|  Recurso                    |  Descrição                                                       |
|-----------------------------|------------------------------------------------------------------|
| `setup_teardown.robot`      | Arquivo que engloba os comandos de Setup e Teardown da automação |

### neowayRobotAutomation\resources

|  Recurso                    |  Descrição                                        |
|-----------------------------|---------------------------------------------------|
| `main.robot`                | Arquivo que globaliza as configurações do projeto |

### neowayRobotAutomation\testes

|  Recurso                    |  Descrição                                         |
|-----------------------------|----------------------------------------------------|
| `modal_box_test.robot`      | Suite de testes para o primeiro cenário do desafio |
| `colors_check_test.robot`   | Suite de testes para o segundo cenário do desafio  |
| `html_forms_test.robot`     | Suite de testes para o terceiro cenário do desafio |

### Rode os Testes

Na raiz do projeto rode o seguinte comando para conferir a automação
dos 3 cenários propostos

| Tipo de Teste     | Linha de Comando                                          |
|-------------------|-----------------------------------------------------------|
| E2E Tests         | `robot .\testes\*`                                        |


### Resultado dos Testes

* É possível conferir o resultado dos testes após rodar os mesmos

Na pasta raiz do projeto, após rodar a suite você pode conferir o arquivo `report.html`
Ao abrí-lo em seu navegador, será disponibilizado as métricas dos testes podendo verificar
as suítes, o status de cada teste, os comandos utilizados.

