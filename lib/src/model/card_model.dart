
class CardModel{
  String user;
  String cardNumber;
  String cardExpired;
  String cardType;
  int cardBackground;
  // String cardElementTop;
  // String cardElementBottom;

  CardModel(
    this.user, this.cardNumber, this.cardExpired, this.cardType, 
    this.cardBackground, 
    //this.cardElementTop, this.cardElementBottom
  );
}

List<CardModel> cards = cardData.map(
  (item) => CardModel(
    item['user']?.toString() ?? '',
    item['cardNumber']?.toString() ?? '', 
    item['cardExpired']?.toString() ?? '', 
    item['cardType']?.toString() ?? '', 
    int.tryParse(item['cardBackground']?.toString() ?? '') ?? 0
  ),
).toList();

var cardData = [
  {
    "user": "Renaldo Fareza Tambunan",
    "cardNumber": "**** **** **** 5642",
    "cardExpired": "21/24",
    "cardType": "assets/logo/master_card.png",
    "cardBackground": 0xFF1E1E99,
  },
  {
    "user": "Renaldo Fareza Tambunan",
    "cardNumber": "**** **** **** 9735",
    "cardExpired": "21/25",
    "cardType": "assets/logo/master_card.png",
    "cardBackground": 0xFFFF70A3,
  }
];