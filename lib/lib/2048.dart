// ignore_for_file: file_names
void main(List<String> args) {
  print(mergeNumbers(generateNumber(), generateNumber()));
}

int generateNumber() {
  return 2;
}

mergeNumbers(numberf, numbers) {
  if (canMerged(numberf, numbers)) {
    return numberf + numbers;
  } else {
    return null;
  }
}

bool canMerged(numberf, numbers) {
  if (numberf == numbers) {
    return true;
  } else {
    return false;
  }
}
