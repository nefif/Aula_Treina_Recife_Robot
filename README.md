# Projeto de Automação Robot Framework - DemoQA

Este projeto contém automações de testes para a funcionalidade de **Text Box** do site DemoQA, utilizando o **Robot Framework** com a biblioteca **SeleniumLibrary**.

## 📁 Estrutura do Projeto

O projeto está organizado da seguinte forma:

- **tests/**: Contém os arquivos de suítes de testes (`.robot`).
- **resources/**: Centraliza a lógica do projeto:
    - [cite_start]`package.robot`: Arquivo principal que gerencia as importações.
    - [cite_start]`hooks.robot`: Configurações de setup e teardown (abrir e fechar navegador)[cite: 1].
    - [cite_start]`keywords/`: Implementação dos steps (Dado, Quando, Então)[cite: 4, 8].
    - [cite_start]`pages/`: Mapeamento dos elementos (Locators) da página[cite: 6].

## 🛠️ Pré-requisitos

- Python 3.x instalado.
- Navegador Chrome instalado (ou driver compatível).

## 🚀 Como Executar

1. Instale as dependências:
   ```bash
   pip install -r requirements.txt

2. Execute todos os testes:
    ```bash
    robot -d repors tests/

3. Executar apenas teste com tag especifica
    ```bash
    robot -d repors -i Tag tests/
