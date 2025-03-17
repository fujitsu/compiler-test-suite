#include <iostream>
using namespace std;

struct V {int v; V(); ~V(); };
struct A : public V {int a; A(); ~A(); };
struct B : public V {int b; B(); ~B(); };
struct C : public A, public B {int c; C(); ~C(); };
V::V(){cout << "V::V() called" << endl; v=1;}
V::~V(){cout << "V::~V() called" << endl; v=0;}
A::A(){cout << "A::A() called" << endl; a=2;}
A::~A(){cout << "A::~A() called" << endl; a=0;}
B::B(){cout << "B::B() called" << endl; b=3;}
B::~B(){cout << "B::~B() called" << endl; b=0;}
C::C(){cout << "C::C() called" << endl; c=4;}
C::~C(){cout << "C::~C() called" << endl; c=0;}
int main(){
	try{
		C* c= new C();
		throw c;
	}
	catch(C* x){
		cout << x->b << endl;
	}
}
