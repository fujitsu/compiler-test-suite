#include <iostream>
using namespace std;
int main(){
	int i = 0;
	try{
		throw i ? 10 : 20;
	}
	catch(int x){
		cout << x << endl;
	}
}
