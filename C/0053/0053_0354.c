#include<stdio.h>
int i9 (void);
    int  i090=0 ;
    int  i091=0 ;
    int  i092=0 ;
    int  i093=0 ;
    int  idxi=1 ;
int 
main (void)
  {
    printf("*** \n");
    if (i090)
     goto where2;
    else
     i092++;
    if (i092==1)
     printf("*** \n");
    else
 where2:
     printf("*** \n");
    i092=0;
    if (i090)
     goto where3;
    else
     {
     i092++;
     }
    if (i092==1)
     printf("*** \n");
    else
  where3:
     printf("*** \n");
    i092=1;
    if (i090)
      goto where4;
    else
     if (i092)
      i092++;
     else
      i091++;
    if (i092==2 && i091==0)
      printf("*** \n");
    else
 where4:
      printf("*** \n");
    i091=0;
    i092=1;
    if (i090)
     goto where5;
    else
     switch (i092) {
      case 1 :
           i092++;
     }
    if (i092==2)
      printf("*** \n");
    else
 where5:
      printf("*** \n");
    i092=0;
    if (i090)
     goto where6;
    else
     while (i092<4)
     i092++;
    if (i092==4)
      printf("*** \n");
    else
 where6:
      printf("*** \n");
    i092=0;
    if (i090)
     goto where7;
    else
     for (idxi=1;  i092<4;  idxi++)
     i092++;
    if (i092==4)
      printf("*** \n");
    else
 where7:
      printf("*** \n");
    i092=0;
    if (i090)
     goto where8;
    else
     do
     i092++;
     while (i092<4);
    if (i092==4)
      printf("*** \n");
    else
 where8:
      printf("*** \n");
    i092=0;
    if (i090)
     goto where9;
    else
     goto it;
 where9:
     printf("*** \n");
     goto skp;
 it:
     printf("*** \n");
 skp:
    if (i090)
     goto where10;
    else
     ;
    if (idxi)
      printf("*** \n");
    else
 where10:
      printf("*** \n");
    if (i090)
     goto where11;
    else
 pass:
     i092++;
    if (i092==1)
      printf("*** \n");
    else
 where11:
      printf("*** \n");
    i092=0;
    if (i9()==0)
      printf("*** \n");
    else
      printf("*** \n");
    i092=0;
   printf("*** \n");
 }
 int 
i9 (void)
 {
    int  i090=0;
    if (i090)
     goto where12;
    else
     return(i090);
 where12:
   ;
 }
