#include <stdio.h>

int i=0;
double d[5] = { 1.0, 2.0, 3.0, 4.0, 5.0 };
double r;
int main()
{
	double *p=&d[1];
	double *q=&r;

        if( i == 0 ) {
          *q=*p;
        }
        else {
          *q=*p;
        }

        if( r == 2.0 ) {
           puts(" OK ");
        }
        else { 
           puts(" NG ");
        }
}
