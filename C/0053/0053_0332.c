#include<stdio.h>
int f0710 (void);
    int  f070=0 ;
    int  f071=0 ;
    int  f072=0 ;
    int  f073=0 ;
    int  idxf=0 ;
int 
main (void)
  {
   printf("*** \n");
    for (idxf=1;  f070<4; idxf++)
     {
     f070++;
     }
    if (f070==4)
     printf("*** \n");
    else
     printf("*** \n");
    f070=0;
    for (idxf=1;  f070<4; idxf++)
    f070++;
    if (f070==4)
     printf("*** \n");
    else
     printf("*** \n");
    f070=1;
    for (idxf=1;  f070<4; idxf++)
    if (f070)
     f070++;
    if (f070==4)
     printf("*** \n");
    else
     printf("*** \n");
    f070=0;
    f071=1;
    for (idxf=1;  f070<4; idxf++)
    switch (f071)
     case 1 :
          f070++;
    if (f070==4)
     printf("*** \n");
    else
     printf("*** \n");
    f070=1;
    f071=0;
    for (idxf=1;  f070<4; idxf++)
    while (f070<4)
     f070++;
    if (f070==4)
     printf("*** \n");
    else
     printf("*** \n");
    f070=0;
    for (idxf=1;  f070<4; idxf++)
    for (f071=1;  f070<4;  f071++)
    f070++;
    if (f070==4)
     printf("*** \n");
    else
     printf("*** \n");
    f070=0;
    f071=0;
    for (idxf=1;  f070<4; idxf++)
    goto  f0707;
     printf("*** \n");
     goto f0707skp;
 f0707:
     printf("*** \n");
 f0707skp:
    f070=0;
    for (idxf=1;  f070<4; idxf++)
    break;
    if (idxf==1)
     printf("*** \n");
    else
     printf("*** \n");
    if (f0710()==1)
     printf("*** \n");
    else
     printf("*** \n");
    f070=0;
    for (idxf=1;  f070<4; idxf++)
    {
    do
    f070++;
    while (f070<4);
    break;
    }
    if (f070==4)
     printf("*** \n");
    else
     printf("*** \n");
    f070=0;
    for (idxf=1;  idxf<4; idxf++)
    {
    }
    if (idxf==4)
     printf("*** \n");
    else
     printf("*** \n");
    f070=0;
    for (idxf=1;  idxf<4; idxf++)
    ;
    if (idxf==4)
     printf("*** \n");
    else
     printf("*** \n");
    f070=0;
    for (idxf=1;  f070<4; idxf++)
 f0713:
    f070++;
    if (f070==4)
     printf("*** \n");
    else
     printf("*** \n");
    f070=0;
   printf("*** \n");
 }
 int 
f0710 (void)
 {
    for (idxf=1;  f070<4; idxf++)
    return(idxf);
 }
