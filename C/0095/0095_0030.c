#include <stdio.h>
int main( ) {
volatile long long int e,h,i,z,x[8];
long long int sub1( ),sub2( ),sub3( );
int j;
e=sub1( );
i=sub3( );
h=sub2( );
z =(x[0]
  =(x[1]
  =(x[2]
  =(x[3]
  =(x[4]
  =(x[5]
  =(x[6]
  =(x[7] =(e^h)^h
                )^h
                  )^h
                   )^h
                    )^h
                     )^h
                      )^h
                       )^h
                        )^h;

if (e    == z
&&  x[0] == i 
&&  x[1] == e 
&&  x[2] == i 
&&  x[3] == e 
&&  x[4] == i 
&&  x[5] == e 
&&  x[6] == i 
&&  x[7] == e ) 
  printf(" ok \n");
else  {
  printf("e %.8x %.8x\n", *(long*)&e, *(((long*)&e)+1));
  printf("z %.8x %.8x\n", *(long*)&z, *(((long*)&z)+1));
  for (j=0; j<8;j++)
  printf("x[%d] %.8x %.8x\n",j, *(long*)&x[j], *(((long*)&x[j])+1));
 }
}
long long int sub1( ) {
volatile long long int e;
                              return(e=0xffff0000ffff0000LL);
}
long long int sub2( ) {
volatile long long int i;
                              return(i=0x0000ffff0000ffffLL);
}
long long int sub3( ) {
volatile long long int i;
                              return(i=0xffffffffffffffffLL);
}
