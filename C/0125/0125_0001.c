#include<stdio.h>

int main()
{
 
   int a;
 
   printf("TEST START \n");
 
#if 1
   #define d 1
#elif 0
   printf(" *** N G (15-01)A*** \n");
#elif 1
   printf(" *** N G (15-01)B*** \n");
#else
   printf(" *** N G (15-01)C*** \n");
#endif
 
   #ifdef d
      printf(" *** O K (15-01) *** \n");
   #else
      printf(" *** N G (15-01)D*** \n");
   #endif
 
a = 1;
 
#if 0
#elif 1
   a++;
#elif 1
   printf(" *** N G (15-02)A*** \n");
#else
   printf(" *** N G (15-02)B*** \n");
#endif
 
   if (a == 2)
      printf(" *** O K (15-02) *** \n");
   else
      printf(" *** N G (15-02)C*** \n");
 
#if 0
#elif 0
#elif 0
#else
   #undef  d
   #define d 3
#endif
 
   #ifdef d
      printf(" *** O K (15-03) *** \n");
   #else
      printf(" *** N G (15-03) *** \n");
   #endif
 
#if 0
#elif 1
   a = 4;
#else
   printf(" *** N G (15-04)A*** \n");
#endif
 
   if (a == 4)
      printf(" *** O K (15-04) *** \n");
   else
      printf(" *** N G (15-04)B*** \n");
 
#if 0
#elif 0
#else
   #undef d
   #define d 5
#endif
 
   #ifdef d
      printf(" *** O K (15-05) *** \n");
   #else
      printf(" *** N G (15-05) *** \n");
   #endif
 
a = 60;
 
#if 0
#else
   a *= 10;
#endif
 
   if (a == 600)
      printf(" *** O K (15-06) *** \n");
   else
      printf(" *** N G (15-06) *** \n");
 
#if 0
#else
#endif
      printf(" *** O K (15-08) *** \n");
 
#if 1
#endif
      printf(" *** O K (15-09) *** \n");
 
#ifdef abc
#endif
      printf(" *** O K (15-11) *** \n");
 
#ifndef abc
#endif
      printf(" *** O K (15-12) *** \n");
 
   printf("TEST END \n");
 
}
