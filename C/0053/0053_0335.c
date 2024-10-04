#include<stdio.h>
int g112 (void);
    int  g010=0 ;
    int  g011=0 ;
    int  g012=0 ;
    int  idxg=0 ;
int 
main (void)
  {
    printf("*** \n");
    goto  stg0101;
 g1:
      printf("*** \n");
 stg0102:
    {
     g010++;
     g010++;
    }
    if (g010==2)
      printf("*** \n");
    else
      printf("*** \n");
    g010=0;
    goto  stg0103;
 g3:
      printf("*** \n");
 stg0104:
    if (g010)
     g010++;
    else
     ;
    if (g010==2)
      printf("*** \n");
    else
      printf("*** \n");
    g010=1;
    goto  stg0105;
 g5:
      printf("*** \n");
 stg0106:
    while (g010<4)
     g010++;
    if (g010==4)
      printf("*** \n");
    else
      printf("*** \n");
    g010=0;
    goto  stg0107;
 g7:
      printf("*** \n");
 stg0108:
    for(idxg=1;  g010<4;  idxg++)
    g010++;
    if (g010==4)
      printf("*** \n");
    else
      printf("*** \n");
    g010=0;
    idxg=0;
    goto  stg0109;
 g9:
      printf("*** \n");
    for (idxg=1;  idxg<4;  idxg++)
 stg0110:
    continue;
    if (idxg==4)
      printf("*** \n");
    else
      printf("*** \n");
    idxg=0;
    goto  stg0111;
 g11:
      printf("*** \n");
    switch (g010)
 stg0113:
     case 1:
          g010++;
    if (g010==2)
      printf("*** \n");
    else
      printf("*** \n");
    g010=0;
    goto  stg0114;
 g14:
      printf("*** \n");
 stg0115:
 stg0115s:
    g010++;
    if (g010==1)
      printf("*** \n");
    else
      printf("*** \n");
    g010=0;
   printf("*** \n");
    return 0;
 dmyp:
    switch (g010) {
     case 1 :
       break;
 stg0114:
     default :
            g010++;
            break;
    }
    if (g010==1)
      printf("*** \n");
    else
      printf("*** \n");
    g010=0;
    goto  stg0115;
 g15:
      printf("*** \n");
    while (g010<4)
 stg0111:
    break;
    if (g010==0)
      printf("*** \n");
    else
      printf("*** \n");
    if (g112()==1)
      printf("*** \n");
    else
      printf("*** \n");
    g010=1;
    goto  stg0113;
 g13:
      printf("*** \n");
 stg0109:
    goto  stg0109e;
 g9e:
    if (g010!=4)
      printf("*** \n");
    else
 stg0109e:
      printf("*** \n");
    goto  stg0110;
 g10:
      printf("*** \n");
 stg0107:
    do
    g010++;
    while (g010<4);
    if (g010==4)
      printf("*** \n");
    else
      printf("*** \n");
    g010=0;
    goto  stg0108;
 g8:
      printf("*** \n");
 stg0105:
    switch (g010)
     case 1 :
          g010++;
    if (g010==2)
      printf("*** \n");
    else
      printf("*** \n");
    g010=0;
    goto  stg0106;
 g6:
      printf("*** \n");
 stg0103:
    g010++;
    if (g010==1)
      printf("*** \n");
    else
      printf("*** \n");
    g010=1;
    goto  stg0104;
 g4:
      printf("*** \n");
 stg0101:
     ;
    if (g010==0)
      printf("*** \n");
    else
      printf("*** \n");
    g010=0;
    goto  stg0102;
 g2:
      printf("*** \n");
 }
 int 
g112 (void)
 {
    int  g010=1;
    goto  stg0112;
 stg0112e:
   return(0);
 stg0112:
    return(g010);
 }
