#include <iostream>
using namespace std;

template <class T>
struct S {
	int i;
	int func1(volatile T x) noexcept(false) {
		i = 1;
		throw x;
		return i;
	}
	int func2(const T x) noexcept(false) {
		i = 2;
		throw x;
		return i;
	}
	int func3(const volatile T x) noexcept(false) {
		i = 3;
		throw x;
		return i;
	}
};
int main(){
	int i = 1;
	char c = 'a';
	char* cp = &c;
	S<int> si;
	try{ si.func1(i); }
	catch(int x){ cout << x << endl; }
	try{ si.func2(++i); }
	catch(int x){ cout << x << endl; }
	try{ si.func3(++i); }
	catch(int x){ cout << x << endl; }
	S<char*> scp;
	try{ scp.func1(cp); }
	catch(char* x){ cout << *x << endl;}
	try{ scp.func2(cp); }
	catch(char* x){ cout << *x << endl;}
	try{ scp.func3(cp); }
	catch(char* x){ cout << *x << endl;}
}
