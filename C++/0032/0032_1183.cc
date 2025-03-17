#include <iostream>

using namespace std;

static union {
	int i;
	volatile long long l;
} ;
int main(){
	l = 10;
	try{
		throw l;
	}
	catch(long long x){
		cout << x << endl;
	}
}
