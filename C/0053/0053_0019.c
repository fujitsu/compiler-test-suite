#include<stdio.h>
#define ml(x) ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( x + 
#define m1(x) ( ( ( ( ( ( ( ( ( x ) ) ) ) ) ) ) ) )   
#define mr(x) + x ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) 
#define m2(x) ml(x) ml(x) m1(x) mr(x) mr(x)           
#define m3(x) m2(x) + m2(x) + m2(x) + m2(x) + m2(x)   
#define m4(x) m3(x) + m3(x)                           
int main()
{
  printf("**********  TEST START **********\n");
  {
    {
      char c = '\a';

      if (c == 0x07)
          printf("*****  - 01 ***** O K *****\n");
        else
          printf("*****  - 01 ***** N G *****\n");
    }
    {
      char c = '\b';

      if (c == 0x08)
          printf("*****  - 02 ***** O K *****\n");
        else
          printf("*****  - 02 ***** N G *****\n");
    }
    {
      char c = '\f';

      if (c == 0x0c)
          printf("*****  - 03 ***** O K *****\n");
        else
          printf("*****  - 03 ***** N G *****\n");
    }
    {
      char c = '\n';

      if (c == 0x0a)
          printf("*****  - 04 ***** O K *****\n");
        else
          printf("*****  - 04 ***** N G *****\n");
    }
    {
      char c = '\r';

      if (c == 0x0d)
          printf("*****  - 05 ***** O K *****\n");
        else
          printf("*****  - 05 ***** N G *****\n");
    }
    {
      char c = '\t';

      if (c == 0x09)
          printf("*****  - 06 ***** O K *****\n");
        else
          printf("*****  - 06 ***** N G *****\n");
    }
    {
      char c = '\v';

      if (c == 0x0b)
          printf("*****  - 07 ***** O K *****\n");
        else
          printf("*****  - 07 ***** N G *****\n");
    }
    {
      char c = '\x6c';

      if (c == 'l')
          printf("*****  - 08 ***** O K *****\n");
        else
          printf("*****  - 08 ***** N G *****\n");
    }
    {
      char c = '\114';

      if (c == 'L')
          printf("*****  - 09 ***** O K *****\n");
        else
          printf("*****  - 09 ***** N G *****\n");
    }
    {
      char c = '\d';

      if (c == 'd')
          printf("*****  - 10 ***** O K *****\n");
        else
          printf("*****  - 10 ***** N G *****\n");
    }
    {
      char c = 'a';

      if (c == 0x61)
          printf("*****  - 11 ***** O K *****\n");
        else
          printf("*****  - 11 ***** N G *****\n");
    }
  }
  printf("**********  TEST  END  **********\n");
}
