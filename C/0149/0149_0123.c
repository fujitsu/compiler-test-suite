#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int g112 (void);
    int  g010=0 ;
    int  g011=0 ;
    int  g012=0 ;
    int  idxg=0 ;
int main (void)
  {
    printf("*** CATEGORY ** TEST FOR -GOTO- ** STARTED ***\n");
    goto  stg0101;
 g1:
      printf("*** CATEGORY-01 **** N   G ****\n");
 stg0102:
    {
     g010++;
     g010++;
    }
    if (g010==2)
      printf("*** CATEGORY-02 *** 0     K ***\n");
    else
      printf("*** CATEGORY-02 **** N   G ****\n");
    g010=0;
    goto  stg0103;
 g3:
      printf("*** CATEGORY-03 **** N   G ****\n");
 stg0104:
    if (g010)
     g010++;
    else
     ;
    if (g010==2)
      printf("*** CATEGORY-04 *** 0     K ***\n");
    else
      printf("*** CATEGORY-04 **** N   G ****\n");
    g010=1;
    goto  stg0105;
 g5:
      printf("*** CATEGORY-05 **** N   G ****\n");
 stg0106:
    while (g010<4)
     g010++;
    if (g010==4)
      printf("*** CATEGORY-06 *** 0     K ***\n");
    else
      printf("*** CATEGORY-06 **** N   G ****\n");
    g010=0;
    goto  stg0107;
 g7:
      printf("*** CATEGORY-07 **** N   G ****\n");
 stg0108:
    for(idxg=1;  g010<4;  idxg++)
    g010++;
    if (g010==4)
      printf("*** CATEGORY-08 *** 0     K ***\n");
    else
      printf("*** CATEGORY-08 **** N   G ****\n");
    g010=0;
    idxg=0;
    goto  stg0109;
 g9:
      printf("*** CATEGORY-09 **** N   G ****\n");
    for (idxg=1;  idxg<4;  idxg++)
 stg0110:
    continue;
    if (idxg==4)
      printf("*** CATEGORY-10 *** 0     K ***\n");
    else
      printf("*** CATEGORY-10 **** N   G ****\n");
    idxg=0;
    goto  stg0111;
 g11:
      printf("*** CATEGORY-11 **** N   G ****\n");
    switch (g010)
 stg0113:
     case 1:
          g010++;
    if (g010==2)
      printf("*** CATEGORY-13 *** 0     K ***\n");
    else
      printf("*** CATEGORY-13 **** N   G ****\n");
    g010=0;
    goto  stg0114;
 g14:
      printf("*** CATEGORY-14 **** N   G ****\n");
 stg0115:
 stg0115s:
    g010++;
    if (g010==1)
      printf("*** CATEGORY-15 *** 0     K ***\n");
    else
      printf("*** CATEGORY-15 **** N   G ****\n");
    g010=0;
   printf("*** CATEGORY ** TEST FOR -GOTO- ** ENDED ***\n");
    exit(0);

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
      printf("*** CATEGORY-14 *** 0     K ***\n");
    else
      printf("*** CATEGORY-14 **** N   G ****\n");
    g010=0;
    goto  stg0115;
 g15:
      printf("*** CATEGORY-15 **** N   G ****\n");
    while (g010<4)
 stg0111:
    break;
    if (g010==0)
      printf("*** CATEGORY-11 *** 0     K ***\n");
    else
      printf("*** CATEGORY-11 **** N   G ****\n");
    if (g112()==1)
      printf("*** CATEGORY-12 *** 0     K ***\n");
    else
      printf("*** CATEGORY-12 **** N   G ****\n");
    g010=1;
    goto  stg0113;
 g13:
      printf("*** CATEGORY-13 **** N   G ****\n");
 stg0109:
    goto  stg0109e;
 g9e:
    if (g010!=4)
      printf("*** CATEGORY-09 **** N   G ****\n");
    else
 stg0109e:
      printf("*** CATEGORY-09 *** 0     K ***\n");
    goto  stg0110;
 g10:
      printf("*** CATEGORY-10 **** N   G ****\n");
 stg0107:
    do
    g010++;
    while (g010<4);
    if (g010==4)
      printf("*** CATEGORY-07 *** 0     K ***\n");
    else
      printf("*** CATEGORY-07 **** N   G ****\n");
    g010=0;
    goto  stg0108;
 g8:
      printf("*** CATEGORY-08 **** N   G ****\n");
 stg0105:
    switch (g010)
     case 1 :
          g010++;
    if (g010==2)
      printf("*** CATEGORY-05 *** 0     K ***\n");
    else
      printf("*** CATEGORY-05 **** N   G ****\n");
    g010=0;
    goto  stg0106;
 g6:
      printf("*** CATEGORY-06 **** N   G ****\n");
 stg0103:
    g010++;
    if (g010==1)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    g010=1;
    goto  stg0104;
 g4:
      printf("*** CATEGORY-04 **** N   G ****\n");
 stg0101:
     ;
    if (g010==0)
      printf("*** CATEGORY-01 *** 0     K ***\n");
    else
      printf("*** CATEGORY-01 **** N   G ****\n");
    g010=0;
    goto  stg0102;
 g2:
      printf("*** CATEGORY-02 **** N   G ****\n");
exit (0);
 }
 int g112 (void)
 {
    int  g010=1;
    goto  stg0112;
 stg0112e:
   return(0);
 stg0112:
    return(g010);
 }
