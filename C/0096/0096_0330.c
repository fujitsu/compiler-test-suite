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
  signed int a2,a3 ;
  unsigned int u2,u3 ;

  printf (" Need not to confirm optimization. Result check is enough.\n mask op. is \"or\" : no optimize\n") ;

  u2=((u1>>25)|0x550)*8 ;
  u3=((u1>>25)|0x550)*9 ;

  a2=((a1>>25)|0x550)*8 ;
  a3=((a1>>25)|0x550)*9 ;

  printf ("  ") ;
  if ( u2==0x2ac8 && u3==0x3021 && a2==-312 && a3==-351 ) {
    printf ("OK\n") ;
  } else {
    printf ("NG\n") ;
  }
}
