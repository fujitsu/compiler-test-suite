#include <stdio.h>

#if INT64 
#define int __int32
#endif

void func ( signed int, unsigned int ) ;
int main(){
  signed int  value=0x93665678 ;
  func ( value , (unsigned int) value ) ;
}

void func(signed int a1, unsigned int u1) 
{
  signed int a2,a3 ;
  unsigned int u2,u3 ;

  printf (" Confirm optimization.\n singned and unsigned -- normal case\n") ;

  u2=((u1>>21)&0xef7)*8 ;
  u3=((u1>>21)&0xef7)*9 ;

  a2=((a1>>21)&0xef7)*8 ;
  a3=((a1>>21)&0xef7)*9 ;

  if ( u2==0x2498 && u3==0x292b && a2==0x6498 && a3==0x712b ) {
    printf ("  OK\n") ;
  } else {
    printf ("  NG\n") ;
  }
}
