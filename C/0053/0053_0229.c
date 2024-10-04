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
    int a = 1234567890;

    if (a == 1234567890)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int z = 0 + 0 +m4(0); int a = 1234567890;

    if (a == 1234567890)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}
