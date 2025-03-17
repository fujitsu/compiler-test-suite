
#include <iostream>
using namespace std;

struct X
	{
	int i;
	X(int ii) : i(ii) { }
	operator int() { cout << "ng X::opi()\n"; return i; }
	};

struct Y
	{
	int j;
	Y(int jj) : j(jj) { }
	operator int() { cout << "ng Y::opi()\n"; return j; }
	};

struct Z : X, Y
	{
	Z(int i) : X(i), Y(i) { cout << "ok\n"; };
	};

int main()
	{
	Z z = 0;
	return 0;
	}

