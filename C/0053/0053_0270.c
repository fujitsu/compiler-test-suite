#include<stdio.h>
#define ml(x) ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( x + 
#define m1(x) ( ( ( ( ( ( ( ( ( x ) ) ) ) ) ) ) ) )   
#define mr(x) + x ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) 
#define m2(x) ml(x) ml(x) m1(x) mr(x) mr(x)           
#define m3(x) m2(x) + m2(x) + m2(x) + m2(x) + m2(x)   
#define m4(x) m3(x) + m3(x)                           
int main()
{
  printf("********** \n");
  {
    {
      static char a[16] = "\a\b\f\n\r\t\v\x6c\114\d";

#ifndef ASCII
      if (a[0] == 0x2f)
#else
      if (a[0] == 0x07)
#endif
          printf("***** \n");
        else
          printf("***** \n");

#ifndef ASCII
      if (a[1] == 0x16)
#else
      if (a[1] == 0x08)
#endif
          printf("***** \n");
        else
          printf("***** \n");

      if (a[2] == 0x0c)
          printf("***** \n");
        else
          printf("***** \n");

#ifndef ASCII
      if (a[3] == 0x25)
#else
      if (a[3] == 0x0a)
#endif
          printf("***** \n");
        else
          printf("***** \n");

      if (a[4] == 0x0d)
          printf("***** \n");
        else
          printf("***** \n");

#ifndef ASCII
      if (a[5] == 0x05)
#else
      if (a[5] == 0x09)
#endif
          printf("***** \n");
        else
          printf("***** \n");

      if (a[6] == 0x0b)
          printf("***** \n");
        else
          printf("***** \n");

#ifndef ASCII
      if (a[7] == '%')
#else
      if (a[7] == 'l')
#endif
          printf("***** \n");
        else
          printf("***** \n");

#ifndef ASCII
      if (a[8] == '<')
#else
      if (a[8] == 'L')
#endif
          printf("***** \n");
        else
          printf("***** \n");

      if (a[9] == 'd')
          printf("***** \n");
        else
          printf("***** \n");
    }
    {
      static char a[5]="a";

#ifndef ASCII
      if (a[0] == 0x81)
#else
      if (a[0] == 0x61)
#endif
          printf("***** \n");
        else
          printf("***** \n");
    }
  }
  printf("********** \n");
}
