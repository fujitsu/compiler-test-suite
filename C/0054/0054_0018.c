#include<stdio.h>

#if INT64
#define int __int32
#endif

 

int main()
{

   printf("*** 01 ** MK3 TEST ** STARTED ***\n");

{ 
   struct ST11 {
      char          :0;
      int   a, b, c, d;
   } st11 = { 1, 2, 3, 4 };

   if ((sizeof(st11) == 4*4) && (st11.d == 4))
      printf("*** 01 - 01 ** OK ***\n");
   else
      printf("=== 01 - 01 == NG ===\n");
} 

{ 
   struct ST21 {
      char  :0;
      int   :0;
      short :0;
      int   :0;
      int   :0;
      char a:1;
   } st21;

   if (sizeof(st21) == 4)
      printf("*** 01 - 02 ** OK ***\n");
   else
      printf("=== 01 - 02 == NG ===%lu\n",sizeof(st21));
} 

{ 
   struct ST31 {
      char   a;
      int    b;
      short  c;
      int    d;
      int    e;
   } st31 = { 1, 2, 3, 4, 5 };

   if ((sizeof(st31) == 4*5) && (st31.e == 5))
      printf("*** 01 - 03 ** OK ***\n");
   else
      printf("=== 01 - 03 == NG ===\n");
} 

{ 
   struct ST41 {
      int  a;
      struct ST42 {
         char  b;
         struct ST43 {
            int   :0;
            char   c;
            short  d, e;
         } st43;
      } st42;
   } st41 = { 1, 2, 3, 4, 5 };

   if ((sizeof(st41) == 4*4) && (st41.st42.st43.e == 5))
      printf("*** 01 - 04 ** OK ***\n");
   else
      printf("=== 01 - 04 == NG ===%lu\n",sizeof(st41));
} 

{ 
   struct ST51 {
      int  a;
      struct ST52 {
         char  b;
      } st52;
   } st51 = { 1, 2 };

   if ((sizeof(st51) == 4*2) && (st51.st52.b == 2))
      printf("*** 01 - 05 ** OK ***\n");
   else
      printf("=== 01 - 05 == NG ===\n");
} 

{ 
   struct ST61 {
      short  a;
      struct ST62 {
         char  :0;
         struct ST63 {
            char  :0;
            short b, c;
            int   d, e;
         } st63;
      } st62;
   } st61 = { 1, 2, 3, 4, 5 };

   if ((sizeof(st61) == 4*4) && (st61.st62.st63.e == 5))
      printf("*** 01 - 06 ** OK ***\n");
   else
      printf("=== 01 - 06 == NG ===\n");
} 

{ 
   struct ST71 {
      char  a;
      struct ST72 {
         short  :0;
         char   b;
         struct ST73 {
            int  :0;
            short c;
            char  d, e ,f ;
         } st73;
      } st72;
   } st71 = { 1, 2, 3, 4, 5 };

   if ((sizeof(st71) == 4*4) && (st71.st72.st73.e == 5))
      printf("*** 01 - 07 ** OK ***\n");
   else
      printf("=== 01 - 07 == NG ===%lu\n",sizeof(st71));
} 

{ 
   struct ST81 {
      short  a;
      struct ST82 {
         int   :0;
         short  b;
         struct ST83 {
            char  :0;
            char  c, d;
            short e;
         } st83;
      } st82;
   } st81 = { 1, 2, 3, 4, 5 };

   if ((sizeof(st81) == 4*3) && (st81.st82.st83.e == 5))
      printf("*** 01 - 08 ** OK ***\n");
   else
      printf("=== 01 - 08 == NG ===%lu\n",sizeof(st81));
} 

{ 
   struct ST91 {
      short  a;
      struct ST92 {
         int   b;
         struct ST93 {
            short c, d, e;
         } st93;
      } st92;
   } st91 = { 1, 2, 3, 4, 5 };

   if ((sizeof(st91) == 4*4) && (st91.st92.st93.e == 5))
      printf("*** 01 - 09 ** OK ***\n");
   else
      printf("=== 01 - 09 == NG ===\n");
} 

   printf("******* 01 TEST ENDED *******\n");
}
