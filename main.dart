
void main(){

    const double tax             = 0.1; // 10% Tax
    double totalPrice            = 0;
    double priceAfterTax         = 0;

    Map<String, double> groceryItems = {
      /* 'Grocery Type'      : price in $ */ 
         'Milk'              : 10,
         'Bread'             : 5,
         'Eggs'              : 6, 
         'Chicken'           : 20,
         'Apples'            : 12,
    };

    // Calculate total price of grocery items
    for(double price in groceryItems.values){
      totalPrice += price; 
    };

    priceAfterTax = totalPrice + (totalPrice * tax);

    print('\nCheck Out');
    print('---------');
    groceryItems.forEach((key, value) => print('+${key.padRight(14)} = \$$value'));
    print('-----------------------');
    print('Total Price'.padRight(15) + ' = \$$totalPrice');
    print('+10%  Tax  '.padRight(15) + ' = \$${(totalPrice*tax).toStringAsFixed(2)}');
    print('-----------------------');
    print('Total Cost '.padRight(15) + ' = \$$priceAfterTax\n');
}
  //the method toStringAsFixed(x) Formats a double variable as a string & limits it to x decimal digits.
  //padRight(x) is a method for aligning the output string,
  //where x paddings are added before string concatenation.