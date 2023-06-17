class Product {
  final String? id;
  final String? name;
  final String? mail;
  final String? password;

  Product(
      { this.id, this.name,this.mail, this.password});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'mail': mail,
      'password': password,
    };
  }

  Product.fromFirestore(Map<String, dynamic> firestore)
      : id = firestore['id'],
        name = firestore['name'],
        mail = firestore['mail'],
        password = firestore['password'];
}