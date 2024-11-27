#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

#include <string.h>
int sub();

char *a;
static char *b="@abcdefghijklmn";
static char **c=&b;
char *e="this is a pen.";
int f=12345;
int *g=&f;
static double h=-3.141592653;
static double *i=&h;
int main()
 {
  static double *a[3];
  static char *b="check string\n\n";
  static char **c=&b;
  static int f=54321;
  static int *g=&f;
  printf("* TP=SCPIN03 ENTERED *\n");
  if(strcmp(b,"check string\n\n")==0)
                                printf(" ** SCPIN03.01 OK **\n");
                           else printf(" ** SCPIN03.01 NG **\n");
  if(c==&b)                     printf(" ** SCPIN03.02 OK **\n");
                           else printf(" ** SCPIN03.02 NG **\n");
  if(g==&f)                     printf(" ** SCPIN03.03 OK **\n");
                           else printf(" ** SCPIN03.03 NG **\n");
  printf("* SCPIN03 IS GOING TO CALL SUB.*\n");
  sub();
  printf("  * SCPIN03 ENDED *\n\n");
exit (0);
 }

int sub()
 {
  if(strcmp(b,"@abcdefghijklmn")==0)
                                printf(" ** SCPIN03.04 OK **\n");
                           else printf(" ** SCPIN03.04 NG **\n");
  if(c==&b)                     printf(" ** SCPIN03.05 OK **\n");
                           else printf(" ** SCPIN03.05 NG **\n");
  if(strcmp(e,"this is a pen.")==0)
                                printf(" ** SCPIN03.06 OK **\n");
                           else printf(" ** SCPIN03.06 NG **\n");
  if(g==&f)                     printf(" ** SCPIN03.07 OK **\n");
                           else printf(" ** SCPIN03.07 NG **\n");
  if(i==&h)                     printf(" ** SCPIN03.08 OK **\n");
                           else printf(" ** SCPIN03.08 NG **\n");
 }
