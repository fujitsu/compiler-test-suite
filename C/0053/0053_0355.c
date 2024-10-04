#include<stdio.h>
    int  i100=0 ;
    int  i101=0 ;
    int  i102=0 ;
    int  i103=0 ;
    int  idxi=1 ;

int i10 (void);
int 
main (void)
  {
    printf("*** \n");
    if (i100)
     return 0;
    else
     i102++;
    if (i102==1)
     printf("*** \n");
    else
     printf("*** \n");
    i102=0;
    if (i100)
     return 0;
    else
     {
     i102++;
     }
    if (i102==1)
     printf("*** \n");
    else
     printf("*** \n");
    i102=1;
    if (i100)
      return 0;
    else
     if (i102)
      i102++;
     else
      i101++;
    if (i102==2 && i101==0)
      printf("*** \n");
    else
      printf("*** \n");
    i101=0;
    i102=1;
    if (i100)
     return 0;
    else
     switch (i102) {
      case 1 :
           i102++;
     }
    if (i102==2)
      printf("*** \n");
    else
      printf("*** \n");
    i102=0;
    if (i100)
     return 0;
    else
     while (i102<4)
     i102++;
    if (i102==4)
      printf("*** \n");
    else
      printf("*** \n");
    i102=0;
    if (i100)
     return 0;
    else
     for (idxi=1;  i102<4;  idxi++)
     i102++;
    if (i102==4)
      printf("*** \n");
    else
      printf("*** \n");
    i102=0;
    if (i100)
     return 0;
    else
     do
     i102++;
     while (i102<4);
    if (i102==4)
      printf("*** \n");
    else
      printf("*** \n");
    i102=0;
    if (i100)
     return 0;
    else
     goto it;
     printf("*** \n");
     goto where9;
 it:
     printf("*** \n");
 where9:
    if (i100)
     return 0;
    else
     ;
    if (idxi)
      printf("*** \n");
    else
      printf("*** \n");
    if (i100)
     return 0;
    else
 pass:
     i102++;
    if (i102==1)
      printf("*** \n");
    else
      printf("*** \n");
    i102=0;
    if (i10()==0)
      printf("*** \n");
    else
      printf("*** \n");
   printf("*** \n");
 }
 int 
i10 (void)
 {
    int i100=0;
    if (i100)
     return 0;
    else
     return(i100);
  }
