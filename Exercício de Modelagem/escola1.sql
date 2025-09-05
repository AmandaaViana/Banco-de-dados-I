INSERT INTO disciplina(nome) VALUES('MATEMATICA');
INSERT INTO disciplina(nome) VALUES('HISTORIA');
INSERT INTO disciplina(nome) VALUES('GEOGRAFIA');
INSERT INTO disciplina(nome) VALUES('PORTUGUES');
INSERT INTO disciplina(nome) VALUES('CIENCIAS');

INSERT INTO turma (ano,letra) VALUES (1,'A');
INSERT INTO turma (ano,letra) VALUES (6,'A');
INSERT INTO turma (ano,letra) VALUES (1,'B');
INSERT INTO turma (ano,letra) VALUES (1,'C');
INSERT INTO turma (ano,letra) VALUES (2,'A');
INSERT INTO turma (ano,letra) VALUES (2,'B');
INSERT INTO turma (ano,letra) VALUES (2,'C');
INSERT INTO turma (ano,letra) VALUES (3,'A');
INSERT INTO turma (ano,letra) VALUES (3,'B');
INSERT INTO turma (ano,letra) VALUES (3,'C');

SELECT * FROM turma;

TRUNCATE turma;

delete from turma;

ALTER TABLE turma ADD CONSTRAINT ano_letra UNIQUE(ano,letra);

INSERT INTO aluno(nome,data_nascimento, endereco,ano_letivo,id_turma) 
VALUES('JOAO DA SILVA','2020-02-10','Rua zero, 282 - 6537-828',2026, 8);

INSERT INTO aluno(nome,data_nascimento, endereco,ano_letivo,id_turma) 
VALUES('MARIA DA SILVA','2020-05-22','Rua um, 123 - 9876-598',2026, 8);

INSERT INTO aluno(nome,data_nascimento, endereco,ano_letivo,id_turma) 
VALUES('JUREMA CASTRO','2020-09-20','Rua dois, 456 - 6537-974',2026, 8);

INSERT INTO aluno(nome,data_nascimento, endereco,ano_letivo,id_turma) 
VALUES('MARCOS SOUZA','2020-05-05','Rua tres, 789 - 9856-593',2026, 8);

INSERT INTO aluno(nome,data_nascimento, endereco,ano_letivo,id_turma) 
VALUES('ALICE BRAGA','2020-09-23','Rua quatro, 741 - 7453-946',2026, 8);

UPDATE aluno SET nome = 'MARCOS SONSO' WHERE id_aluno = 5;

INSERT INTO professor (nome) VALUES ('FELIPE SILVA');
INSERT INTO professor (nome) VALUES ('GABRIEL CASTRO');
INSERT INTO professor (nome) VALUES ('JULIO COCIELO');
INSERT INTO professor (nome) VALUES ('MARCOS ANDRADE');
INSERT INTO professor (nome) VALUES ('CESAR BARONI');

INSERT INTO responsavel (nome, telefone, celular, email) 
VALUES ('GREGORIO BRAGA', '55 98888-8888', '55 98888-8786', 'gregoriobraga@email.com');

INSERT INTO responsavel  (nome, telefone, celular, email) 
VALUES ('BERNARDO SOUZA', '55 98888-8555', '55 98888-8314', 'bernardo@email.com');

INSERT INTO responsavel (nome, telefone, celular, email) 
VALUES ('GETULIO CASTRO', '55 98888-9853', '55 98759-8314', 'getulio@email.com');

INSERT INTO responsavel (nome, telefone, celular, email) 
VALUES ('JOANA DA SILVA', '55 98328-8555', '55 98888-8314', 'bernardo@email.com');

INSERT INTO responsavel (nome, telefone, celular, email) 
VALUES ('JESSICA DA SILVA', '55 98888-9853', '55 98759-8314', 'getulio@email.com');


INSERT INTO aluno_responsavel (id_aluno, id_responsavel) VALUES (2,5);
INSERT INTO aluno_responsavel (id_aluno, id_responsavel) VALUES (3,4);
INSERT INTO aluno_responsavel (id_aluno, id_responsavel) VALUES (4,3);
INSERT INTO aluno_responsavel (id_aluno, id_responsavel) VALUES (5,2);
INSERT INTO aluno_responsavel (id_aluno, id_responsavel) VALUES (6,1);

SELECT * FROM aluno 
JOIN aluno_responsavel USING(id_aluno)
JOIN responsavel USING(id_responsavel);

INSERT professor_disciplina_turma(id_professor, id_disciplina, id_turma) 
VALUES (3,1,8);

SELECT * FROM disciplina 
JOIN professor_disciplina_turma USING(id_disciplina)
JOIN professor USING(id_professor)
JOIN turma USING(id_turma);