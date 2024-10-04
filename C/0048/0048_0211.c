 
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
 };
int main()
{
 struct tag1 wst1[10], wst2, *prt1, *prt2 ;
 static char str1[]="APPLE-GRAPE-MELON-BANANA";
 static char str2[]="APPLE";
 static char str3[]="GRAPE";
 static char str4[]="MELON";
 static char str5[]="BANANA";
 int i;
 
printf("*****   TEST START  *****\n");
 
memset( wst1, 0x00, sizeof(wst1));
memset(&wst2, 0x00, sizeof(wst2));
 
prt1 = wst1;
prt2 = &wst2;
 
prt2->uint[1] = strlen(str1);
prt2->uint[2] = strlen(str2);
prt2->uint[3] = strlen(str3);
prt2->uint[4] = strlen(str4);
prt2->uint[5] = strlen(str5);
 
for(i = 0 ; i < 10 ; i ++) {
    memset((prt1+i)->str, 0x00, 30);
    if (i >= 1 && i <= 5)
        memcpy(prt2->st1.stch[i], str1, prt2->uint[i]);
}
 
if (!strcmp(strcpy(prt1->str,
                   (char *)memcpy((prt1+1)->str,
                                  memchr(prt2->st1.stch[1],
                                         'A',
                                         prt2->uint[1]),
                                  prt2->uint[2])),
            "APPLE"))
     printf("     ###    NO.1  OK  ###\n");
 else
     printf("     ***    NO.1  NG  ***\n");
 
 
if (!memcmp(memmove((prt1+3)->str,
                    memmove((prt1+4)->str,
                            memchr(prt2->st1.stch[1],
                                   'G',
                                   prt2->uint[1]),
                            5),
                    5),
            "GRAPE",
            prt2->uint[3]))
     printf("     ###    NO.2  OK  ###\n");
else
     printf("     ***    NO.2  NG  ***\n");
 
 
if (!memcmp(strcpy((prt1+5)->str,
                    memcpy((prt1+6)->str,
                           memchr(prt2->st1.stch[1],
                                  'M',
                                  prt2->uint[1]),
                           prt2->uint[4])),
            "MELON",
            prt2->uint[3]))
     printf("     ###    NO.3  OK  ###\n");
else
     printf("     ***    NO.3  NG  ***\n");
 
 
printf("*****   TEST ENDED  *****\n");
}
