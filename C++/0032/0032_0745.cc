#include <iostream>
using namespace std;

inline void func(){
	cout << "func called" << endl;
}
void (*fp)() = func;
int main(){
	try{
		throw (void *)fp;
	}
	catch(void (*x)()){
		(*x)();
	}
	catch(...){
		cout << "ok" << endl;
	}
}
