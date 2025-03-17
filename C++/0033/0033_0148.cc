#include <iostream>
using namespace std;


int work1=0,work2=0,work3=0;
void f(char) { work1=1; }
void f(signed char) { work2=1; }
void f(unsigned char) { work3=1; }
int main(){
	signed char sc = 10;
	unsigned char uc = 20;
#pragma omp parallel
	f('a');
#pragma omp parallel
	f(sc);
#pragma omp parallel
	f(uc);

	if( work1 == 1 && work2 == 1 && work3 == 1 )
	  {
	    cout << "f(char) called" << endl;
	    cout << "f(signed char) called" << endl;
	    cout << "f(unsigned char) called" << endl;
	  }
	else
	  cout << "ng" << endl;
}
