/**
 * “You are in a hotel and you forgot what room number you are in. You remember that the sum
 *  of its divisors (excluding the number itself) is greater than the number, yet there is
 *  no subset of those divisors that add up to the number itself. There are 100 rooms. What
 * is your room number?"
 *
 * To run this app: dart divisors.dart
 *
 * github link is 'https://github.com/dbsAndroid/dartpad/blob/master/divisors.dart'
 *
 * cf 'https://en.wikipedia.org/wiki/Divisor_function'
 * 2017/10/05
 */

List divisors = [];
List divRange = [];
int rooms = 100;
int divSum = 0;
int divSumEx = 0;
int s = 1;
int t = 0;
List sumExNums = [];
//Map divRangeMap = new Map();   //use later to find subsets of Lists and possible sums.

void main() { 
  for (int s = 1; s <= rooms; s++){
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

  //forEach
  for (final x in divisors) {
    divSum += x;
  }
  int divSumEx = divSum - s;
  print('sum of divisors is now ' + divSum.toString());
  print('sum of divisors (excluding number itself) is now ' +
      (divSum - s).toString());

  if (divSumEx > s) {
    t += 1;
    sumExNums.add(s);
    //create HashMap here to find subgroups of each array?
  }
  print('divisors are now: ' + divisors.toString());
  //print('divisorsRange are now: ' + divRange.toString());
  //print('t, the number of divSumEx > s = '+t.toString());

  //reset variables for another loop
  divSum = 0;
  divisors = [];
  }

  //outside  100 rooms loop
  print('\nt, the number of divSumEx(divisors sum) > s(loop number of 100 rooms) = '+t.toString());
  print('these numbers are:');
  print(sumExNums);
  print('the solution is, hopefully, one of these above numbers'
      '\nand ' + (rooms - t).toString() + '% of the field has been cleared.');
}

/**
 * Sample Output:
 * divisors of 100 are:
 *  1
 *  2
 *  4
 *  5
 *  10
 *  20
 *  25
 *  50
 *  100
 *  [1, 2, 4, 5, 10, 20, 25, 50, 100]
 *  length of divisors is now 9
 *  sum of divisors is now 217
 *  sum of divisors (excluding number itself) is now 117
 *  divisors are now: [1, 2, 4, 5, 10, 20, 25, 50, 100]
 *
 *  t, the number of divSumEx(divisors sum) > s(loop number of 100 rooms) = 22
 *  these numbers are:
 *  [12, 18, 20, 24, 30, 36, 40, 42, 48, 54, 56, 60, 66, 70, 72, 78, 80, 84, 88, 90, 96, 100]
 *  the solution is, hopefully, one of these above numbers
 *  and 78% of the field has been cleared.
 */