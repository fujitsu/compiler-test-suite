#include <stdio.h>
#if INT64
#define int __int32
#endif

unsigned int  p,r,a[10] ;
int func( )
{
  int i ;
  unsigned int q ;
  for ( i = 0 ; i < 10 ; i ++ ){
    q = p+i ;
    a[q-r]=q ;
  }
}
int main(){
  int i ;

  p=0x7ffffffe ;
  r=0x7ffffffe ;
  for (i=0;i<10;i++){
    a[i]=0 ;
  }
  func() ;
  for (i=0;i<10;i++){
    printf ("%x , ",a[i]);
  }
  printf("\n") ;
}
