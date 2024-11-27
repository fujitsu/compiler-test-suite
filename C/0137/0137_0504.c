#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main( ) {
float r4;
double r8;
long double r16;
  
r16 = 9223372036854775807LL;
if (r16 == 9223372036854775807.0L) 
                        printf("** kaimk2032-(1) ok \n");
else                    printf("** kaimk2032-(1) ng \n");
    r16 =  -9223372036854775808LL;
if (r16 == 9223372036854775808.0L) 
                        printf("** kaimk2032-(2) -Xa ok -Xt ng \n");
else                    printf("** kaimk2032-(2) -Xa ng -Xt ok \n");
r16 = 18446744073709551615UL;
if (r16 == 18446744073709551615.0L)
                        printf("** kaimk2032-(3) ok \n");
else                    printf("** kaimk2032-(3) ng \n");
r8 = 4503599627370495LL;
if (r8 == 4503599627370495.0 ) 
                        printf("** kaimk2032-(4) ok \n");
else                    printf("** kaimk2032-(4) ng \n");
    r8 =  -4503599627370496LL;
if (r8 == -4503599627370496.0 ) 
                        printf("** kaimk2032-(5) ok \n");
else                    printf("** kaimk2032-(5) ng \n");
r4 = 8388607LL;
if (r4 == 8388607.0F) 
                        printf("** kaimk2032-(6) ok \n");
else                    printf("** kaimk2032-(6) ng \n");
r4 =-8388607LL;
if (r4 ==-8388607.0F) 
                        printf("** kaimk2032-(7) ok \n");
else                    printf("** kaimk2032-(7) ng \n");

exit (0);
}
