#include <iostream>
using namespace std;

struct S {
	int i;
	S() { i = 100; }
};

S x;

S func1(){
	cout << "func1() start" << endl;
	try{
		throw x;
	}
	catch(S& y){
		return y;
	}
}

S func2(){
	cout << "func2() start" << endl;
	try{
		throw x;
	}
	catch(S& y){
		return func1();
	}
}
int main(){
	cout << (func2()).i << endl;
}
