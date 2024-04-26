#include <stdio.h>
#include <string.h>
#include <math.h>
void sub();
int main()
{
 int i,j,k;
 static char ok[]=" ** SCPIN23.%02d OK **\n";
 static char ng[]=" xx SCPIN23.%02d NG xx\n";

 static char p[300] ={"ABCDEFGHIJKLMNOPQRSTUVWXYZ"};
 static char p1[300]={"01234567890123456789"};
 static char p2[300]={"ZYXWVUTSRQPONMLKJIHGFEDCBA"};
 static char p3[300]={"ZYXWVUTSRQPONMLKJIHGFEDCBA"};
 char *p4;

 printf("* ENTERED *\n");
 i=(100*20/10)*cos(0);

 p4=memchr(p1,'3',100);
 if( ((long)p4)-((long)p1)==3 )        printf(ok, 1);
                                                  else printf(ng, 1);
 k=memcmp(p2,p3,i);
 if( k==0 )                                            printf(ok, 2);
                                                  else printf(ng, 2);
 k=memcmp(p,p1,256);
 if( k>0 )                                             printf(ok, 3);
                                                  else printf(ng, 3);
 k=memcmp(p2,p3,257);
 if( k==0 )                                            printf(ok, 4);
                                                  else printf(ng, 4);

 p4=memcpy(p3,p2,i);
 if( p3[i-1]==p2[i-1] )                            printf(ok, 5);
                                                  else printf(ng, 5);
 p4=memcpy(p3,p2,256);
 if( p3[255]==p2[255] )                            printf(ok, 6);
                                                  else printf(ng, 6);
 p4=memcpy(p3,p2,257);
 if( p3[256]==p2[256] )                            printf(ok, 7);
                                                  else printf(ng, 7);

 p4=memset(p,'#',i);
 if( *(p+i-1)=='#' )                                   printf(ok, 8);
                                                  else printf(ng, 8);
 p4=memset(p,'*',256);
 if( *(p+255)=='*' )                                   printf(ok, 9);
                                                  else printf(ng, 9);
 p4=memset(p,'1',257);
 if( *(p+256)=='1' )                                   printf(ok,10);
                                                  else printf(ng,10);
 p4=memmove(p,p1,256);
 if( *p=='0' )                                         printf(ok,11);
                                                  else printf(ng,11);

 k=strcmp(p,p1);
 if( k==0 )                                            printf(ok,12);
                                                  else printf(ng,12);
 p4=strcpy(p,p1);
 if( *(p+3)==p1[3] )                                 printf(ok,13);
                                                  else printf(ng,13);
 k=strlen(p);
 if( k==20 )                                           printf(ok,14);
                                                  else printf(ng,14);

 printf("  * ENDED *\n\n");
}
