#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#define SIZE 100
#define PI 3.14159
double a[SIZE], b[SIZE], c[SIZE], d[SIZE][SIZE] ;
void testsin()
{
	int i ;
	for (i=0 ; i<SIZE ; i++)
	{
		b[i] = (double)i / (double)(SIZE) * PI * 2.0 ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		a[i] = sin(b[i]) ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		printf ( "sin(%f) = %f\n", b[i], a[i]) ;
	}
}
void testcos()
{
	int i ;
	for (i=0 ; i<SIZE ; i++)
	{
		b[i] = (double)i / (double)(SIZE) * PI * 2.0 ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		a[i] = cos(b[i]) ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		printf ( "cos(%f) = %f\n", b[i], a[i]) ;
	}
}
void testtan()
{
	int i ;
	for (i=1 ; i<SIZE ; i++)
	{
		b[i] = (double)i / (double)(SIZE) * PI * PI;
	}
	for (i=1 ; i<SIZE ; i++)
	{
		a[i] = tan(b[i]) ;
	}
	for (i=1 ; i<SIZE ; i++)
	{
		printf ( "tan(%f) = %f\n", b[i], a[i]) ;
	}
}
void testasin()
{
	int i ;
	for (i=0 ; i<SIZE ; i++)
	{
		b[i] = (double)i / (double)(SIZE) * 2.0 - 1.0 ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		a[i] = asin(b[i]) ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		printf ( "asin(%f) = %f\n", b[i], a[i]) ;
	}
}
void testacos()
{
	int i ;
	for (i=0 ; i<SIZE ; i++)
	{
		b[i] = (double)i / (double)(SIZE) * 2.0 - 1.0 ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		a[i] = acos(b[i]) ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		printf ( "acos(%f) = %f\n", b[i], a[i]) ;
	}
}
void testatan()
{
	int i ;
	for (i=0 ; i<SIZE ; i++)
	{
		b[i] = (double)i / (double)(SIZE) - (double)SIZE / 2.0 ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		a[i] = atan(b[i]) ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		printf ( "atan(%f) = %f\n", b[i], a[i]) ;
	}
}
void testatan2()
{
	int i,j ;
	for (i=0 ; i<SIZE ; i++)
	{
		b[i] = (double)i / (double)(SIZE) - (double)SIZE / 2.0 ;
		c[i] = (double)i / (double)(SIZE) + 1.0 ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		for (j=0 ; j<SIZE ; j++)
		{
			d[i][j] = atan2(b[i],c[j]) ;
		}
	}
	for (i=0 ; i<SIZE ; i++)
	{
		for (j=0 ; j<SIZE ; j++)
		{
			printf ( "atan2(%f,%f) = %f\n", b[i], c[j], d[i][j]) ;
		}
	}
}
void testsinh()
{
	int i ;
	for (i=0 ; i<SIZE ; i++)
	{
		b[i] = (double)i / (double)(SIZE) * PI * 2.0 ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		a[i] = sinh(b[i]) ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		printf ( "sinh(%f) = %f\n", b[i], a[i]) ;
	}
}
void testcosh()
{
	int i ;
	for (i=0 ; i<SIZE ; i++)
	{
		b[i] = (double)i / (double)(SIZE) * PI * 2.0 ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		a[i] = cosh(b[i]) ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		printf ( "cosh(%f) = %f\n", b[i], a[i]) ;
	}
}
void testtanh()
{
	int i ;
	for (i=0 ; i<SIZE ; i++)
	{
		b[i] = (double)i / (double)(SIZE) - (double)(SIZE)/2.0 ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		a[i] = tanh(b[i]) ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		printf ( "tanh(%f) = %f\n", b[i], a[i]) ;
	}
}
void testexp()
{
	int i ;
	for (i=0 ; i<SIZE ; i++)
	{
		b[i] = (double)i / (double)(SIZE) * 10.0 - 5.0 ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		a[i] = exp(b[i]) ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		printf ( "exp(%f) = %e\n", b[i], a[i]) ;
	}
}
void testlog()
{
	int i ;
	for (i=0 ; i<SIZE ; i++)
	{
		b[i] = (double)(i+1) ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		a[i] = log(b[i]) ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		printf ( "log(%f) = %e\n", b[i], a[i]) ;
	}
}
void testlog10()
{
	int i ;
	for (i=0 ; i<SIZE ; i++)
	{
		b[i] = (double)(i+1) ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		a[i] = log10(b[i]) ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		printf ( "log10(%f) = %e\n", b[i], a[i]) ;
	}
}
void testsqrt()
{
	int i ;
	for (i=0 ; i<SIZE ; i++)
	{
		b[i] = (double)(i) ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		a[i] = sqrt(b[i]) ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		printf ( "sqrt(%f) = %e\n", b[i], a[i]) ;
	}
}
void testpow()
{
	int i,j ;
	for (i=0 ; i<SIZE ; i++)
	{
		b[i] = (double)(i+1) / (double)(SIZE) * 5.0 ;
		c[i] = (double)(i+1) / (double)(SIZE) * 3.0 ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		for (j=0 ; j<SIZE ; j++)
		{
			d[i][j] = pow(b[i],c[j]) ;
		}
	}
	for (i=0 ; i<SIZE ; i++)
	{
		for (j=0 ; j<SIZE ; j++)
		{
			printf ( "pow(%f,%f) = %e\n", b[i], c[j], d[i][j]) ;
		}
	}
}
void testfmod()
{
	int i,j ;
	for (i=0 ; i<SIZE ; i++)
	{
		b[i] = (double)(i+1) * PI ;
		c[i] = (double)(i+1) / (double)(SIZE) * 3.7 ;
	}
	for (i=0 ; i<SIZE ; i++)
	{
		for (j=0 ; j<SIZE ; j++)
		{
			d[i][j] = fmod(b[i],c[j]) ;
		}
	}
	for (i=0 ; i<SIZE ; i++)
	{
		for (j=0 ; j<SIZE ; j++)
		{
			printf ( "fmod(%f,%f) = %f\n", b[i], c[j], d[i][j]) ;
		}
	}
}
int main()
{
	testsin() ;
	testcos() ;
	testtan() ;
	testasin() ;
	testacos() ;
	testatan() ;
	testatan2() ;
	testsinh() ;
	testcosh() ;
	testtanh() ;
	testexp() ;
	testlog() ;
	testlog10() ;
	testsqrt() ;
	testpow() ;
	testfmod() ;
	exit (0);
}
