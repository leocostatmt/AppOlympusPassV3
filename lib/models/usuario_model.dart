import 'dart:convert';
import 'dart:typed_data';

class UserModel {
  dynamic id;
  dynamic nomeCompleto;
  dynamic dataNasc;
  dynamic telefone;
  dynamic email;
  dynamic senha;
  dynamic nivelAcesso;
  dynamic foto;
  dynamic statusUsuario;
  dynamic idPlano;

  UserModel(
      {var id,
      var nomeCompleto,
      var dataNasc,
      var telefone,
      var email,
      var senha,
      var nivelAcesso,
      var foto,
      var statusUsuario,
      var idPlano});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nomeCompleto': nomeCompleto,
      'dataNasc': dataNasc,
      'telefone': telefone,
      'email': email,
      'senha': senha,
      'nivelAcesso': nivelAcesso,
      'foto': foto,
      'statusUsuario': statusUsuario,
      'idPlano': idPlano,
    };
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromMap(Map<dynamic, dynamic> map) {
    return UserModel(
      id: map['id'],
      nomeCompleto: map['nomeCompleto'],
      dataNasc: map['dataNasc'],
      telefone: map['telefone'],
      email: map['email'],
      senha: map['senha'],
      nivelAcesso: map['nivelAcesso'],
      foto: map['foto'],
      statusUsuario: map['statusUsuario'],
      idPlano: map['idPlano'],
    );
  }

  factory UserModel.fromJson(String json) =>
      UserModel.fromMap(jsonDecode(json));

  UserModel copyWith({
    int? id,
    String? nomeCompleto,
    DateTime? dataNasc,
    int? telefone,
    String? email,
    String? senha,
    String? nivelAcesso,
    ByteData? foto,
    String? statusUsuario,
    int? idPlano,
  }) {
    return UserModel(
      id: id ?? this.id,
      nomeCompleto: nomeCompleto ?? this.nomeCompleto,
      dataNasc: dataNasc ?? this.dataNasc,
      telefone: telefone ?? this.telefone,
      email: email ?? this.email,
      senha: senha ?? this.senha,
      nivelAcesso: nivelAcesso ?? this.nivelAcesso,
      foto: foto ?? this.foto,
      statusUsuario: statusUsuario ?? this.statusUsuario,
      idPlano: idPlano ?? this.idPlano,
    );
  }

  // factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(id: $id, nomeCompleto: $nomeCompleto, dataNasc: $dataNasc, telefone: $telefone, email: $email, senha: $senha, nivelAcesso: $nivelAcesso, foto: $foto , statusUsuario: $statusUsuario , idPlano: $idPlano)';
  }
}
