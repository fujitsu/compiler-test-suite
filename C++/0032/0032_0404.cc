#include <stdio.h>
struct FLOAT {
  FLOAT() { printf("FLOAT()\n"); }
  FLOAT(float f) { printf("FLOAT(float)\n"); }
  ~FLOAT() { printf("~FLOAT()\n"); }
};
#define float FLOAT

int rethrow(void)
{
	int r = 98;

	try {
		throw;		
	}
	catch ( float ) {
		r = 20;
		printf("aaaa\n");
	}
	catch ( ... ) {
		r = 99;
	}
		printf("bbbb\n");
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
	}

}
