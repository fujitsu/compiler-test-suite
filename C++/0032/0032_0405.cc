#include <exception>
using namespace std;
#include <stdio.h>
#include <unistd.h>

int c_count, d_count;		

class E {
public:
	E();
	~E() { ++ d_count; }
};

E::E()
{
	if ( c_count == 3 )
		throw 'a';
	++ c_count;
}

int main(void)
{
	try {
		E e[5];
	}
	catch (char) {
		if (c_count != d_count) {
			printf ( "%d E constructor calls, %d "
				"destructor calls.\n", c_count, d_count);
		}else { 
		  printf("OK c_count=%d d_count=%d\n", c_count, d_count); 
		}
	}
	catch (...) {
		printf ( "Throw caught by wrong handler.\n");
	}
}
