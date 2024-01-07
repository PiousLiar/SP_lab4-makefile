#include <iostream>
#include "calculator.h"
using namespace std;

int main() 
{
	Calculator calculator;
	double a = 11.2;
	double b = 8.7;
	
	cout << "Addition: " << a << " + " << b << " = " << calculator.Add(a, b) << endl;
	cout << "Substraction: " << a << " - " << b << " = " << calculator.Sub(a, b) << endl;
	return 0;
}
