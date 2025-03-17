#include <iostream>
using namespace std;

void f(char) { cout << "f(char) called" << endl; }
void f(signed char) { cout << "f(signed char) called" << endl; }
void f(unsigned char) { cout << "f(unsigned char) called" << endl; }
int main(){
	signed char sc = 10;
	unsigned char uc = 20;
	f('a');
	f(sc);
	f(uc);
}
