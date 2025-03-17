#include <iostream>
using namespace std;

struct V {int v; V(); V(V&); ~V(); };
struct A : virtual public V {int a; A(); ~A(); };
struct B : virtual public V {int b; B(); ~B(); };
struct C : public A, public B {int c; C(); ~C(); };
V::V(){cout << "V::V() called" << endl; v=1;}
V::V(V& x){cout << "V::V(V&) called" << endl; v=x.v;}
V::~V(){cout << "V::~V() called" << endl; v=0;}
A::A(){cout << "A::A() called" << endl; a=2;}
A::~A(){cout << "A::~A() called" << endl; a=0;}
B::B(){cout << "B::B() called" << endl; b=3;}
B::~B(){cout << "B::~B() called" << endl; b=0;}
C::C(){cout << "C::C() called" << endl; c=4;}
C::~C(){cout << "C::~C() called" << endl; c=0;}
int main(){
	int i = 0;
	switch(i){
	case 0:
		i++;
	case 1:
		try{
			A a;
			throw a;
		}
		catch(A x){
			cout << x.v << endl;
			if(i==1) break;
		}
	}
}
