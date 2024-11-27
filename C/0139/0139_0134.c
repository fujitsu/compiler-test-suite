#include <stdlib.h>
#include <math.h>
  
 
 
 
 
 
 
 

 
#include <stdio.h>
#include <string.h>
 
struct tag1 { int            lint[6];
               unsigned long  uint[6];
               char           str[30];
               struct    {
                              char    stch[6][30];
                              int     stin[6];
               } st1;
               char          *strp;
               int           *intp;
 } st[3][3][3];
int main()
{
 struct tag1 wst1[2], wst2, *prt1, *prt2 ;
 static char str1[]="ABCDE-FGHIJ-KLMNO-PQRSTU";
 static char str2[]="ABCDE";
 static char str3[]="FGHIJ";
 static char str4[]="KLMNO";
 static char str5[]="PQRSTU";
 
 memset(st[0][0], 0x00, sizeof(st));
 
 printf("*****   TEST START  *****\n");
 
 memset(
   memset(
     memset(
       memset(
         memset(&st[2][2][2].lint[1], 0x11, sizeof(int)),
       0x22,sizeof(int)),
     0x33,sizeof(int)),
   0x44,sizeof(int)),
 0xff,sizeof(int));
 
 if (st[2][2][2].lint[1] == 0xffffffff)
     printf("     ###    NO.1  OK  ###\n");
 else
     printf("     ***    NO.1  NG  ***\n");
 
 
 prt1 = wst1;
 prt2 = &wst2;
 
 prt1->uint[1] = strlen(str1);
 prt1->uint[2] = strlen(str2);
 prt1->uint[3] = strlen(str3);
 prt1->uint[4] = strlen(str4);
 prt1->uint[5] = strlen(str5);
 
if (!memcmp(memcpy(st[0][0][0].str,
             memcpy(st[0][0][1].str,
              memcpy(st[0][0][2].str,
               memcpy(st[0][1][0].str,
                memcpy(st[0][1][1].str,
                 memcpy(st[0][1][2].str,
                  memcpy(st[0][2][0].str,
                   memcpy(st[0][2][1].str,
                    memcpy(st[0][2][2].str,
                     memcpy(st[1][0][0].str,
                      memcpy(st[1][0][1].str, str1,
                      prt1->uint[1]),
                     prt1->uint[1]),
                    prt1->uint[1]),
                   prt1->uint[1]),
                  prt1->uint[1]),
                 prt1->uint[1]),
                prt1->uint[1]),
               prt1->uint[1]),
              prt1->uint[1]),
             prt1->uint[1]),
            prt1->uint[1]),
            str1,prt1->uint[1]))
     printf("     ###    NO.2  OK  ###\n");
else
     printf("     ***    NO.2  NG  ***\n");
 
 
if (!strcmp(st[0][0][0].str, st[0][0][1].str) &&
    !strcmp(st[0][0][2].str, st[0][1][0].str) &&
    !strcmp(st[0][1][1].str, st[0][1][2].str) &&
    !strcmp(st[0][2][0].str, st[0][2][1].str) &&
    !strcmp(st[0][2][2].str, st[1][0][0].str) &&
    !strcmp(st[1][0][1].str, str1)                    )
     printf("     ###    NO.3  OK  ###\n");
else
     printf("     ***    NO.3  NG  ***\n");
 
 
printf("*****   TEST ENDED  *****\n");
exit (0);
}
