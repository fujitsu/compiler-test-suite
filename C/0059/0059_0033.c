
#include<stdio.h>
#include <stdbool.h>
#include <complex.h>

union convert {
  unsigned char a;
  short int b;
  unsigned short int c;
  unsigned int d; 
  long int e;
  unsigned long int f;
  float g;
  bool i;
  long long int j;
  unsigned long long int k;
  signed char l;
  _Bool m; };
union convert u;

unsigned char aa;
short int bb;
unsigned short int cc;
unsigned int dd;
long int ee;
unsigned long int ff;
float gg;
bool ii;
long long int jj;
unsigned long long int kk;
signed char ll;
_Bool mm;

#define check(a,b,c) if (b!=u.a) printf("ng%d\n",c); else  printf("ok%d\n",c);


int main(void)
{
    aa = 1;
    bb = 2;
    cc = 3;
    dd = 4;
    ee = 5;
    ff = 6;
    gg = 0.00;
    ii = true;
    jj = 10;
    kk = 11;
    ll = 'C';
    mm = 1;
    
	u = (union convert)aa; check(a,aa,1);
	u = (union convert)bb; check(b,bb,2);
	u = (union convert)cc; check(c,cc,3);
	u = (union convert)dd; check(d,dd,4);
	u = (union convert)ee; check(e,ee,5);
	u = (union convert)ff; check(f,ff,6);
	u = (union convert)gg; check(g,gg,7);
	u = (union convert)ii; check(i,ii,8);
	u = (union convert)jj; check(j,jj,9);
	u = (union convert)kk; check(k,kk,10);
	u = (union convert)ll; check(l,ll,11);
	u = (union convert)mm; check(m,mm,12);

	return 0;

}
