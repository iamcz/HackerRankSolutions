using namespace std;
#include <vector>
#include <string>
#include <iostream>

long long int largestPrimeFactor (long long num) {
	long long int currentLargestFactor = 2;
	long long int factor;

	while (num > 1) {

		for (factor = currentLargestFactor; factor <= num; factor++) {

			if (num % factor == 0) {
				currentLargestFactor = factor;
				num /= factor;
				break;
			}
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

