#include <iostream>
using namespace std;

struct S {
	S(){
		try{
			throw 10;
		}
		catch(int){
			cout << "int catched" << endl;
		}
	}
	~S(){
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
}
