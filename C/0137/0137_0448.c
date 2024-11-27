#include <math.h>
#include <stdio.h>
#include <stdlib.h>

struct s1 {
		long x1 ;
		short y1 ;
		short y2 ;
	} *p1 ;
int main() {
long a,b,c=0;
long f1() ;
void v1() ;

printf(" ***** mreg0335 ***** \n") ;

a = 1 ;
b = f1(a) ;

p1 = (struct s1 *)malloc(sizeof(struct s1)) ;
p1->x1 = 1 ;
p1->y1 = 2 ;
p1->y2 = 3 ;

v1(c) ;

a = b + p1->x1 ;

c = f1(a) ;

a = c + p1->y1 + p1->y2 ;

if ( a == 11 ) {
   printf(" OK   \n") ;
} else {
   printf(" NG   a = %d\n",a) ;
}

free(p1);
exit (0);
}
long f1(i1)
long i1 ;
{
  return(i1+i1) ;
}
void v1(i1)
long i1 ;
{
  return ;
}
