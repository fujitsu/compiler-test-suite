#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

#include <string.h>
int sub();

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
static double h=-3.141592653;
static double i=2.2360679;
static struct {char a;
                double b;
                unsigned int c1:2;
                unsigned int c2:1;
                unsigned int c3:7;}st1={'s',2469.11,2,1,0x1b};
int main()
 {
  static char a='@';
  static char b[]="FIJITSD lumiteu.\n";
  static char c=0x12;
  static int e=12345;
  static double f=1971.0219;
  printf("* TP=SCPIN02 ENTERED *\n");
  if(a=='@')                   printf(" ** SCPIN02.01 OK **\n");
                           else printf(" ** SCPIN02.01 NG **\n");
  if(strcmp(b,"FIJITSD lumiteu.\n")==0)
                                printf(" ** SCPIN02.02 OK **\n");
                           else printf(" ** SCPIN02.02 NG **\n");
  if(c==0x12)                   printf(" ** SCPIN02.03 OK **\n");
                           else printf(" ** SCPIN02.03 NG **\n");
  if(e==12345)                  printf(" ** SCPIN02.04 OK **\n");
                           else printf(" ** SCPIN02.04 NG **\n");
  if(f==1971.0219)              printf(" ** SCPIN02.05 OK **\n");
                           else printf(" ** SCPIN02.05 NG **\n");
  printf("* SCPIN02 IS GOING TO CALL SUB. *\n");
  sub();
  printf("  * SCPIN02 ENDED *\n\n");
exit (0);
 }

int sub()
 {
  if(a==0xab)                   printf(" ** SCPIN02.06 OK **\n");
                           else printf(" ** SCPIN02.06 NG **\n");
  if(strcmp(b,"@abcdefghijklmn")==0)
                                printf(" ** SCPIN02.07 OK **\n");
                           else printf(" ** SCPIN02.07 NG **\n");
  if(c=='x')                    printf(" ** SCPIN02.08 OK **\n");
                           else printf(" ** SCPIN02.08 NG **\n");
  if(strcmp(e,"this is a pen.")==0)
                                printf(" ** SCPIN02.09 OK **\n");
                           else printf(" ** SCPIN02.09 NG **\n");
  if(f=12345)                   printf(" ** SCPIN02.10 OK **\n");
                           else printf(" ** SCPIN02.10 NG **\n");
  if(g=54321)                   printf(" ** SCPIN02.11 OK **\n");
                           else printf(" ** SCPIN02.11 NG **\n");
  if(strcmp(s0.c1,"\n\t\b\0\012")==0)
                                printf(" ** SCPIN02.12 OK **\n");
                           else printf(" ** SCPIN02.12 NG **\n");
  if(s0.a1==0x123)              printf(" ** SCPIN02.13 OK **\n");
                           else printf(" ** SCPIN02.13 NG **\n");
  if(s0.a2==0)                  printf(" ** SCPIN02.14 OK **\n");
                           else printf(" ** SCPIN02.14 NG **\n");
  if(s0.a3==5)                  printf(" ** SCPIN02.15 OK **\n");
                           else printf(" ** SCPIN02.15 NG **\n");
  if(s0.c2==e)                  printf(" ** SCPIN02.16 OK **\n");
                           else printf(" ** SCPIN02.16 NG **\n");
  if(h==-3.141592653)  		printf(" ** SCPIN02.17 OK **\n");
                           else printf(" ** SCPIN02.17 NG **\n");
  if(i==2.2360679)              printf(" ** SCPIN02.18 OK **\n");
                           else printf(" ** SCPIN02.18 NG **\n");
  if(st1.a=='s')                printf(" ** SCPIN02.19 OK **\n");
                           else printf(" ** SCPIN02.19 NG **\n");
  if(st1.b==2469.11)            printf(" ** SCPIN02.20 OK **\n");
                           else printf(" ** SCPIN02.20 NG **\n");
  if(st1.c1==2)                 printf(" ** SCPIN02.21 OK **\n");
                           else printf(" ** SCPIN02.21 NG **\n");
  if(st1.c2==1)                 printf(" ** SCPIN02.22 OK **\n");
                           else printf(" ** SCPIN02.22 NG **\n");
  if(st1.c3==0x1b)              printf(" ** SCPIN02.23 OK **\n");
                           else printf(" ** SCPIN02.23 NG **\n");
  }
