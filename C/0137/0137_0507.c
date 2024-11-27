#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main( ) {
float r4;
double r8;
long double r16;
long long int i8
                ,subi8a( )
                ,subi8b( )
                ,subi8c( )
                ,subi8d( )
                ,subi8e( )
                ,subi8f( );

i8 = subi8a( );
r4 = i8;
         if (r4== 5.24288e+5F)
                                  printf("**kaimk2037-(1) ok\n");
  else                            printf("**kaimk2037-(1) ng %x\n",r4);
i8 = subi8b( );
r4 = i8;
         if (r4== -5.24288e+5F)
                                  printf("**kaimk2037-(2) ok\n");
  else                            printf("**kaimk2037-(2) ng %x\n",r4);
i8 = subi8c( );
r8 = i8;
         if (r8== 5.62949953421312e+14)
                                  printf("**kaimk2037-(3) ok\n");
  else                            printf("**kaimk2037-(3) ng %x %x\n",
                                          *(int *)&r8,*(((int *)&r8)+1));
i8 = subi8d( );
r8 = i8;
         if (r8== -5.62949953421312e+14)
                                  printf("**kaimk2037-(4) ok\n");
  else                            printf("**kaimk2037-(4) ng %x %x\n",
                                          *(int *)&r8,*(((int *)&r8)+1));
i8 = subi8e( );
r16 = i8;
         if (r16==9.223372036854775807e+18L )
                                  printf("**kaimk2037-(5) ok\n");
  else                            printf("**kaimk2037-(5) ng %x %x %x %x\n",
                                          *(int *)&r16,
                                          *(((int *)&r16)+1),
                                          *(((int *)&r16)+2),
                                          *(((int *)&r16)+3));
i8 = subi8f( );
r16 = i8;
         if (r16==-9.223372036854775808e+18L )
                                  printf("**kaimk2037-(6) ok\n");
  else                            printf("**kaimk2037-(6) ng %x %x %x %x\n",
                                          *(int *)&r16,
                                          *(((int *)&r16)+1),
                                          *(((int *)&r16)+2),
                                          *(((int *)&r16)+3));
exit (0);
}
long long int subi8a( ) { return  524288LL; }
long long int subi8b( ) { return -524288LL; }
long long int subi8c( ) { return  562949953421312LL; }
long long int subi8d( ) { return -562949953421312LL; }
long long int subi8e( ) { return  9223372036854775807LL; }
long long int subi8f( ) { return -9223372036854775808LL; }
