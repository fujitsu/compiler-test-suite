#include<stdio.h>
#define ml(x) ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( x + 
#define m1(x) ( ( ( ( ( ( ( ( ( x ) ) ) ) ) ) ) ) )   
#define mr(x) + x ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) 
#define m2(x) ml(x) ml(x) m1(x) mr(x) mr(x)           
#define m3(x) m2(x) + m2(x) + m2(x) + m2(x) + m2(x)   
#define m4(x) m3(x) + m3(x)                           
#define m5(x) m3(x) + m2(x) + m2(x) + m2(x) + m2(x)   
#define m6(x) m5(x) + ml(x) m1(x) mr(x) + m1(x)       
#define m7(x) ( ( ( ( ( ( ( m6(x) ) ) ) ) ) ) )       
int main()
{
  printf("********** \n");
  {
    unsigned long int a = 2147483648LU;

    if (a == 2147483648lu)
        printf("***** \n");
      else
        printf("***** \n");
  }
  { 
    int z = m7(0);unsigned long int a=2147483648Lu;

    if (a == 2147483648lu)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned long int a = 4294967295Lu;

    if (a == 4294967295lu)
        printf("***** \n");
      else
        printf("***** \n");
  }
  { 
    int z = m7(0);unsigned long int a=4294967295Lu;

    if (a == 4294967295lu)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    long int a = 2147483647L;

    if (a == 2147483647l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int z=m4(0);long int a = 1234567L;

    if (a == 1234567l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned long int a = 2147483648lU;

    if (a == 2147483648lu)
        printf("***** \n");
      else
        printf("***** \n");
  }
  { 
    int z = m7(0);unsigned long int a=2147483648lU;

    if (a == 2147483648lu)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned long int a = 4294967295lu;

    if (a == 4294967295lu)
        printf("***** \n");
      else
        printf("***** \n");
  }
  { 
    int z = m7(0);unsigned long int a=4294967295lu;

    if (a == 4294967295lu)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    long int a = 2147483647l;

    if (a == 2147483647l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int z=m4(0);long int a = 1234567l;

    if (a == 1234567l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned long int a = 2147483648UL;

    if (a == 2147483648lu)
        printf("***** \n");
      else
        printf("***** \n");
  }
  { 
    int z = m7(0);unsigned long int a=2147483648UL;

    if (a == 2147483648lu)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned long int a = 4294967295Ul;

    if (a == 4294967295lu)
        printf("***** \n");
      else
        printf("***** \n");
  }
  { 
    int z = m7(0);unsigned long int a=4294967295Ul;

    if (a == 4294967295lu)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned int a = 2147483648U;

    if (a == 2147483648u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int z=m4(0);unsigned int a = 123U;

    if (a == 123u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned long int a = 2147483648uL;

    if (a == 2147483648ul)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int z=m4(0);int a = 2147483648uL;

#if LONG64  || __x86_64__ || __aarch64__
    if (a == 18446744071562067968ul)
#else
    if (a == 2147483648ul)
#endif
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned long int a = 4294967295ul;

    if (a == 4294967295ul)
        printf("***** \n");
      else
        printf("***** \n");
  }
  { 
    int z=m7(0);unsigned long int a = 4294967295ul;

    if (a == 4294967295ul)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned int a = 2147483648u;

    if (a == 2147483648u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int z=m4(0);unsigned int a = 123u;

    if (a == 123u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a = 2147483647;

    if (a == 2147483647)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}
