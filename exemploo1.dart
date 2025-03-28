class Pessoa {
  String nome;
  int idade;
  String sexo;
  DateTime dataDeNascimento;

  Pessoa(this.nome, this.idade, this.sexo, this.dataDeNascimento) {
    // validação do nome
    if (this.nome.isEmpty) {
      throw Exception("Nome precisa ser preenchido");
    }
  }

  Pessoa.semDataDeNascimento(this.nome, this.idade, this.sexo) :
  dataDeNascimento = DateTime(DateTime.now().year - idade) {
  }

  void apresentar() {
    print("Olá, meu nome é ${this.nome} e eu tenho ${this.idade} anos");
  }
}

void main() {
   var pessoa = new Pessoa("Igor", 26, "Masculino", DateTime(1995));
  pessoa.apresentar();
}
 