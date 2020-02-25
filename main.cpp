#include<iostream>
#include<cctype>
#include<cstring>
#include "operators.h"
using namespace std;

int a, b;

int main(int argc, char** argv) {
	if(argc != 2) {
		cout << argv[0] << " needs num1<op>num2" << endl;
		return 0;
	}
	int i, l = strlen(argv[1]);
	char op;
	sscanf(argv[1], "%d%c%d", &a, &op, &b);
	if(op == '+') 
		cout << add() << endl;
	else if(op == '-') {
		b = -b;
		cout << add() << endl;
	}
	else if(op == '*') cout << mul() << endl;
	else cout << dvd() << endl;
	return 0;
}
