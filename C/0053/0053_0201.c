#include<stdio.h>
int exa;
struct { int a; int b; int c; } st,*exb;
int main()
{
  exb = &st;
  st.a = 1;
  st.b = 2;
  st.c = 3;
  exa = 10;

  if (exa == 10)
      printf("***** \n");
    else
      printf("***** \n");

  if (exb->b == 2)
      printf("***** \n");
    else
      printf("***** \n");
}
