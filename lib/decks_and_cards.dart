
makeMyDeck() {
    var myDeck = Deck();

    myDeck.shuffle();

    var naipe = "Espadas";
    var cardsComNaipe = myDeck.cardsWithNaipe(naipe);
    print("Cartas com naipe $naipe $cardsComNaipe");

    List<Card> dealt = myDeck.deal(4);

    print("Cartas dadas ${dealt.length} $dealt");

    List<Card> remain = myDeck.cards;

    print("Cartas restantes ${remain.length} $remain");

    myDeck.removeCard(naipe, "Dois");

    print(myDeck);
}

class Card {
    String naipe;
    String valor;

    Card({this.naipe, this.valor});

    toString() {
        return "$valor de $naipe";
    }
}

class Deck {
    List<Card> cards = [];

    Deck() {
        var naipes = ["Copas", "Espadas", "Paus", "Ouros"];
        var valores = [
            "Ás",
            "Dois",
            "Três",
            "Quatro",
            "Cinco",
            "Seis",
            "Sete",
            "Oito",
            "Nove",
            "Dez",
            "Rei",
            "Dama",
            "Valete"
        ];

        for (int i = 0; i < naipes.length; i++) {
            for (int j = 0; j < valores.length; j++) {
                cards.add(Card(naipe: naipes[i], valor: valores[j]));
            }
        }

        print("size= ${cards.length} $cards");
    }

    shuffle() => cards.shuffle();

    cardsWithNaipe(String searchNaipe) =>
        cards.where((card) => card.naipe == searchNaipe);

    deal(int handSize) {
        var hand = cards.sublist(0, handSize);
        cards = cards.sublist(handSize);
        return hand;
    }

    removeCard(String naipe, String valor) {
        return cards.removeWhere((Card card) {
            return card.naipe == naipe && card.valor == valor;
        });
    }

    String toString() => cards.toString();
}
