#include<stdio.h>
int i3 (void);
    int  i180=1 ;
    int  i181=1 ;
    int  i182=0 ;
    int  i183=0 ;
    int  idxi=1 ;
int 
main (void)
  {
    printf("*** \n");
    if (i180)
     if (i181)
      i182++;
     else
      i181++;
    else
     i181++;
    if (i182==1 && i181==1)
     printf("*** \n");
    else
     printf("*** \n");
    i181=1;
    i182=0;
    if (i180)
     if (i181)
      i182++;
     else
      i181++;
    else
     {
     i181++;
     }
    if (i182==1 && i181==1)
     printf("*** \n");
    else
     printf("*** \n");
    i181=1;
    i182=0;
    if (i180)
     if (i181)
      i182++;
     else
      i181++;
    else
     if (i182)
      i181++;
     else
      i181++;
    if (i182==1 && i181==1)
      printf("*** \n");
    else
      printf("*** \n");
    i181=1;
    i182=0;
    if (i180)
     if (i181)
      i182++;
     else
      i181++;
    else
     switch (i182) {
      case 1 :
           i181++;
     }
    if (i182==1 && i181==1)
      printf("*** \n");
    else
      printf("*** \n");
    i181=1;
    i182=0;
    if (i180)
     if (i181)
      i182++;
     else
      i181++;
    else
     while (i182<4)
     i181++;
    if (i182==1 && i181==1)
      printf("*** \n");
    else
      printf("*** \n");
    i181=1;
    i182=0;
    if (i180)
     if (i181)
      i182++;
     else
      i181++;
    else
     for (idxi=1;  i182<4;  idxi++)
     i181++;
    if (i182==1 && i181==1)
      printf("*** \n");
    else
      printf("*** \n");
    i181=1;
    i182=0;
    if (i180)
     if (i181)
      i182++;
     else
      i181++;
    else
     do
     i182++;
     while (i182<4);
    if (i182==1 && i181==1)
      printf("*** \n");
    else
      printf("*** \n");
    i181=1;
    i182=0;
    if (i180)
     if (i181)
      i182++;
     else
      i181++;
    else
     goto it;
    if (i182==1 && i181==1)
     printf("*** \n");
    else
 it:
     printf("*** \n");
    i181=1;
    i182=0;
    if (i180)
     if (i181)
      i182++;
     else
      i181++;
    else
     ;
    if (i182==1 && i181==1)
      printf("*** \n");
    else
      printf("*** \n");
    i181=1;
    i182=0;
    if (i180)
     if (i181)
      i182++;
     else
      i181++;
    else
 pass:
     i181++;
    if (i182==1 && i181==1)
      printf("*** \n");
    else
      printf("*** \n");
    i181=1;
    i182=0;
    if (i3()==2)
      printf("*** \n");
    else
      printf("*** \n");
    i181=0;
    i182=0;
   printf("*** \n");
 }
 int 
i3 (void)
 {
    int  i180=1;
    int  i181=1;
    if (i180)
     if (i181)
      i181++;
     else
      i181++;
    else
     return(0);
    return(i181);
  }
