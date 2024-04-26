#include <stdio.h>

int main()
{
       signed  int     x;
       unsigned  int   y;
       unsigned short int  a;
       signed short int    b,sft2;
       signed  int     z,ok,sft;
       printf("<<<<<<< START >>>>>>> \n");
       ok=0;
       sft=sft2=4;
       x=0xa50b030d ;
       z=x>>sft ;
       if (z!=0xfa50b030)
       {
         printf("NG Z!=FA50B030 \n");
         ok=1;
       }
       printf("   Z=%8X \n",z);
       x=0x250b030d ;
       z=x>>sft ;
       if (z!=0x0250b030)
       {
         printf("NG  Z!=0250B030 \n");
         ok=1;
       }
       printf("   Z=%8X \n",z);
       y=0xa50b030d ;
       z=y>>4 ;
       if (z!=0x0a50b030)
       {
         printf("NG Z!=0A50B030 \n");
         ok=1;
       }
       printf("   Z=%8X \n",z);
       b=0x050b ;
       b=b<<sft2;
       if (b != 0x50b0)
       {
         printf("NG B!=50B0 \n");
         ok=1;
       }
       printf("   B =%4X \n",b);
       a=0x250b ;
       a=a<<4;
       if (a != 0x50b0)
       {
         printf("NG A!=50B0 \n");
         ok=1;
       }
       printf("   A =%4X \n",a);
       if (ok==0)
         printf("OK                                     \n");
       else
         printf("NG                             \n");
       printf("<<<<<<<  END  >>>>>>> \n");
}
