#include <iostream>
using namespace std;

struct S {
	int s;
};
int main(){
	S s;
	s.s = 10;
	try{
		throw s;
	}
	catch(S x){
		cout << x.s << endl;
	}
}
