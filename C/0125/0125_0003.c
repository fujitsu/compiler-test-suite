#include<stdio.h>

int main()
{
 
   int a;
 
   printf(" TEST START \n");
 
#define macro 10
a = 0;
 
#ifdef macro
   a = 1;
#else
   a = -1;
#endif
 
   if (a == 1)
      printf(" *** O K (18-01) *** \n");
   else
      printf(" *** N G (18-01) *** \n");
 
#ifdef nomacro
   a = -2;
#else
   a = 2;
#endif
 
   if (a == 2)
      printf(" *** O K (18-02) *** \n");
   else
      printf(" *** N G (18-02) *** \n");
 
 
#ifndef macro
   a = -3;
#else
   a = 3;
#endif
 
   if (a == 3)
      printf(" *** O K (18-05) *** \n");
   else
      printf(" *** N G (18-05) *** \n");
 
 
#ifndef nomacro
   a = 6;
#else
   a = -6;
#endif
 
   if (a == 6)
      printf(" *** O K (18-06) *** \n");
   else
      printf(" *** N G (18-06) *** \n");
 
   printf(" TEST END \n");
 
}
