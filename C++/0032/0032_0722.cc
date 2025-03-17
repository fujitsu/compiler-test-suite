#include <iostream>
using namespace std;

struct B {
	int b;
	B() { b=10; }
	~B() { b=0; }
};

struct D : public B {
	int d;
	D() { d=20; }
	~D() { d=0; }
};

D d;

void f() noexcept(false) {
		throw d;
}
int main() {
	try{
		f();
	}
	catch(D x){
		cout << "D catched" << endl;
		cout << x.d << endl;
	}
	catch(B x){
		cout << "B catched" << endl;
		cout << x.b << endl;
	}
}
