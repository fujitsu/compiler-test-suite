#include<stdio.h>
 

 struct tag19 { unsigned  char  c01;
                 signed    char  c02;
                 unsigned  char  c03;   } ;

 struct tag22 { unsigned  char   c01;
                 unsigned  short  s02;
                 signed    int    i03;   } ;

 struct tag25 { signed    int    i01;
                 float            f02;
                 double           d03;   } ;
int main()
{

 struct tag19 st19={255,-128,255};
 struct tag19 st20={{255},{-128},{255}};
 struct tag19 st21={{255},-128,{255}};

 struct tag22 st22={255,65535,-2147483648};
 struct tag22 st23={{255},{65535},{-2147483648}};
 struct tag22 st24={255,{65535},-2147483648};

 struct tag25 st25={-2147483648,0.590474e+38f,0.4946767312728128e+38};
 struct tag25 st26={{-2147483648},{0.590474e+38f},
                                       {0.4946767312728128e+38}};
 struct tag25 st27={-2147483648,{0.590474e+38f},
                                       0.4946767312728128e+38};

   printf("*** 01 ** MK3 TEST ** STARTED ***\n");

   if((st19.c01==255)&&(st19.c02==-128)&&(st19.c03==255))
   printf("*** 01 - 01 ** OK ***\n");
   else
   printf("*** 01 - 01 ** NG ***\n");

   if((st20.c01==255)&&(st20.c02==-128)&&(st20.c03==255))
   printf("*** 01 - 02 ** OK ***\n");
   else
   printf("*** 01 - 02 ** NG ***\n");

   if((st21.c01==255)&&(st21.c02==-128)&&(st21.c03==255))
   printf("*** 01 - 03 ** OK ***\n");
   else
   printf("*** 01 - 03 ** NG ***\n");

   if((st22.c01==255)&&(st22.s02==65535)&&(st22.i03==-2147483648))
   printf("*** 01 - 04 ** OK ***\n");
   else
   printf("*** 01 - 04 ** NG ***\n");

   if((st23.c01==255)&&(st23.s02==65535)&&(st23.i03==-2147483648))
   printf("*** 01 - 05 ** OK ***\n");
   else
   printf("*** 01 - 05 ** NG ***\n");

   if((st24.c01==255)&&(st24.s02==65535)&&(st24.i03==-2147483648))
   printf("*** 01 - 06 ** OK ***\n");
   else
   printf("*** 01 - 06 ** NG ***\n");

   if((st25.i01==-2147483648)&&(st25.f02==0.590474e+38f)&&
      (st25.d03== 0.4946767312728128e+38 ))
   printf("*** 01 - 07 ** OK ***\n");
   else
   printf("*** 01 - 07 ** NG ***\n");

   if((st26.i01==-2147483648)&&(st26.f02==0.590474e+38f)&&
      (st26.d03== 0.4946767312728128e+38 ))
   printf("*** 01 - 08 ** OK ***\n");
   else
   printf("*** 01 - 08 ** NG ***\n");

   if((st27.i01==-2147483648)&&(st27.f02==0.590474e+38f)&&
      (st27.d03== 0.4946767312728128e+38 ))
   printf("*** 01 - 09 ** OK ***\n");
   else
   printf("*** 01 - 09 ** NG ***\n");

   printf("*** 01 TEST ENDED ***\n");
}
