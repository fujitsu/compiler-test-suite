#include <stdio.h>
template<class T> class tover
	{
public:
	T i;
	signed char c;
	long L;
	double d;
	tover<T> *po;

	tover<T> & operator =  (const tover<T> &b) { i = b.i + 2; return *this; };
	operator double() { return d + i; };

	tover() { d = L = i = c = (1); po = 0; }
	tover(int ii) { d = L = i = c = (ii); po = 0; }

	tover<T>   operator [] (const tover<T> &b) { return tover<T>( (i * 3) + b.i ); };

	};

int main(){
tover<int> i;
 printf("ok\n");
}

