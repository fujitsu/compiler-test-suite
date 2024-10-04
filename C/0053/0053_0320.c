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
    int z=m4(0),c = "abcdefghijklmnopqrstuvwxyz"[15];

    if (c == 'p')
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int z=m4(0),c = "abcdefghijklmno\0pqrstuvwxyz"[8];

    if (c == 'i')
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int c = "abcdefghijklmnopqrstuvwxyz"[24];

    if (c == 'y')
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}
