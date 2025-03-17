#include <iostream>
using namespace std;

struct S {
	S()throw(){
		cout << "S::S() called" << endl;
	}
	~S()throw(){
		cout << "S::~S() called" << endl;
	}
};
int main(){
	S s;
}
