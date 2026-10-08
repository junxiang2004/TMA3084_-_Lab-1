import 'dart:io';
void main() {

  num total= 0;
do {

  print("Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD\n");

  print("Please enter your pizza size (small, medium, or large):\n");
  String? pz = stdin.readLineSync();

  pz=pz?.toLowerCase();

  while(pz!='small'&&pz!='medium'&&pz!='large'){
    print("please enter the size of ur pizza!\n");
    print("Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD\n");
    pz = stdin.readLineSync()?.toLowerCase();
  }

  print("How many pizzas do you want of pizza_size?\n");
  int pm = int.parse(stdin.readLineSync()!);

  switch(pz){
    case'small':
    total= 5*pm;
    break;
    case'medium':
    total= 7 *pm;
    break;
    case 'large':
    total = 10*pm;
    default:;
  }

  print("Your total order of pizza is $pm with $pz and the total payment will be RM: $total\n");
  
  print("Do you wanna make another order? (Y/N)");
    String sr = stdin.readLineSync()?.toUpperCase() ?? 'N';

    if (sr != 'Y') {
      break;
    }

  } while (true);
}
