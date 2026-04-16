# 📊 Inventário de Computadores – Aplicação Web (PHP + SQL)

Este projeto consiste no desenvolvimento de uma aplicação web para a gestão e consulta de inventário de equipamentos informáticos em salas escolares. A aplicação permite o controlo centralizado de hardware, software e intervenções técnicas.

---

## 👤 Informações do Autor
- **Nome:** Tiago Ferreira Gonçalves
- **Turma:** 2ºI
- **Disciplina:** REDES – M6 – Programação de Sistemas de Informação
- **Curso:** GPSI – 2.º Ano

---

## 🎯 Objetivo do Projeto
O principal objetivo é facilitar a manutenção e o controlo dos equipamentos das salas de informática. Através da interface web, os utilizadores podem:
- Consultar equipamentos por sala.
- Visualizar características técnicas detalhadas.
- Verificar o software instalado em cada máquina.
- Gerir intervenções técnicas realizadas.

---

## 🧱 Estrutura do Repositório

O projeto está organizado da seguinte forma:

- **`/src`**: Contém o código-fonte da aplicação PHP.
  - `index.php`: Dashboard principal com estatísticas em tempo real.
  - `style.css`: Estilização moderna com suporte a modo escuro.
  - `/config`: Configurações de ligação à base de dados.
  - `/pages`: Páginas de gestão (Salas, Equipamentos, Técnicos, Intervenções).
- **`/sql`**: Scripts para criação e população da base de dados.
  - `database.sql`: Estrutura completa das tabelas e dados de exemplo.
- **`/docs`**: Documentação adicional e capturas de ecrã.

---

## ⚙️ Funcionalidades Implementadas

- ✅ **Ligação à Base de Dados:** Utilização de PHP com MySQLi/PDO.
- ✅ **Dashboard Estatístico:** Resumo automático de salas, equipamentos e intervenções.
- ✅ **Gestão de Inventário:** Listagem e detalhe de equipamentos por sala.
- ✅ **Pesquisa Avançada:** Filtros por nome de computador e software.
- ✅ **Interface Moderna:** Design responsivo com suporte a **Modo Escuro (Dark Mode)**.
- ✅ **Otimização (Debounce):** Melhoria na performance das pesquisas.
- ✅ **Tratamento de Erros:** Mensagens personalizadas para resultados não encontrados.

---

## 🗄️ Base de Dados (SQL)

A base de dados `if0_40156192_prova` é composta pelas seguintes tabelas principais:

| Tabela | Descrição |
| :--- | :--- |
| `salas` | Registo das salas e localizações físicas. |
| `equipamentos` | Detalhes técnicos (IP, Marca, Modelo, Tipo). |
| `tecnicos` | Informações de contacto da equipa técnica. |
| `intervencoes` | Histórico de manutenções realizadas nos equipamentos. |

> **Nota:** O script completo para recriar a base de dados encontra-se em [`/sql/database.sql`](./sql/database.sql).

---

## 🤖 Utilização de IA e Desenvolvimento

Neste projeto, a Inteligência Artificial foi utilizada como ferramenta de apoio para:
- **Interface Gráfica:** Melhorias visuais e implementação do modo escuro.
- **Funcionalidades de Pesquisa:** Lógica de filtros e implementação de debounce.
- **Resolução de Problemas:** Depuração de erros técnicos e otimização de código.

**Trabalho Manual:**
- Desenho e implementação de toda a estrutura da base de dados.
- Resolução de conflitos de dados e integridade referencial.
- Organização e documentação do projeto.

---

## 🚀 Como Executar o Projeto

1. Clone este repositório.
2. Importe o ficheiro `sql/database.sql` para o seu servidor MySQL.
3. Configure as credenciais de acesso em `src/config/ligacao.php`.
4. Coloque a pasta `src` no seu servidor local (XAMPP, WAMP, etc.).
5. Aceda via browser através de `localhost/nome-da-pasta`.

---

## 🔗 Demonstração Online
https://a14733-oficina.infinityfree.me/teste/index.php
