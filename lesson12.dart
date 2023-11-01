import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // task1();
task2();
  // task3();
}

//   1) Написать функцию рандомного поиска. (Пользователь загадывает число,
//   программа выдает ему число от 0 до 100 рандомным образом и так до тех,
//   пор пока пользователь не скажет, что число верно. Алгоритм работы схож с бинарным поиском).
task1() {
  stdout.write('Загадайте число: ');
  int userNum = int.parse(stdin.readLineSync()!);
  String answer = '';
  int count = 0;
  int max = 100;
  int min = 0;
  while (answer != 'yes') {
    count++;
    int random = min + Random().nextInt(max - min);
    stdout.write('$count Ваше число: $random? ');
    String answer = stdin.readLineSync()!;
    if (answer == '+') {
      min = random + 1;
    } else {
      max = random;
    }
    if (answer == 'yes') {
      print('Ваше число: $random');
      break;
    }
  }
}

// 2) Написать две дополнительные функции для проверки количества шагов,
// за которое компьютер угадал число. Компьютер играет сам с собой и возвращает количество шагов.
int task2() {
  stdout.write('Загадайте число: ');
  int userNum = int.parse(stdin.readLineSync()!);
  String answer = '';
  int count = 0;
  int max = 100;
  int min = 0;
  while (answer == 'yes') {
    count++;
    int random =min + Random().nextInt(max-min);
    stdout.write('$count Ваше число: $random? ');
    String answer = stdin.readLineSync()!;
    if (answer == 'yes') {
      print('Число которое вы загадали: $random');
      print('Вы угадали с $count попытки');
      break;
    }
    else if(answer == '+'){
      min = random + 1;
    }
    else{
      max = random;
    }
  }
  return count;
}

//  3) Сгенерируйте массив из 100 или более случайных чисел и по очереди прогоните
//   его через каждый алгоритм угадывания. Определите среднее количество шагов,
//   которое потребовалось каждому алгоритму на одно число. Протестируйте,
//  какой из способов угадывания эффективнее. Лучший алгоритм тот, который угадал быстрее.

