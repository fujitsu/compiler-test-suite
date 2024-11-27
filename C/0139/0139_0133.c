#include <stdlib.h>
#include <math.h>
  
 
 
 
 
 
 
 

#include <stdio.h>
#include <string.h>
 
struct tag1 { int            lint[3];
               unsigned long  uint[5];
               char           str[30];
               char          *strp;
               int           *intp;
 } st,*stp;
int main()
{
 struct tag1 wst1, wst2, *prt1, *prt2 ;
 static char str1[]="ABCDEFG GTS-t TYPE M";
 static char str2[]="HI-7 JK-X";
 
 int       *p, i, n ;
 char      *cp1, *cp2, c[30];
 
 printf("*****   TEST START  *****\n");
 
 memset(&wst1, 0x00, sizeof(wst1));
 memset(&wst2, 0x00, sizeof(wst2));
 memset(&st  , 0x00, sizeof(st  ));
 memset(c    , 0x00, sizeof(c   ));
 prt1 = &wst1;
 prt2 = &wst2;
 stp  = &st;
 wst1.strp = str1;
 strcpy(prt1->str, str2);
 for (i=0; i<3; i++) {
     wst1.lint[i] = i*1000+1;
 }
 n = 1;
 
 memcpy(c, prt1->strp, 20);
 memcpy(c, prt1->str, 9);
 
 if (!strcmp(c, "HI-7 JK-XTS-t TYPE M"))
     printf("     ###  INLFUNC4  NO.1  OK  ###\n");
 else
     printf("     ***  INLFUNC4  NO.1  NG  ***\n");
 
 i = n;
 p = &prt2->lint[i] ;
 memcpy(p,&i,i+3);
 if (*p == i)
     printf("     ###  INLFUNC4  NO.2  OK  ###\n");
 else
     printf("     ***  INLFUNC4  NO.2  NG  ***\n");
 
 printf("*****   TEST ENDED  *****\n");
exit (0);
 }
