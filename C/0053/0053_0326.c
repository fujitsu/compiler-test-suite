#include<stdio.h>
int f0110 (void);
    int  f010=0 ;
    int  f011=0 ;
    int  f012=0 ;
    int  f013=0 ;
    int  idxf=0 ;
int 
main (void)
  {
   printf("*** \n");
    for (idxf=1;  ;  )
    {
     {
     f010++;
     }
     break;
    }
    if (f010==1 && idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f010=0;
    for (idxf=1;  ;  )
    {
    f010++;
    break;
    }
    if (f010==1 && idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f010=1;
    for (idxf=1;  ;  )
    {
    if (f010)
     f010++;
    break;
    }
    if (f010==2 && idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f010=1;
    for (idxf=1;  ;  )
    {
    switch (f010)
     case 1 :
          f010++;
     break;
    }
    if (f010==2 && idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f010=1;
    for (idxf=1;  ;  )
    {
    while (f010<4)
     f010++;
    break;
    }
    if (f010==4 && idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f010=0;
    for (idxf=1;  ;  )
    {
    for (f010=1;  f011<4;  f010++)
    f011++;
    break;
    }
    if (f011==4 && idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f010=0;
    for (idxf=1;  ;  )
    goto  f0107;
     printf("*** \n");
     goto f0107skp;
 f0107:
     printf("*** \n");
 f0107skp:
    f010=0;
    for (idxf=1;  ;  )
    break;
    if (idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    if (f0110()==1)
     printf("*** \n");
    else
     printf("*** \n");
    f010=0;
    for (idxf=1;  ;  )
    {
    do
    f010++;
    while (f010<4);
    break;
    }
    if (f010==4 && idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f010=0;
    for (idxf=1;  ;  )
    {
    ;
    break;
    }
    if (idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f010=0;
    for (idxf=1;  ;  )
    {
 f0112:
    f010++;
    break;
    }
    if (f010==1 && idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f010=0;
   printf("*** \n");
 }
 int 
f0110 (void)
 {
    for (idxf=1;  ;  )
    return(idxf);
 }
