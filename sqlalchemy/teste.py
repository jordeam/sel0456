# pip install sqlalchemy datetime psycopg2
#

from datetime import datetime

from sqlalchemy import Column, DateTime, Integer, Text, create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
from sqlalchemy.engine import URL


url = URL.create(
    drivername="postgresql",
    username="jrm",
    host="127.0.0.1",
    password='x',  # psql teste: alter user jrm password 'x';
    database="teste"
)

engine = create_engine(url)

# define a conexão com o banco de dados
#engine = create_engine("sqlite:///:memory:")

# define a classe do modelo
Base = declarative_base()


class Empresa(Base):
    __tablename__ = "empresas"
    id = Column(Integer, primary_key=True)
    nome = Column(Text)


# cria as tabelas no banco de dados
Base.metadata.create_all(bind=engine)
# cria uma sessão com o banco de dados
Session = sessionmaker(bind=engine)
session = Session()

# cria um novo usuário
empresa = Empresa(nome="John Doe 2")
session.add(empresa)
session.commit()
# busca um usuário pelo id
emp = session.query(Empresa).get(1)
print(f'emp.nome={emp.nome}')
# atualiza o nome do usuário
emp.nome = "Jane Doe"
session.commit()

session.close()
