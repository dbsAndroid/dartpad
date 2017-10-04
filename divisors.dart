List divisors = [];
int divSum = 0;

void main() { 
  for (int s = 1; s <= 100; s++){
     print('\ndivisors of ' + s.toString() + ' are:');
  	for (int i = 1; i <= s / 2; i++) {
    	if (s % i == 0) {
      print(i.toString());
      divisors.add(i);
    	}
  	}
  divisors.add(s);
  print(s);
  print(divisors);
  int divLength = (divisors.length);
  print('length of divisors is now ' + divLength.toString());

  for (final x in divisors) {
    divSum += x;
  }
  print('sum of divisors is now ' + divSum.toString());
  print('sum of divisors (excluding number itself) is now ' +
      (divSum - s).toString());
  divSum = 0;
  divisors = [];
  
  }
}
