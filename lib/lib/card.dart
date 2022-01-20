// ignore_for_file: avoid_print, non_constant_identifier_names
import 'dart:math';

void main(List<String> args) {
  const prefixCard = ["red", "green", "blue", "yellow"];
  const prefixNumber = [
    "0",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "draw two",
    "skip",
    "reverse"
  ];
  //const rareCards = ["Wild Card", "Wild Draw 4 Card"];
  print(generateCards(10, prefixCard, prefixNumber));
  print(generateCardInMiddle(
      prefixCard, ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]));
}

/// Generates cards for the game.
List generateCards(int numberOfCards, List cards, List numbers) {
  final List Cards = [];
  for (var i = 0; i < numberOfCards; i++) {
    Cards.add(
        "${cards[Random().nextInt(cards.length)]} ${numbers[Random().nextInt(numbers.length)]}");
  }
  return Cards;
}

/// Generates card in the middle.
List generateCardInMiddle(List cards, List numbers) {
  return generateCards(1, cards, numbers);
}

bool isSpecialCard(card) {
  if (card.contains('draw two') ||
      card.contains('skip') ||
      card.contains('reverse')) {
    return true;
  } else {
    return false;
  }
}

drawNumberOfCards(int numberOfCards, List cards, List numbers) {
  return generateCards(numberOfCards, cards, numbers);
}
