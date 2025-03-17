#include <iostream>
using namespace std;


inline void func(){
	try{
		throw 10;
	}
	catch(int){
		cout << "int catched" << endl;
	}
}
int main(){
	func();
}
