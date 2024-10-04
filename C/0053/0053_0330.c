#include<stdio.h>
int f0510 (void);
    int  f050=0 ;
    int  f051=0 ;
    int  f052=0 ;
    int  f053=0 ;
    int  idxf=0 ;
int 
main (void)
  {
   printf("*** \n");
    for (idxf=1;    ;  idxf++)
    {
     {
     f050++;
     }
     break;
    }
    if (f050==1 && idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f050=0;
    for (idxf=1;    ;  idxf++)
    {
    f050++;
    break;
    }
    if (f050==1 && idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f050=1;
    for (idxf=1;    ;  idxf++)
    {
    if (f050)
     f050++;
    break;
    }
    if (f050==2 && idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f050=1;
    for (idxf=1;    ;  idxf++)
    {
    switch (f050)
     case 1 :
          f050++;
     break;
    }
    if (f050==2 && idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f050=1;
    for (idxf=1;    ;  idxf++)
    {
    while (f050<4)
     f050++;
    break;
    }
    if (f050==4 && idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f050=0;
    for (idxf=1;    ;  idxf++)
    {
    for (f050=1;  f051<4;  f050++)
    f051++;
    break;
    }
    if (f051==4 && idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f050=0;
    for (idxf=1;    ;  idxf++)
    goto  f0507;
     printf("*** \n");
     goto f0507skp;
 f0507:
     printf("*** \n");
 f0507skp:
    f050=0;
    for (idxf=1;    ;  idxf++)
    break;
    if (idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    if (f0510()==1)
     printf("*** \n");
    else
     printf("*** \n");
    f050=0;
    for (idxf=1;    ;  idxf++)
    {
    do
    f050++;
    while (f050<4);
    break;
    }
    if (f050==4 && idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f050=0;
    for (idxf=1;    ;  idxf++)
    {
    ;
    break;
    }
    if (idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f050=0;
    for (idxf=1;    ;  idxf++)
    {
 f0512:
    f050++;
    break;
    }
    if (f050==1 && idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f050=0;
   printf("*** \n");
 }
 int 
f0510 (void)
 {
    for (idxf=1;    ;  idxf++)
    return(idxf);
 }
