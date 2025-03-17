#include <iostream>
using namespace std;

struct A { int a; A(); A(A&); ~A(); };
struct B {
	A a;
	B();
	~B();
};
A::A() {cout << "A::A() called" << endl;}
A::A(A&) {cout << "A::A(A&) called" << endl;}
A::~A() {cout << "A::~A() called" << endl;}
B::B() {cout << "B::B() called" << endl;}
B::~B() {cout << "B::~B() called" << endl;}
int main(){
	try{
		B b;
		throw b;
	}
	catch(B x){
		cout << "start catch handler" << endl;
	}
}
