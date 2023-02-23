class Human{
  late int _Id;
  late String _Name;
  late String _numberPhone;
  late String _address;

  Human(this._Id, this._Name, this._numberPhone, this._address);

  String get address => _address;

  set address(String value) {
    _address = value;
  }

  String get numberPhone => _numberPhone;

  set numberPhone(String value) {
    _numberPhone = value;
  }

  String get Name => _Name;

  set Name(String value) {
    _Name = value;
  }

  int get Id => _Id;

  set Id(int value) {
    _Id = value;
  }

  @override
  String toString() {
    return 'Human{_Id: $_Id, _Name: $_Name, _numberPhone: $_numberPhone, _address: $_address}';
  }
}