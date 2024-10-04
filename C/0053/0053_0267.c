#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    int a = 1,b = 1,c;

    c = a != b ? 1 : 2;
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int val = 1,*a = &val,*b = &val,c;

    c = a != b ? 1 : 2;
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int vec[2] = { 1,2 },*ptr = &vec[0],c;

    c = ptr != vec ? 1 : 2;
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int fnc(void),(*ptr)() = fnc,c;

    c = ptr != fnc ? 1 : 2;
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int vec[2] = { 1,2 },*ptr = &vec[0],c;

    c = vec != ptr ? 1 : 2;
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int vec1[2] = { 1,2 },vec2[2] = { 3,4 },c;

    c = vec1 != vec2 ? 1 : 2;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int fnc(void),(*ptr)() = fnc,c;

    c = fnc != ptr ? 1 : 2;
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int fnc(void),c;

    c = fnc != fnc ? 1 : 2;
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int *a = 0,c;

    c = a != 0 ? 1 : 2;
    if (c == 2)
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
