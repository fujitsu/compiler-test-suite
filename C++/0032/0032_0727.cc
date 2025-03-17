#include <iostream>
using namespace std;

struct S {
	int s;
	S(){ s=10; }
};

void func(S x){
	cout << "func called" << endl;
	cout << x.s << endl;
}

void (*fp)(S) = func;

S a;
int main(){
	a.s = 20;
	try{
		throw (void *)fp;
	}
	catch(void* x){
		S a;
		(*(void (*)(S))x)(::a);
	}
	catch(...){
		cout << "ok" << endl;
	}
}
