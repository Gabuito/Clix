# Backend for Clix

Este é o backend do projeto **Clix**, responsável por fornecer APIs REST para gerenciamento de usuários, upload de arquivos e interação com o banco de dados PostgreSQL.

## 🚀 Tecnologias

- Node.js
- Express
- PostgreSQL (pg)
- Zod (validação de schemas)
- Multer (upload de arquivos)
- Sharp (manipulação de imagens)
- Argon2 (hashing de senhas)
- PostGIS (extensão para dados geoespaciais)

## 📦 Instalação

1. Clone este repositório:

   ```powershell
   git clone <URL_DO_REPOSITORIO>
   ```

2. Acesse a pasta do projeto:

   ```powershell
   cd backend
   ```

3. Instale as dependências:

   ```powershell
   npm install
   ```

4. Crie um arquivo `.env` na raiz do projeto com as variáveis de ambiente necessárias (por exemplo, conexão com o banco).

## ⚙️ Scripts

- **npm install**: instala as dependências.
- **npm run test**: inicia o servidor (executa `node env-file=.env server.ts`).

## 🔧 Configuração

Renomeie ou crie seu arquivo `.env` com as seguintes variáveis (exemplo):

```dotenv
PG_HOST=localhost
PG_PORT=5432
PG_USER=seu_usuario
PG_PASSWORD=sua_senha
PG_DATABASE=seu_banco
```

## 🌐 Modelagem Geoespacial

Para consultas de proximidade e cálculos geográficos, use a extensão PostGIS:

```sql
-- exemplo de coluna do tipo ponto geográfico (latitude/longitude)
ALTER TABLE addresses
  ADD COLUMN geom geography(Point, 4326);

-- criar índice espacial para acelerar consultas de distância
CREATE INDEX idx_addresses_geom ON addresses USING GIST(geom);
```

Nota: o tipo geométrico nativo `PATH` do PostgreSQL é um tipo planar simples e não foi projetado para cálculos geodésicos; portanto, não é recomendado para endereços e operações de proximidade no globo.

## 📝 Autor

João Gabriel Salvador Ito

## 📄 Licença

Este projeto está licenciado sob a licença ISC.
