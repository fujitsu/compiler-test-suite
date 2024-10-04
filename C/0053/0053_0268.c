#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    int a = 1,b = 2,c = 3,d;

    d = a ? b : c;
    if (d == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a = 1,val1 = 2,*b = &val1,val2 = 3,*c = &val2,*d;

    d = a ? b : c;
    if (*d == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static int  vec[2] = { 1,2 };
           int  a = 1,*ptr = &vec[0],*c;

    c = a ? ptr : vec;
    if (*c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a = 1,fnc(void),(*ptr)() = fnc,(*c)();

    c = a ? ptr : fnc;
    if ((*c)() == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static int vec[2] = { 1,2 };
           int a = 1,*ptr = &vec[0],*c;

    c = a ? vec : ptr;
    if (*c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static int vec1[2] = { 1,2 };
    static int vec2[2] = { 3,4 };
          int a = 1,c;

    c = (a ? vec1 : vec2)[1];
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a = 1,fnc(void),(*ptr)() = fnc,(*c)();

    c = a ? fnc : ptr;
    if ((*c)() == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a = 1,fnc(void),c;

    c = (a ? fnc : fnc)();
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  { printf("\n");
  }
  {
    int a = 1,val = 2,*ptr = &val,*c;

    c = a ? ptr : 0;
    if (c != 0 && *c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}

int fnc()
{
  return 1;
}
