#include <stdio.h>

#if INT64 
#define int __int32
#endif

void func ( signed int v1, unsigned int v2 ) ;
int main(){
  signed int  value=0x93365678 ;
  func ( value , (unsigned int) value ) ;
}
void func(a1,u1) 
     signed int a1 ;
     unsigned int u1 ;
{
  signed int a2,a3,a4 ;
  unsigned int u2,u3,u4 ;

  printf (" See .s file and confirm optimization\n\
 shift value <= 0 , nooptimize\n") ;

  u2=((u1>>3)&0xe67)*8 ;
  u3=((u1>>3)&0xe67)*16 ;
  u4=((u1>>3)&0xe67)*4 ;	

  a2=((a1>>3)&0xe67)*8 ;
  a3=((a1>>3)&0xe67)*16 ;
  a4=((a1>>3)&0xe67)*4 ;	

  printf ("  ") ;
  if ( u2==0x5238 && u3==0xa470 && u4==0x291c
      && a2==0x5238 && a3==0xa470 && a4==0x291c ) {
    printf ("OK\n") ;
  } else {
    printf ("NG\n") ;
  }
}
