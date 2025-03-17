#include <stdio.h>
int rethrow(void)
{
	int r = 98;

	try {
		throw;		
	}
	catch ( float ) {
		r = 20;
	}
	catch ( ... ) {
		r = 99;
	}
	return r;
}

int f00(void)
{
	int s;
	float f = 1.0 ;

	try {
		throw f;
	}
	catch ( float ) {
		s = rethrow() + 10;
	}
	return s;
}


int main(void)
{
	int ret = f00();

	if ( ret != 30 ) {
		printf ( "Rethrow failed.  ret is %d instead of %d.\n",
		ret, 30);
	} else
	  printf ("ok\n");

}
