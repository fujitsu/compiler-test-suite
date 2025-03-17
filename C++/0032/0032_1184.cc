#include <iostream>

using namespace std;

static union {
	int i;
	volatile long long l;
} ;
int main(){
	union {
		int i;
		long long l;
	} ;
	l = 20;
	try{
		throw l;
	}
	catch(volatile long long x){
		cout << x << endl;
	}
}
