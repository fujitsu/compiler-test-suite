#include <iostream>
using namespace std;

struct S {
	int i;
	S() { i = 100; }
};

S x;
S y;

S& func(){
	try{
		throw x;
	}
	catch(S){
		return y;
	}
}
int main(){
	cout << (func()).i << endl;
}
