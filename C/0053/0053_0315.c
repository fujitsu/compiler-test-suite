#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    static char vec[5] = { 1,2,3,4,5 },*a = vec,b = 1,c;

    c = b[a];
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static char vec[5] = { 1,2,3,4,5 },*a = vec,b = 1,c;

    c = a[b];
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static int vec[5] = { 1,2,3,4,5 },*a = vec,b = 1,c;

    c = a[b];
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static long int vec[5] = { 1,2,3,4,5 },*a = vec,b = 1,c;

    c = a[b];
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static short int vec[5] = { 1,2,3,4,5 },*a = vec,b = 1,c;

    c = a[b];
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static signed char vec[5] = { 1,2,3,4,5 },*a = vec,b = 1,c;

    c = a[b];
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static signed int vec[5] = { 1,2,3,4,5 },*a = vec,b = 1,c;

    c = a[b];
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static signed long int vec[5] = { 1,2,3,4,5 },*a = vec;
    signed long int b = 1,c;

    c = a[b];
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static char vec[5] = { 1,2,3,4,5 },*a = vec;
    signed short int b = 1,c;

    c = a[b];
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static unsigned char vec[5] = { 1,2,3,4,5 },*a = vec,b = 1,c;

    c = a[b];
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static unsigned int vec[5] = { 1,2,3,4,5 },*a = vec,b = 1,c;

    c = a[b];
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static char vec[5] = { 1,2,3,4,5 },*a = vec;
    unsigned long int b = 1,c;

    c = a[b];
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static char vec[5] = { 1,2,3,4,5 },*a = vec;
    unsigned short int b = 1,c;

    c = a[b];
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static int vec[5] = { 1,2,3,4,5 },*a = vec,c;
    enum { ea,eb,ec,ed,ee } en;

    en = eb;
    c = a[en];
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}
