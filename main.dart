// 3) Создайте функцию, которая принимает массив строк и
// возвращает массив, отсортированный от самого короткого к
// самому длинному.

// Пример:
// sortByLength(["Google", "Apple", "Microsoft"])
// ➞ ["Apple", "Google", "Microsoft"]
// sortByLength(["Leonardo", "Michelangelo", "Raphael", "Donatello"])
// ➞ ["Raphael", "Leonardo", "Donatello", "Michelangelo"]
// sortByLength(["Turing", "Einstein", "Jung"])
// ➞ ["Jung", "Turing", "Einstein"]

// Примечание:
// Длина строк в массиве должны отличаться

void main() {
  List<String> arrayOfString = ["Turing", "Einstein", "Jung"];
  var sortedArray = sortByLength(arrayOfString);
  print(sortedArray);
}

sortByLength(arrayToSort) {
  var arrayLnegth = arrayToSort.length;
  var sortedArray = [];
  while (sortedArray.length < arrayLnegth) {
    var bigestLength = "";
    for (int i = 0; i < arrayToSort.length; i++) {
      if (arrayToSort[i].length > bigestLength.length) {
        bigestLength = arrayToSort[i];
      }
    }
    sortedArray.insert(0, bigestLength);
    arrayToSort.remove(bigestLength);
  }
  return sortedArray;
}
