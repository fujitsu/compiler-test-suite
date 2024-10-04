#include<stdio.h>
int c2 (void);
    int  i020=0 ;
    int  i021=0 ;
    int  i022=0 ;
    int  i023=0 ;
    int  idxi=1 ;
int 
main (void)
  {
    printf("*** \n");
    if (i020)
     {
     i021=0;
     }
    else
     i021++;
    if (i021==1)
      printf("*** \n");
    else
      printf("*** \n");
    i021=0;
    if (i020)
     {
     i021=0;
     }
    else
     {
     i021++;
     }
    if (i021==1)
     printf("*** \n");
    else
     printf("*** \n");
    i021=1;
    if (i020)
     {
     i021=0;
     }
    else
     if (i021)
      i021++;
     else
      i021=0;
    if (i021==2)
      printf("*** \n");
    else
      printf("*** \n");
    i021=1;
    i022=0;
    if (i020)
     i021=0;
    else
     switch (i021) {
      case 1 :
           i021++;
     }
    if (i021==2)
     printf("*** \n");
    else
     printf("*** \n");
    i021=0;
    i022=0;
    i023=0;
    if (i020)
     {
     i021=1;
     }
    else
     while (i022<4)
     i022++;
    if (i022==4 && i021==0)
     printf("*** \n");
    else
     printf("*** \n");
    i021=0;
    i022=0;
    if (i020)
     {
     i021=1;
     }
    else
     for (idxi=1;  i022<4;  idxi++)
     i022++;
    if (i022==4 && i021==0)
     printf("*** \n");
    else
     printf("*** \n");
    i021=0;
    i022=0;
    idxi=0;
    if (i020)
     {
     i021=1;
     }
    else
     do
     i022++;
     while (i022<4);
    if (i022==4 && i021==0)
     printf("*** \n");
    else
     printf("*** \n");
    i021=0;
    i022=0;
    idxi=0;
    if (i020)
     {
     i021=0;
     }
    else
     goto apoint;
     printf("*** \n");
     goto bpoint;
 apoint :
     printf("*** \n");
 bpoint :
    if (i020)
     {
     i021=1;
     }
    else
     ;
    if (i021==0)
     printf("*** \n");
    else
     printf("*** \n");
    i021=0;
    if (i020)
     {
     i021=0;
     }
    else
 that :
     i021++;
    if (i021==1)
     printf("*** \n");
    else
     printf("*** \n");
    i021=0;
    if (c2()==0)
     printf("*** \n");
    else
     printf("*** \n");
    i020=0;
   printf("*** \n");
 }
 int 
c2 (void)
 {
    int  i020=0;
    if (i020)
     {
     i020++;
     }
    else
     return(i020);
 }
