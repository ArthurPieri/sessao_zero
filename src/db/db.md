# Jogador

- ID
- NomeUsuario (str)
- Password (str)
- Admin (Bool)
- \*Personagens

## Personagem

- ID
- Nome
- Descrição

## Notas

- Titulo
- Data
- Descrição

# Guilda/Mesa

- ID
- Nome
- \*jogadores
- \*Narrativas

# Narrativas

- ID
- Nome
- \*Narrador (Jogador)
- \*Jogadores
- Decrição
- Limite de players

## Sessão

- ID
- Data
- Notas
