#include <exception>
using namespace std;
#include <stdlib.h>
#include <stdio.h>

void f00(void)
{
	int r = 0;

	throw 'a';

	try {
		printf ( "Throw was ignored.\n");
		
	}
	catch(...) {
		printf ( "Outside throw caught in try-block's "
			"handler.\n");
		
	}
}

void t00(void)
{
        puts("ok");
	exit ( (1) );
}


int main(void)
{
	set_terminate(&t00);

	f00();


}
