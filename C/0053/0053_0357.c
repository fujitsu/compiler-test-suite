#include<stdio.h>
    int  i120=0 ;
    int  i121=0 ;
    int  i122=0 ;
    int  i123=0 ;
    int  idxi=1 ;
int i12 (void);
int 
main (void)
  {
    printf("*** \n");
    if (i120)
 addr1:
     i121++;
    else
     i122++;
    if (i122==1 && i121==0)
     printf("*** \n");
    else
     printf("*** \n");
    i121=0;
    i122=0;
    if (i120)
 addr2:
     i121++;
    else
     {
     i122++;
     }
    if (i122==1 && i121==0)
     printf("*** \n");
    else
     printf("*** \n");
    i121=0;
    i122=1;
    if (i120)
 test3:
     i121++;
    else
     if (i122)
      i122++;
     else
      i121++;
    if (i122==2 && i121==0)
      printf("*** \n");
    else
      printf("*** \n");
    i121=0;
    i122=1;
    if (i120)
 addr4:
     i121++;
    else
     switch (i122) {
      case 1 :
           i122++;
     }
    if (i122==2 && i121==0)
      printf("*** \n");
    else
      printf("*** \n");
    i121=0;
    i122=0;
    if (i120)
 addr5:
     i121++;
    else
     while (i122<4)
     i122++;
    if (i122==4 && i121==0)
      printf("*** \n");
    else
      printf("*** \n");
    i121=0;
    i122=0;
    if (i120)
 addr6:
     i121++;
    else
     for (idxi=1;  i122<4;  idxi++)
     i122++;
    if (i122==4 && i121==0)
      printf("*** \n");
    else
      printf("*** \n");
    i121=0;
    i122=0;
    if (i120)
 addr7:
     i121++;
    else
     do
     i122++;
     while (i122<4);
    if (i122==4 && i121==0)
      printf("*** \n");
    else
      printf("*** \n");
    i121=0;
    i122=0;
    if (i120)
 addr8:
     i121++;
    else
     goto it;
     printf("*** \n");
     goto where9;
 it:
     printf("*** \n");
 where9:
   i121=0;
    if (i120)
 addr9:
     i121++;
    else
     ;
    if (i121==0)
      printf("*** \n");
    else
      printf("*** \n");
    i121=0;
    if (i120)
 addr10:
     i121++;
    else
 pass:
     i122++;
    if (i122==1 && i121==0)
      printf("*** \n");
    else
      printf("*** \n");
    i121=0;
    i122=0;
    if (i12()==0)
      printf("*** \n");
    else
      printf("*** \n");
    i122=0;
   printf("*** \n");
 }
 int 
i12 (void)
 {
    int  i120=0;
    if (i120)
 addr11:
     i120++;
    else
     return(i120);
    return(i120);
 }
