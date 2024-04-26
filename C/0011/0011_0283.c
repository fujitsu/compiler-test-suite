#include  <stdio.h>

unsigned           char au1,bu1=0x0f;
unsigned short     int  au2,bu2=0x0f;
unsigned long      int  au4,bu4=0x0f;
unsigned long long int  au8,bu8=0x0f;
signed             char ai1,bi1=0x03,ci1=-1;
signed   short     int  ai2,bi2=0x0f,ci2=-1;
signed   long      int  ai4,bi4=0xff,ci4=-1;
signed   long long int  ai8,bi8=0xff,ci8=-1;
int main()
{

au1=bu1<<2;
au2=bu2<<3;
au4=bu4<<4;
au8=bu8<<5;

if(au1==0x3c && au2==0x78 && au4==0xf0 && au8==0x01e0)
        printf(" ----- ok1 ----- \n");
else    printf(" ----- ng1 ----- \n");

ai1=bi1<<2;
ai2=bi2<<3;
ai4=bi4<<4;
ai8=bi8<<5;

if(ai1==0x0c && ai2==0x78 && ai4==0x0ff0 && ai8==0x1fe0)
        printf(" ----- ok1 ----- \n");
else    printf(" ----- ng1 ----- \n");

ai1=ci1<<2;
ai2=ci2<<3;
ai4=ci4<<4;
ai8=ci8<<5;

if(ai1==-4 && ai2==-8 && ai4==-16 && ai8==-32)
        printf(" ----- ok1 ----- \n");
else    printf(" ----- ng1 ----- \n");
}
