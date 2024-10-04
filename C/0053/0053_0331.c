#include<stdio.h>
int f0610 (void);
    int  f060=0 ;
    int  f061=0 ;
    int  f062=0 ;
    int  f063=0 ;
    int  idxf=0 ;
int 
main (void)
  {
   printf("*** \n");
    for (  ;  idxf<4;  idxf++)
    {
     {
     f060++;
     }
     break;
    }
    if (f060==1 && idxf==0)
     printf("*** \n");
    else
     printf("*** \n");
    f060=0;
    for (  ;  idxf<4;  idxf++)
    {
    f060++;
    break;
    }
    if (f060==1 && idxf==0)
     printf("*** \n");
    else
     printf("*** \n");
    f060=1;
    for (  ;  idxf<4;  idxf++)
    {
    if (f060)
     f060++;
    break;
    }
    if (f060==2 && idxf==0)
     printf("*** \n");
    else
     printf("*** \n");
    f060=1;
    for (  ;  idxf<4;  idxf++)
    {
    switch (f060)
     case 1 :
          f060++;
     break;
    }
    if (f060==2 && idxf==0)
     printf("*** \n");
    else
     printf("*** \n");
    f060=1;
    for (  ;  idxf<4;  idxf++)
    {
    while (f060<4)
     f060++;
    break;
    }
    if (f060==4 && idxf==0)
     printf("*** \n");
    else
     printf("*** \n");
    f060=0;
    for (  ;  idxf<4;  idxf++)
    {
    for (f060=1;  f061<4;  f060++)
    f061++;
    break;
    }
    if (f061==4 && idxf==0)
     printf("*** \n");
    else
     printf("*** \n");
    f060=0;
    for (  ;  idxf<4;  idxf++)
    goto  f0607;
     printf("*** \n");
     goto f0607skp;
 f0607:
     printf("*** \n");
 f0607skp:
    f060=0;
    for (  ;  idxf<4;  idxf++)
    break;
    if (idxf==0)
     printf("*** \n");
    else
     printf("*** \n");
    if (f0610()==0)
     printf("*** \n");
    else
     printf("*** \n");
    f060=0;
    for (  ;  idxf<4;  idxf++)
    {
    do
    f060++;
    while (f060<4);
    break;
    }
    if (f060==4 && idxf==0)
     printf("*** \n");
    else
     printf("*** \n");
    f060=0;
    for (  ;  idxf<4;  idxf++)
    {
    ;
    break;
    }
    if (idxf==0)
     printf("*** \n");
    else
     printf("*** \n");
    f060=0;
    for (  ;  idxf<4;  idxf++)
    {
 f0612:
    f060++;
    break;
    }
    if (f060==1 && idxf==0)
     printf("*** \n");
    else
     printf("*** \n");
    f060=0;
   printf("*** \n");
 }
 int 
f0610 (void)
 {
    for (  ;  idxf<4;  idxf++)
    return(idxf);
 }
