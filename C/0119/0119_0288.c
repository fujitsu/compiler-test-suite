#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

unsigned           char au1,bu1=0xff;
unsigned short     int  au2,bu2=0xff;
unsigned long      int  au4,bu4=0xff;
unsigned long long int  au8,bu8=0xff;
  signed           char ai1,bi1=0x0f;
  signed short     int  ai2,bi2=0x0f;
  signed long      int  ai4,bi4=0xff;
  signed long long int  ai8,bi8=0xff;
int main()
{

au1=bu1>>2;
au2=bu2>>3;
au4=bu4>>4;
au8=bu8>>5;

if(au1==0x3f && au2==0x1f && au4==0x0f && au8==0x07)
        printf(" SCRLC13 ----- ok1 ----- \n");
else    printf(" SCRLC13 ----- ng1 ----- \n");

ai1=bi1>>2;
ai2=bi2>>3;
ai4=bi4>>4;
ai8=bi8>>5;

if(ai1==0x03 && ai2==0x01 && ai4==0x0f && ai8==0x07)
        printf(" SCRLC13 ----- ok2 ----- \n");
else    printf(" SCRLC13 ----- ng2 ----- \n");

exit (0);
}
