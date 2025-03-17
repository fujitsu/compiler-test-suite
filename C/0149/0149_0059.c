#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  printf("********** CATEGORY TEST START **********\n");
  {
    int a = 1,b = 1,c;
 
    c = a != b ? 1 : 2;
    if (c == 2)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
  }
  {
    int val = 1,*a = &val,*b = &val,c;
 
    c = a != b ? 1 : 2;
    if (c == 2)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
  }
  {
    int vec[2] = { 1,2 },*ptr = &vec[0],c;
 
    c = ptr != vec ? 1 : 2;
    if (c == 2)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
  }
  {
    int fnc(void),(*ptr)() = fnc,c;
 
    c = ptr != fnc ? 1 : 2;
    if (c == 2)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    int vec[2] = { 1,2 },*ptr = &vec[0],c;
 
    c = vec != ptr ? 1 : 2;
    if (c == 2)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
  }
  {
    int vec1[2] = { 1,2 },vec2[2] = { 3,4 },c;
 
    c = vec1 != vec2 ? 1 : 2;
    if (c == 1)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
  }
  {
    int fnc(void),(*ptr)() = fnc,c;
 
    c = fnc != ptr ? 1 : 2;
    if (c == 2)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
  }
  {
    int fnc(void),c;
 
    c = fnc != fnc ? 1 : 2;
    if (c == 2)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  {
    int *a = 0,c;
 
    c = a != 0 ? 1 : 2;
    if (c == 2)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}
 
int fnc()
{
  return 1;
}
