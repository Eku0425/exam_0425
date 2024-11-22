class ModalClass {
  String? name, Category;
  int? Quantity;
  ModalClass(this.name, this.Category, this.Quantity);
  factory ModalClass.fromMap(Map m1) {
    return ModalClass(m1['name'], m1['Category'], m1['Quantity']);
  }
}
