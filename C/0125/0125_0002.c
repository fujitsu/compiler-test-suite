#include<stdio.h>

int main()
{
 
   int a = 0;
 
   printf(" TEST START \n");
 
#if 0
   #define d 0
#else
   #define d 1
#endif
 
   #ifdef d
      printf(" *** O K (17-01) *** \n");
   #else
      printf(" *** N G (17-01) *** \n");
   #endif
 
#if -1
   a = 2;
#endif
 
   if (a == 2)
      printf(" *** O K (17-02) *** \n");
   else
      printf(" *** N G (17-02) *** \n");
 
#if 1
   a = 3;
#endif
 
   if (a == 3)
      printf(" *** O K (17-03) *** \n");
   else
      printf(" *** N G (17-03) *** \n");
 
#if 0x7fffffff
   a = 4;
#endif
 
   if (a == 4)
      printf(" *** O K (17-04) *** \n");
   else
      printf(" *** N G (17-04) *** \n");
 
 
a = 0;
#undef  d
 
#if 0
#elif 0
   a = 7 ;
#else
   #define d 7
#endif
 
 #ifdef d
   if (a == 0)
      printf(" *** O K (17-07) *** \n");
   else
      printf(" *** N G (17-07)A*** \n");
 #else
      printf(" *** N G (17-07)B*** \n");
 #endif
 
   printf(" TEST END \n");
 
}
