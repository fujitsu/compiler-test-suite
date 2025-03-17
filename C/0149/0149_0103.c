#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  printf("********** CATEGORY TEST START **********\n");
  {
    static char vec[5] = { 1,2,3,4,5 },*a = vec,b = 1,c;
 
    c = b[a];
    if (c == 2)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
  }
  {
    static char vec[5] = { 1,2,3,4,5 },*a = vec,b = 1,c;
 
    c = a[b];
    if (c == 2)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
  }
  {
    static int vec[5] = { 1,2,3,4,5 },*a = vec,b = 1,c;
 
    c = a[b];
    if (c == 2)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
  }
  {
    static long int vec[5] = { 1,2,3,4,5 },*a = vec,b = 1,c;
 
    c = a[b];
    if (c == 2)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    static short int vec[5] = { 1,2,3,4,5 },*a = vec,b = 1,c;
 
    c = a[b];
    if (c == 2)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
  }
  {
    static signed char vec[5] = { 1,2,3,4,5 },*a = vec,b = 1,c;
 
    c = a[b];
    if (c == 2)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
  }
  {
    static signed int vec[5] = { 1,2,3,4,5 },*a = vec,b = 1,c;
 
    c = a[b];
    if (c == 2)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
  }
  {
    static signed long int vec[5] = { 1,2,3,4,5 },*a = vec;
    signed long int b = 1,c;
 
    c = a[b];
    if (c == 2)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  {
    static char vec[5] = { 1,2,3,4,5 },*a = vec;
    signed short int b = 1,c;
 
    c = a[b];
    if (c == 2)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
  }
  {
    static unsigned char vec[5] = { 1,2,3,4,5 },*a = vec,b = 1,c;
 
    c = a[b];
    if (c == 2)
        printf("***** CATEGORY - 10 ***** O K *****\n");
      else
        printf("***** CATEGORY - 10 ***** N G *****\n");
  }
  {
    static unsigned int vec[5] = { 1,2,3,4,5 },*a = vec,b = 1,c;
 
    c = a[b];
    if (c == 2)
        printf("***** CATEGORY - 11 ***** O K *****\n");
      else
        printf("***** CATEGORY - 11 ***** N G *****\n");
  }
  {
    static char vec[5] = { 1,2,3,4,5 },*a = vec;
    unsigned long int b = 1,c;
 
    c = a[b];
    if (c == 2)
        printf("***** CATEGORY - 12 ***** O K *****\n");
      else
        printf("***** CATEGORY - 12 ***** N G *****\n");
  }
  {
    static char vec[5] = { 1,2,3,4,5 },*a = vec;
    unsigned short int b = 1,c;
 
    c = a[b];
    if (c == 2)
        printf("***** CATEGORY - 13 ***** O K *****\n");
      else
        printf("***** CATEGORY - 13 ***** N G *****\n");
  }
  {
    static int vec[5] = { 1,2,3,4,5 },*a = vec,c;
    enum { ea,eb,ec,ed,ee } en;
 
    en = eb;
    c = a[en];
    if (c == 2)
        printf("***** CATEGORY - 14 ***** O K *****\n");
      else
        printf("***** CATEGORY - 14 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}
