 
#include <stdio.h>
#include <string.h>
 
 struct tag1 { int          size  ;
                int              a2;
                short            a3;
                char            str[30];
                char             a5;
                struct    {
                              short            b1[2];
                              short            b2[2];
                              long             b3[3];
                } st1;
                char            *p1;
                int             *p2;
 } st[2];
int main()
{
 struct  tag1  wst1 ,wst2 ,*prt1 , *prt2 ;
 static char strl1[]="abcdefghijklmnopqrstuvwxyz111", *cp ;
 static char strl2[]="weight 3000gt twincam 24", *tp ;
 
 int  *p , i ;
 
 printf("*****  test start *****\n");

 memset(st,'0',sizeof(st));
 st[0].size=sizeof(struct tag1);
 st[1].size=sizeof(struct tag1);
 memcpy(&wst1,st,st[0].size);
 memcpy(&wst2,&st[1],st[1].size);
 prt1=&st[1];
 prt2=&st[0];
 
 strcpy(prt1->str,"abcdefghijklmnopqrstuvwxyz111");
 strcpy(prt2->str,"weight 3000gt twincam 24");
 
 if (!strcmp(prt1->str,strl1))
   printf("########  INLFUNC1  NO.1  OK  ##########\n");
 else
   printf("********  INLFUNC1  NO.1  NG  **********\n");
 
 if (!strcmp(prt2->str,strl2))
   printf("########  INLFUNC1  NO.2  OK  ##########\n");
 else
   printf("********  INLFUNC1  NO.2  NG  **********\n");
 
 
 cp = memchr(prt1->str,'y', st[0].st1.b1[0]=30);
 cp+=1;
 if (!strcmp(&prt1->str[25],cp))
   printf("########  INLFUNC1  NO.3  OK  ##########\n");
 else
   printf("********  INLFUNC1  NO.3  NG  **********\n");
 
 tp = memchr(prt2->str,'3', st[1].st1.b1[0]=25);
 tp+=1;
 if (!strcmp(&prt2->str[8],tp))
   printf("########  INLFUNC1  NO.4  OK  ##########\n");
 else
   printf("********  INLFUNC1  NO.4  NG  **********\n");
 
 if (strlen(prt1->str)==29)
   printf("########  INLFUNC1  NO.5  OK  ##########\n");
 else
   printf("********  INLFUNC1  NO.5  NG  **********\n");
 
 if (strlen(prt2->str)==24)
   printf("########  INLFUNC1  NO.6  OK  ##########\n");
 else
   printf("********  INLFUNC1  NO.6  NG  **********\n");
 
 if (!memcmp(&prt1->str[25],cp,4))
   printf("########  INLFUNC1  NO.7  OK  ##########\n");
 else
   printf("********  INLFUNC1  NO.7  NG  **********\n");
 
 if (!memcmp(&prt2->str[8],tp,15))
   printf("########  INLFUNC1  NO.8  OK  ##########\n");
 else
   printf("********  INLFUNC1  NO.8  NG  **********\n");
 
 printf("*****  test ended *****\n");
 }
