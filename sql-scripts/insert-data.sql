-- Para inserir os dados nas tabelas, eu utilizei um método que copia os dados em um arquivo csv para dentro da tabela:

-- Comando: \copy <tabela> (coluna1, coluna2, coluna3, ... colunaN) FROM 'caminho/do/arquivo.csv' DELIMITER ',' CSV HEADER;
-- Esse comando acima é o comando aplicado, onde apenas ocorreu uma adaptação dos elementos chave, por exemplo:

\copy patients (name, birth_date, admission_date, issue, expected_stay, status) FROM '../csv-files/patients.csv' DELIMITER ',' CSV HEADER;

-- No caso, basta adaptar o nome da tabela e das colunas e o caminho do arquivo csv correspondente para que o comando seja executado.

-- NOTA: O postgreSQL deu erro ao executar o comando acima quando eu não dei um papel de superusuário ao banco. Talvez seja necessário fazer a mesma coisa. 
