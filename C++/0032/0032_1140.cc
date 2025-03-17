#include <iostream>
using namespace std;

template<class T> T func(volatile T a) noexcept(false){
	throw a;
	return a;
}
int main(){
	int i = 1;
	char c = 'a';
	short s =2;
	long l = 3;
	float f = 4.0;
	double d = 5.0;
	char* cp = &c;
	try{ func(i);}
	catch(int x){ cout << x << endl; }
	catch(char x){ cout << x << endl; }
	catch(short x){ cout << x << endl; }
	catch(long x){ cout << x << endl; }
	catch(float x){ cout << x << endl; }
	catch(double x){ cout << x << endl; }
	catch(char* x){ cout << x << endl; }
	try{ func(c);}
	catch(int x){ cout << x << endl; }
	catch(char x){ cout << x << endl; }
	catch(short x){ cout << x << endl; }
	catch(long x){ cout << x << endl; }
	catch(float x){ cout << x << endl; }
	catch(double x){ cout << x << endl; }
	catch(char* x){ cout << x << endl; }
	try{ func(s);}
	catch(int x){ cout << x << endl; }
	catch(char x){ cout << x << endl; }
	catch(short x){ cout << x << endl; }
	catch(long x){ cout << x << endl; }
	catch(float x){ cout << x << endl; }
	catch(double x){ cout << x << endl; }
	catch(char* x){ cout << x << endl; }
	try{ func(l);}
	catch(int x){ cout << x << endl; }
	catch(char x){ cout << x << endl; }
	catch(short x){ cout << x << endl; }
	catch(long x){ cout << x << endl; }
	catch(float x){ cout << x << endl; }
	catch(double x){ cout << x << endl; }
	catch(char* x){ cout << x << endl; }
	try{ func(f);}
	catch(int x){ cout << x << endl; }
	catch(char x){ cout << x << endl; }
	catch(short x){ cout << x << endl; }
	catch(long x){ cout << x << endl; }
	catch(float x){ cout << x << endl; }
	catch(double x){ cout << x << endl; }
	catch(char* x){ cout << x << endl; }
	try{ func(d);}
	catch(int x){ cout << x << endl; }
	catch(char x){ cout << x << endl; }
	catch(short x){ cout << x << endl; }
	catch(long x){ cout << x << endl; }
	catch(float x){ cout << x << endl; }
	catch(double x){ cout << x << endl; }
	catch(char* x){ cout << x << endl; }
	try{ func(cp);}
	catch(int x){ cout << x << endl; }
	catch(char x){ cout << x << endl; }
	catch(short x){ cout << x << endl; }
	catch(long x){ cout << x << endl; }
	catch(float x){ cout << x << endl; }
	catch(double x){ cout << x << endl; }
	catch(char* x){ cout << *x << endl; }
}
