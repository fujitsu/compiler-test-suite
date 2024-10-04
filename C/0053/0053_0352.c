#include<stdio.h>
int i7 (void);
    int  i070=0 ;
    int  i071=0 ;
    int  i072=0 ;
    int  i073=0 ;
    int  idxi=1 ;
int 
main (void)
  {
    printf("*** \n");
    if (i070)
     i071++;
    else
     i072++;
    if (i072==1 && i071==0)
     printf("*** \n");
    else
     printf("*** \n");
    i071=0;
    i072=0;
    if (i070)
     i071++;
    else
     {
     i072++;
     }
    if (i072==1 && i071==0)
     printf("*** \n");
    else
     printf("*** \n");
    i071=0;
    i072=1;
    if (i070)
      i071++;
    else
     if (i072)
      i072++;
     else
      i071++;
    if (i072==2 && i071==0)
      printf("*** \n");
    else
      printf("*** \n");
    i071=0;
    i072=1;
    if (i070)
     i071++;
    else
     switch (i072) {
      case 1 :
           i072++;
     }
    if (i072==2 && i071==0)
      printf("*** \n");
    else
      printf("*** \n");
    i071=0;
    i072=0;
    if (i070)
     i071++;
    else
     while (i072<4)
     i072++;
    if (i072==4 && i071==0)
      printf("*** \n");
    else
      printf("*** \n");
    i071=0;
    i072=0;
    if (i070)
     i071++;
    else
     for (idxi=1;  i072<4;  idxi++)
     i072++;
    if (i072==4 && i071==0)
      printf("*** \n");
    else
      printf("*** \n");
    i071=0;
    i072=0;
    if (i070)
     i071++;
    else
     do
     i072++;
     while (i072<4);
    if (i072==4 && i071==0)
      printf("*** \n");
    else
      printf("*** \n");
    i071=0;
    i072=0;
    if (i070)
     i071++;
    else
     goto it;
     printf("*** \n");
     goto it2;
 it:
    if (i071==0)
     printf("*** \n");
    else
     printf("*** \n");
 it2:
     i071=0;
    if (i070)
     i071++;
    else
     ;
    if (i071==0)
      printf("*** \n");
    else
      printf("*** \n");
    i071=0;
    if (i070)
     i071++;
    else
 pass:
     i072++;
    if (i072==1 && i071==0)
      printf("*** \n");
    else
      printf("*** \n");
    i071=0;
    i072=0;
    if (i7()==0)
      printf("*** \n");
    else
      printf("*** \n");
    i071=0;
    i072=0;
   printf("*** \n");
 }
 int 
i7 (void)
 {
    int i070=0;
    int i071=0;
    if (i070)
     i071++;
    else
     return(i071);
 }
