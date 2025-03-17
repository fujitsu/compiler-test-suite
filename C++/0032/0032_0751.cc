#include <iostream>
using namespace std;

struct S {
	void func(){
		try{
			throw 10;
		}
		catch(int){
			cout << "int catched" << endl;
		}
	}
};
int main(){
	S s;
	s.func();
}
