#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub1 (double a, unsigned long long int b, char c, long long int d, short e, long double f, unsigned long long int g, int h, float i);
int main (void) {
long long int          i8a,i8b,i8c;
unsigned long long int u8a,u8b,u8c;
int                    i4a,i4b,i4c;
unsigned int           u4a,u4b,u4c;
         short         i2a,i2b,i2c;
unsigned short         u2a,u2b,u2c;
         char          i1a,i1b,i1c;
unsigned char          u1a,u1b,u1c;
float                  r4a,r4b,r4c;
double                 r8a,r8b,r8c;
long double            r16a,r16b,r16c;
int i;
            r8a=u8a=i1a=i8a=i2a=r16a=u8b=i4a=r4c=10;
if ((i=sub1(r8a,u8a,i1a,i8a,i2a,r16a,u8b,i4a,r4c))== 90)
                                             printf("*kaimk2047-(1) ok\n");
                                       else  printf("*kaimk2047-(1) ng %d\n",i);
exit (0);
}
int sub1 (double a, unsigned long long int b, char c, long long int d, short e, long double f, unsigned long long int g, int h, float i)
{ return(a+b+c+d+e+f+g+h+i); }
