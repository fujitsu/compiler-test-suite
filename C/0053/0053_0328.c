#include<stdio.h>
int f0310 (void);
    int  f030=0 ;
    int  f031=0 ;
    int  f032=0 ;
    int  f033=0 ;
    int  idxf=0 ;
int 
main (void)
  {
   printf("*** \n");
    for (;  ;  idxf++)
    {
     {
     f030++;
     }
     break;
    }
    if (f030==1)
     printf("*** \n");
    else
     printf("*** \n");
    f030=0;
    for (;  ;  idxf++)
    {
    f030++;
    break;
    }
    if (f030==1)
     printf("*** \n");
    else
     printf("*** \n");
    f030=1;
    for (;  ;  idxf++)
    {
    if (f030)
     f030++;
    break;
    }
    if (f030==2)
     printf("*** \n");
    else
     printf("*** \n");
    f030=1;
    for (;  ;  idxf++)
    {
    switch (f030)
     case 1 :
          f030++;
     break;
    }
    if (f030==2)
     printf("*** \n");
    else
     printf("*** \n");
    f030=1;
    for (;  ;  idxf++)
    {
    while (f030<4)
     f030++;
    break;
    }
    if (f030==4)
     printf("*** \n");
    else
     printf("*** \n");
    f030=0;
    for (;  ;  idxf++)
    {
    for (f030=1;  f031<4;  f030++)
    f031++;
    break;
    }
    if (f031==4)
     printf("*** \n");
    else
     printf("*** \n");
    f030=0;
    for (;  ;  idxf++)
    goto  f0307;
     printf("*** \n");
     goto f0307skp;
 f0307:
     printf("*** \n");
 f0307skp:
    f030=0;
    for (;  ;  idxf++)
    break;
    if (idxf==0)
     printf("*** \n");
    else
     printf("*** \n");
    if (f0310()==0)
     printf("*** \n");
    else
     printf("*** \n");
    f030=0;
    for (;  ;  idxf++)
    {
    do
    f030++;
    while (f030<4);
    break;
    }
    if (f030==4)
     printf("*** \n");
    else
     printf("*** \n");
    f030=0;
    for (;  ;  idxf++)
    {
    ;
    break;
    }
    if (idxf==0)
     printf("*** \n");
    else
     printf("*** \n");
    f030=0;
    for (;  ;  idxf++)
    {
 f0312:
    f030++;
    break;
    }
    if (f030==1)
     printf("*** \n");
    else
     printf("*** \n");
    f030=0;
   printf("*** \n");
 }
 int 
f0310 (void)
 {
    for (;  ;  idxf++)
    return(idxf);
 }
