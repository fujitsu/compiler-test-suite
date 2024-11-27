#include <stdio.h>
signed char sub1( unsigned char u1) {
  char i1;

  if ( u1 == 1 ){
    u1 = 0xff;
  }

  i1=u1;  
  return(i1);
}
int main( ) {
  char          i1;
  unsigned char u1=1;

  i1=sub1(u1);
               if (i1 == -1)   printf(" ok   \n");
               else            printf(" ng %d\n",i1);

}
