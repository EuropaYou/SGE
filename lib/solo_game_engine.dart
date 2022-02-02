import 'dart:math';

//TODO Rendering Engine

class Table {
  generateTable(width, height, content) {
    List table = [];
    for (var h = 1; h <= height; h++) {
      table.add(content);
      for (var w = 1; w <= width; w++) {
        table.add(content);
      }
    }
    return table;
  }

  updateTable(int position, List table, content) {
    table[position] = content;
    return table;
  }
}

class Player {
  createPlayer() {}
}

class Cards {
  generateCards(int numberOfCards, List cards, List numbers) {
    final List _cards = [];
    for (var i = 0; i < numberOfCards; i++) {
      _cards.add(
          "${cards[Random().nextInt(cards.length)]} ${numbers[Random().nextInt(numbers.length)]}");
    }
    return cards;
  }

  generateCardInMiddle(List cards, List numbers) {
    return generateCards(1, cards, numbers);
  }

  isSpecialCard(card) {
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
}

class SliderPuzzleGame {
  generateNumber() {
    return 2;
  }

  mergeNumbers(numberf, numbers) {
    if (canMerged(numberf, numbers)) {
      return numberf + numbers;
    } else {
      return null;
    }
  }

  canMerged(numberf, numbers) {
    if (numberf == numbers) {
      return true;
    } else {
      return false;
    }
  }
}

class Tycoon {}
