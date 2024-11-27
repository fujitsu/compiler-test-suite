#include <stdio.h>
typedef short BIT;

typedef struct Pterm {
  BIT ptand[100] ;
} PTERM;

int ninputs ;
int value = 0 ;
int cmppt (short * a, short * b) ;

int cmppt (a, b)
     short a[], b[];
{
  register int i, aa, bb;

  for (i = 0; i < ninputs; i++) {
    aa = a[i];
    bb = b[i];
    if (aa == 2)
      aa = 0 ;
    if (bb == 2)
      bb = 0 ;
    if (aa != bb) {
      if (aa < bb) {
	return (-1);
      }
      else	{
	return (1);
      }
    }
    value = 2 ;
  }
  return (0);
}

#define a x.A
#define b x.B
int main(){
  int i,j ;
  struct {
    int fill ;
    short A[100],B[100] ;
  } x ;

  for ( i = 0 ; i < 100 ; i++ ){
    a[i]=b[i]=0 ;
  }

  ninputs = 100 ; value = 0 ;
  j = cmppt (&a[0],&b[0]) ;
  printf (" ninputs = %d ( all zero ) , return value = %d (0)\n",ninputs, j) ; 
  if ( (ninputs!=0 && value!=2)||(ninputs==0 && value!=0) ) printf (" NG !! value is %d\n",value) ;
  ninputs = 0 ; value = 0 ;
  j = cmppt (&a[0],&b[0]) ;
  printf (" ninputs = %d ( all zero ) , return value = %d (0)\n",ninputs, j) ; 
  if ( (ninputs!=0 && value!=2)||(ninputs==0 && value!=0) ) printf (" NG !! value is %d\n",value) ;

  ninputs = 99 ; value = 0 ;
  j = cmppt (&a[1],&b[1]) ;
  printf (" ninputs = %d ( all zero / misalign ) , return value = %d (0)\n",ninputs, j) ; 
  if ( (ninputs!=0 && value!=2)||(ninputs==0 && value!=0) ) printf (" NG !! value is %d\n",value) ;

  ninputs = 0 ; value = 0 ;
  j = cmppt (&a[1],&b[1]) ;
  printf (" ninputs = %d ( all zero / misalign ) , return value = %d (0)\n",ninputs, j) ; 
  if ( (ninputs!=0 && value!=2)||(ninputs==0 && value!=0) ) printf (" NG !! value is %d\n",value) ;

  a[1]=2 ;

  ninputs = 100 ; value = 0 ;
  j = cmppt (&a[0],&b[0]) ;
  printf (" ninputs = %d ( a has 2 ) , return value = %d (0)\n",ninputs, j) ; 
  if ( (ninputs!=0 && value!=2)||(ninputs==0 && value!=0) ) printf (" NG !! value is %d\n",value) ;
  ninputs = 0 ; value = 0 ;
  j = cmppt (&a[0],&b[0]) ;
  printf (" ninputs = %d ( a has 2 ) , return value = %d (0)\n",ninputs, j) ; 
  if ( (ninputs!=0 && value!=2)||(ninputs==0 && value!=0) ) printf (" NG !! value is %d\n",value) ;

  b[1]=3 ;
  ninputs = 100 ; value = 0 ;
  j = cmppt (&a[0],&b[0]) ;
  printf (" ninputs = %d ( a==2,b==3 ) , return value = %d (-1)\n",ninputs, j) ; 
  if ( (ninputs!=0 && value!=2)||(ninputs==0 && value!=0) ) printf (" NG !! value is %d\n",value) ;
  b[1]=2 ; b[99]=-1 ;
  ninputs = 100 ; value = 0 ;
  j = cmppt (&a[0],&b[0]) ;
  printf (" ninputs = %d ( all zero ) , return value = %d (1)\n",ninputs, j) ; 
  if ( (ninputs!=0 && value!=2)||(ninputs==0 && value!=0) ) printf (" NG !! value is %d\n",value) ;

  a[47]=3 ;
  ninputs = 48 ; value = 0 ;
  j = cmppt (&a[0],&b[0]) ;
  printf (" ninputs = %d ( a[47]=3 ) , return value = %d (1)\n",ninputs, j) ; 
  if ( (ninputs!=0 && value!=2)||(ninputs==0 && value!=0) ) printf (" NG !! value is %d\n",value) ;
  b[47]=4 ;
  ninputs = 48 ; value = 0 ;
  j = cmppt (&a[0],&b[0]) ;
  printf (" ninputs = %d ( b[47]=4 ) , return value = %d (-1)\n",ninputs, j) ; 
  if ( (ninputs!=0 && value!=2)||(ninputs==0 && value!=0) ) printf (" NG !! value is %d\n",value) ;
}
