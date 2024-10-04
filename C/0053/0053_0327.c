#include<stdio.h>
int f0210 (void);
    int  f020=0 ;
    int  f021=0 ;
    int  f022=0 ;
    int  f023=0 ;
    int  idxf=0 ;
int 
main (void)
  {
   printf("*** \n");
    for (;  idxf<4;  )
    {
     {
     f020++;
     }
     break;
    }
    if (f020==1)
     printf("*** \n");
    else
     printf("*** \n");
    f020=0;
    for (;  idxf<4;  )
    {
    f020++;
    break;
    }
    if (f020==1)
     printf("*** \n");
    else
     printf("*** \n");
    f020=1;
    for (;  idxf<4;  )
    {
    if (f020)
     f020++;
    break;
    }
    if (f020==2)
     printf("*** \n");
    else
     printf("*** \n");
    f020=1;
    for (;  idxf<4;  )
    {
    switch (f020)
     case 1 :
          f020++;
     break;
    }
    if (f020==2)
     printf("*** \n");
    else
     printf("*** \n");
    f020=1;
    for (;  idxf<4;  )
    {
    while (f020<4)
     f020++;
    break;
    }
    if (f020==4)
     printf("*** \n");
    else
     printf("*** \n");
    f020=0;
    for (;  idxf<4;  )
    {
    for (f020=1;  f021<4;  f020++)
    f021++;
    break;
    }
    if (f021==4)
     printf("*** \n");
    else
     printf("*** \n");
    f020=0;
    for (;  idxf<4;  )
    goto  f0207;
     printf("*** \n");
     goto f0207skp;
 f0207:
     printf("*** \n");
 f0207skp:
    f020=0;
    for (;  idxf<4;  )
    break;
    if (idxf==0)
     printf("*** \n");
    else
     printf("*** \n");
    if (f0210()==0)
     printf("*** \n");
    else
     printf("*** \n");
    f020=0;
    for (;  idxf<4;  )
    {
    do
    f020++;
    while (f020<4);
    break;
    }
    if (f020==4)
     printf("*** \n");
    else
     printf("*** \n");
    f020=0;
    for (;  idxf<4;  )
    {
    ;
    break;
    }
    if (idxf==0)
     printf("*** \n");
    else
     printf("*** \n");
    f020=0;
    for (;  idxf<4;  )
    {
 f0212:
    f020++;
    break;
    }
    if (f020==1)
     printf("*** \n");
    else
     printf("*** \n");
    f020=0;
   printf("*** \n");
 }
 int 
f0210 (void)
 {
    for (;  idxf<4;  )
    return(idxf);
 }
