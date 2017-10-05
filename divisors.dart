/**
 * “You are in a hotel and you forgot what room number you are in. You remember that the sum
 *  of its divisors (excluding the number itself) is greater than the number, yet there is
 *  no subset of those divisors that add up to the number itself. There are 100 rooms. What
 * is your room number?"
 */

import 'dart:convert';     //needed later?

List divisors = [];
List divRange = [];
int divSum = 0;
int divSumEx = 0;
int s = 1;
int t = 0;
Map divRangeMap = new Map();

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
  int divSumEx = divSum - s;
  print('sum of divisors is now ' + divSum.toString());
  print('sum of divisors (excluding number itself) is now ' +
      (divSum - s).toString());

  if (divSumEx > s) {
    t += 1;
    //for (final y in divisors) {
     // divRangeMap.addAll(K, V);
      //divRangeMap.putIfAbsent(divisors.insert(s, element), ifAbsent)
    //}
  }
  print('divisors are now: ' + divisors.toString());
  print('divisorsRange are now: ' + divRange.toString());

     //print('t, the number of divSumEx > s = '+t.toString());
  divSum = 0;
  divisors = [];
  }

  //outside loop
  print('\nt, the number of divSumEx > s = '+t.toString());
}
