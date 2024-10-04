#include<stdio.h>
    int  i110=0 ;
    int  i111=0 ;
    int  i112=0 ;
    int  i113=0 ;
    int  idxi=1 ;
int i11 (void);
int 
main (void)
  {
    printf("*** \n");
    if (i110)
     ;
    else
     i112++;
    if (i112==1)
     printf("*** \n");
    else
     printf("*** \n");
    i112=0;
    if (i110)
     ;
    else
     {
     i112++;
     }
    if (i112==1)
     printf("*** \n");
    else
     printf("*** \n");
    i112=1;
    i113=0;
    if (i110)
      ;
    else
     if (i112)
      i112++;
     else
      i111++;
    if (i112==2 && i111==0)
      printf("*** \n");
    else
      printf("*** \n");
    i111=0;
    i112=1;
    if (i110)
     ;
    else
     switch (i112) {
      case 1 :
           i112++;
     }
    if (i112==2)
      printf("*** \n");
    else
      printf("*** \n");
    i112=0;
    if (i110)
     ;
    else
     while (i112<4)
     i112++;
    if (i112==4)
      printf("*** \n");
    else
      printf("*** \n");
    i112=0;
    if (i110)
     ;
    else
     for (idxi=1;  i112<4;  idxi++)
     i112++;
    if (i112==4)
      printf("*** \n");
    else
      printf("*** \n");
    i112=0;
    if (i110)
     ;
    else
     do
     i112++;
     while (i112<4);
    if (i112==4)
      printf("*** \n");
    else
      printf("*** \n");
    i112=0;
    if (i110)
     ;
    else
     goto it;
     printf("*** \n");
     goto where9;
 it:
     printf("*** \n");
 where9:
    if (i110)
     ;
    else
     ;
    if (idxi)
      printf("*** \n");
    else
      printf("*** \n");
    if (i110)
     ;
    else
 pass:
     i112++;
    if (i112==1)
      printf("*** \n");
    else
      printf("*** \n");
    i112=0;
    if (i11()==0)
      printf("*** \n");
    else
      printf("*** \n");
    i112=0;
   printf("*** \n");
 }
 int 
i11 (void)
 {
    int  i110=0;
    if (i110)
     ;
    else
     return(i110);
    return(1);
 }
