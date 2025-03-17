#include <iostream>
using namespace std;

int x = 10;
int main(){
	int x = 20;
	try{
		int x = 30;
		throw ::x;
	}
	catch(int x){
		cout << ::x << endl;
		cout << x << endl;
	}
}
