#include <iostream>
using namespace std;

struct V {
	int v; 
	V(){cout << "V::V() called" << endl; v=1;}
	~V(){cout << "V::~V() called" << endl; v=0;}
};
struct A : public V {
	int a; 
	A(){cout << "A::A() called" << endl; a=2;}
	~A(){cout << "A::~A() called" << endl; a=0;}
};
struct B : public V {
	int b; 
	B(){cout << "B::B() called" << endl; b=3;}
	~B(){cout << "B::~B() called" << endl; b=0;}
};
struct C : public A, public B {
	int c; 
	C(){cout << "C::C() called" << endl; c=4;}
	~C(){cout << "C::~C() called" << endl; c=0;}
};
int main(){
	try{
		C c;
		throw c;
	}
	catch(C x){
		cout << x.b << endl;
	}
}
