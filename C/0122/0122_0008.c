#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <math.h>
int main()
{
  int i=2 ;
  char bb[3],cc[5] ;

  
  bb[2] = 0x00;
  memcpy(bb,&"ABCDEFGHIJK"[i] ,2);
  if (bb[0]=='C' && bb[1]=='D'){
    printf(" No.1 OK : ") ; 
  } else {
    printf(" No.1 NG : ") ;
  }
  printf("%s \n",bb);
  
  
  memcpy(bb,"ABCD" ,2);
  if (bb[0]=='A' && bb[1]=='B'){
    printf(" No.2 OK : ") ; 
  } else {
    printf(" No.2 NG : ") ;
  }
  printf("%s \n",bb);

  strcpy(cc,"abcd") ;
  if(memcmp(cc,"abcd\0",5)){
    printf(" No.3 NG : ") ;
  } else {
    printf(" No.3 OK : ") ;
  }
  printf("%s \n",cc) ;

  strcpy(cc,&"abcdef"[2]) ;
  if(memcmp(cc,"cdef\0",5)){
    printf(" No.4 NG : ") ;
  } else {
    printf(" No.4 OK : ") ;
  }
  printf("%s \n",cc) ;
exit (0);
}
