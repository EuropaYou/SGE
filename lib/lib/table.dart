void main(List<String> args) {
  print(updateTable(1, 2, generateTable(3, 3, "X"), 9));
}

List generateTable(width, height, content) {
  List table = [];
  for (var h = 1; h <= height; h++) {
    table.add(content);
    for (var w = 1; w <= width; w++) {
      table.add(content);
    }
  }
  return table;
}

List updateTable(int width, int height, List table, content) {
  table[width + height] = content;
  return table;
}
