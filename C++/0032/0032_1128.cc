#include <iostream>
#include <stdio.h>
using namespace std;

struct S {
	int i;
#if __GSP__
	S() { printf("S::S() called\n"); i = 100; }
	~S() { printf("~S::S() called\n"); i = 0; }
#else
	S() { cout << "S::S() called" << endl; i = 100; }
	~S() { cout << "~S::S() called" << endl; i = 0; }
#endif
};

S x;

S func1(){
	cout << "func1() start" << endl;
	try{
		throw x;
	}
	catch(S y){
		return y;
	}
}

S func2(){
	cout << "func2() start" << endl;
	try{
		throw x;
	}
	catch(S y){
		return func1();
	}
}
int main(){
	cout << (func2()).i << endl;
}
