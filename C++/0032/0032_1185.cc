#include <iostream>
using namespace std;

class A {
public:
     struct {
          int i;
          friend void f();
     } m;
};

A a;

void f(){
	a.m.i = 20;
}
int main(){
	a.m.i = 10;
	try{
		throw a.m.i;
	}
	catch(int& x){
		cout << "int catched" << endl;
		f();
		cout << x << endl;
	}
}
