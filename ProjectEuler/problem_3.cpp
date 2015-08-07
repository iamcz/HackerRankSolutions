using namespace std;
#include <vector>
#include <string>
#include <iostream>
#include <math.h>

long long int largestPrimeFactor (long long int num) {
	long long int currentLargestFactor = 2;
	long long int factor, sqrtNum;

	while (num > 1) {
    sqrtNum = sqrt(num);

		for (factor = currentLargestFactor; factor <= sqrtNum; factor++) {
			if (num % factor == 0) {
				currentLargestFactor = factor;
				num /= factor;
				break;
      } 
		}

    if (factor > sqrtNum) {
      currentLargestFactor = num;
      num = 1;
    }
	}

	return currentLargestFactor;
}

void run () {
	string input;
	int numTests;
	long long int num;

	cin >> numTests;

	for (int i = 0; i < numTests; i++) {
		cin >> num;

		cout << largestPrimeFactor(num) << endl;
	}

	return;
}

int main() {
	run();
	
	return 0;
}

