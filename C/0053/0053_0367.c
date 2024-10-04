#include<stdio.h>
int i7 (void);
    int  i220=1 ;
    int  i221=0 ;
    int  i222=0 ;
    int  i223=0 ;
    int  idxi=1 ;
int 
main (void)
  {
    printf("*** \n");
    if (i220)
     i221++;
    else
     i222++;
    if (i222==0 && i221==1)
     printf("*** \n");
    else
     printf("*** \n");
    i221=0;
    i222=0;
    if (i220)
     i221++;
    else
     {
     i222++;
     }
    if (i222==0 && i221==1)
     printf("*** \n");
    else
     printf("*** \n");
    i221=0;
    i222=0;
    if (i220)
      i221++;
    else
     if (i222)
      i222++;
     else
      i222++;
    if (i222==0 && i221==1)
      printf("*** \n");
    else
      printf("*** \n");
    i221=0;
    i222=1;
    if (i220)
     i221++;
    else
     switch (i222) {
      case 1 :
           i222++;
     }
    if (i222==1 && i221==1)
      printf("*** \n");
    else
      printf("*** \n");
    i221=0;
    i222=0;
    if (i220)
     i221++;
    else
     while (i222<4)
     i222++;
    if (i222==0 && i221==1)
      printf("*** \n");
    else
      printf("*** \n");
    i221=0;
    i222=0;
    if (i220)
     i221++;
    else
     for (idxi=1;  i222<4;  idxi++)
     i222++;
    if (i222==0 && i221==1)
      printf("*** \n");
    else
      printf("*** \n");
    i221=0;
    i222=0;
    if (i220)
     i221++;
    else
     do
     i222++;
     while (i222<4);
    if (i222==0 && i221==1)
      printf("*** \n");
    else
      printf("*** \n");
    i221=0;
    i222=0;
    if (i220)
     i221++;
    else
     goto it;
    if (i221==1)
     printf("*** \n");
    else
 it:
     printf("*** \n");
 it2:
     i221=0;
    if (i220)
     i221++;
    else
     ;
    if (i221==1)
      printf("*** \n");
    else
      printf("*** \n");
    i221=0;
    if (i220)
     i221++;
    else
 pass:
     i222++;
    if (i222==0 && i221==1)
      printf("*** \n");
    else
      printf("*** \n");
    i221=0;
    i222=0;
    if (i7()==1)
      printf("*** \n");
    else
      printf("*** \n");
    i221=0;
    i222=0;
   printf("*** \n");
 }
 int 
i7 (void)
 {
    int i220=1;
    int i221=0;
    if (i220)
     i221++;
    else
     return(i221);
    return(i221);
 }
