#include  <stdio.h>
#include <string.h>
void sub();

char *a;
static char *b="@abcdefghijklmn";
static char **c=&b;
char *e="this is a pen.";
int f=12345;
int *g=&f;
static double h=-3.141592653589793238;
static double *i=&h;
int main()
 {
  static double *a[3];
  static char *b="check string\n\n";
  static char **c=&b;
  static int f=54321;
  static int *g=&f;
  printf("* ENTERED *\n");
  if(strcmp(b,"check string\n\n")==0)
                                printf(" ** 01 OK **\n");
                           else printf(" ** 01 NG **\n");
  if(c==&b)                     printf(" ** 02 OK **\n");
                           else printf(" ** 02 NG **\n");
  if(g==&f)                     printf(" ** 03 OK **\n");
                           else printf(" ** 03 NG **\n");
  printf("* GOING TO CALL SUB.*\n");
  sub();
  printf("  * ENDED *\n\n");
 }

void sub()
 {
  if(strcmp(b,"@abcdefghijklmn")==0)
                                printf(" ** 04 OK **\n");
                           else printf(" ** 04 NG **\n");
  if(c==&b)                     printf(" ** 05 OK **\n");
                           else printf(" ** 05 NG **\n");
  if(strcmp(e,"this is a pen.")==0)
                                printf(" ** 06 OK **\n");
                           else printf(" ** 06 NG **\n");
  if(g==&f)                     printf(" ** 07 OK **\n");
                           else printf(" ** 07 NG **\n");
  if(i==&h)                     printf(" ** 08 OK **\n");
                           else printf(" ** 08 NG **\n");
 }
