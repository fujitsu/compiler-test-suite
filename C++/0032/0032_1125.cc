#include <iostream>
using namespace std;

int func(){
	try{
		throw 10;
	}
	catch(int x){
		return x;
	}
}
int main(){
	cout << func() << endl;
}
