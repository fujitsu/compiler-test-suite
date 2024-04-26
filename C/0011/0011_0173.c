#include  <stdio.h>
#include <string.h>
void sub();

unsigned char a=0xab;
static char b[]="@abcdefghijklmn";
static char c='x';
char e[20]="this is a pen.";
int f=12345;
int g=54321;
struct {char c1[10];
         unsigned int a1:9;
         unsigned int a2:1;
         unsigned int a3:3;
         char *c2;        }s0={"\n\t\b\0\012",0x123,0,5,e};
static double h=-3.141592653589793238;
static double i=2.2360679;
static struct {char a;
                double b;
                unsigned int c1:2;
                unsigned int c2:1;
                unsigned int c3:7;}st1={'s',2469.11,2,1,0x1b};
int main()
 {
  static char a='@';
  static char b[]="This is me.\n";
  static char c=0x12;
  static int e=12345;
  static double f=1971.0219;
  printf("* ENTERED *\n");
  if(a=='@')                   printf(" ** 01 OK **\n");
                           else printf(" ** 01 NG **\n");
  if(strcmp(b,"This is me.\n")==0)
                                printf(" ** 02 OK **\n");
                           else printf(" ** 02 NG **\n");
  if(c==0x12)                   printf(" ** 03 OK **\n");
                           else printf(" ** 03 NG **\n");
  if(e==12345)                  printf(" ** 04 OK **\n");
                           else printf(" ** 04 NG **\n");
  if(f==1971.0219)              printf(" ** 05 OK **\n");
                           else printf(" ** 05 NG **\n");
  printf("* GOING TO CALL SUB. *\n");
  sub();
  printf("  * ENDED *\n\n");
 }

void sub()
 {
  if(a==0xab)                   printf(" ** 06 OK **\n");
                           else printf(" ** 06 NG **\n");
  if(strcmp(b,"@abcdefghijklmn")==0)
                                printf(" ** 07 OK **\n");
                           else printf(" ** 07 NG **\n");
  if(c=='x')                    printf(" ** 08 OK **\n");
                           else printf(" ** 08 NG **\n");
  if(strcmp(e,"this is a pen.")==0)
                                printf(" ** 09 OK **\n");
                           else printf(" ** 09 NG **\n");
  if((f=12345))                   printf(" ** 10 OK **\n");
                           else printf(" ** 10 NG **\n");
  if((g=54321))                   printf(" ** 11 OK **\n");
                           else printf(" ** 11 NG **\n");
  if(strcmp(s0.c1,"\n\t\b\0\012")==0)
                                printf(" ** 12 OK **\n");
                           else printf(" ** 12 NG **\n");
  if(s0.a1==0x123)              printf(" ** 13 OK **\n");
                           else printf(" ** 13 NG **\n");
  if(s0.a2==0)                  printf(" ** 14 OK **\n");
                           else printf(" ** 14 NG **\n");
  if(s0.a3==5)                  printf(" ** 15 OK **\n");
                           else printf(" ** 15 NG **\n");
  if(s0.c2==e)                  printf(" ** 16 OK **\n");
                           else printf(" ** 16 NG **\n");
  if(h==-3.141592653589793238)  printf(" ** 17 OK **\n");
                           else printf(" ** 17 NG **\n");
  if(i==2.2360679)              printf(" ** 18 OK **\n");
                           else printf(" ** 18 NG **\n");
  if(st1.a=='s')                printf(" ** 19 OK **\n");
                           else printf(" ** 19 NG **\n");
  if(st1.b==2469.11)            printf(" ** 20 OK **\n");
                           else printf(" ** 20 NG **\n");
  if(st1.c1==2)                 printf(" ** 21 OK **\n");
                           else printf(" ** 21 NG **\n");
  if(st1.c2==1)                 printf(" ** 22 OK **\n");
                           else printf(" ** 22 NG **\n");
  if(st1.c3==0x1b)              printf(" ** 23 OK **\n");
                           else printf(" ** 23 NG **\n");
  }
