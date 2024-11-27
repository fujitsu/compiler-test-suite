#include <stdlib.h>
#include <stdio.h>
#include <math.h>
void  sub2(int *,int *, int *, int *, int *, int *);
int main()
{
  int i,j1,j2,j3,j4,j5,k;
  int s=0,five=5;
  sub2(&k,&j1,&j2,&j3,&j4,&j5);
  for ( i=0 ; i<k ; i++) {
    if ( five > i ) {
      if (j1) {
        if (j2) {
          if ( i < 5 ) s += 1; 
          if ( i <= 5 ) s += 1; 
          if ( i == 5 ) s += 1;
          if ( i >= 5 ) s += 1; 
          if ( i > 5 ) s += 1; 
	  if ( i != 5 ) s += 1; 
        }
      }
    }
  }
  printf("s=%d\n",s);
exit (0);
}
void  sub2(pk,pj1,pj2,pj3,pj4,pj5)
int *pk;
int *pj1;
int *pj2;
int *pj3;
int *pj4;
int *pj5;
{
  *pk = 10;
  *pj1 = 100 ;
  *pj2 = 200 ;
  *pj3 = 300 ;
  *pj4 = 400 ;
  *pj5 = 500 ;
}
