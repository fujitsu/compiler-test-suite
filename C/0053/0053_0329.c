#include<stdio.h>
int f0410 (void);
    int  f040=0 ;
    int  f041=0 ;
    int  f042=0 ;
    int  f043=0 ;
    int  idxf=0 ;
int 
main (void)
  {
   printf("*** \n");
    for (idxf=1;  idxf<4;  )
    {
     {
     f040++;
     }
     break;
    }
    if (f040==1 && idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f040=0;
    for (idxf=1;  idxf<4;  )
    {
    f040++;
    break;
    }
    if (f040==1 && idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f040=1;
    for (idxf=1;  idxf<4;  )
    {
    if (f040)
     f040++;
    break;
    }
    if (f040==2 && idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f040=1;
    for (idxf=1;  idxf<4;  )
    {
    switch (f040)
     case 1 :
          f040++;
     break;
    }
    if (f040==2 && idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f040=1;
    for (idxf=1;  idxf<4;  )
    {
    while (f040<4)
     f040++;
    break;
    }
    if (f040==4 && idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f040=0;
    for (idxf=1;  idxf<4;  )
    {
    for (f040=1;  f041<4;  f040++)
    f041++;
    break;
    }
    if (f041==4 && idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f040=0;
    for (idxf=1;  idxf<4;  )
    goto  f0407;
     printf("*** \n");
     goto f0407skp;
 f0407:
     printf("*** \n");
 f0407skp:
    f040=0;
    for (idxf=1;  idxf<4;  )
    break;
    if (idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    if (f0410()==1)
     printf("*** \n");
    else
     printf("*** \n");
    f040=0;
    for (idxf=1;  idxf<4;  )
    {
    do
    f040++;
    while (f040<4);
    break;
    }
    if (f040==4 && idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f040=0;
    for (idxf=1;  idxf<4;  )
    {
    ;
    break;
    }
    if (idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f040=0;
    for (idxf=1;  idxf<4;  )
    {
 f0412:
    f040++;
    break;
    }
    if (f040==1 && idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    f040=0;
   printf("*** \n");
 }
 int 
f0410 (void)
 {
    for (idxf=1;  idxf<4;  )
    return(idxf);
 }
