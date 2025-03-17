#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  g020=0 ;
    int  g021=0 ;
    int  g022=0 ;
    int  idxg=0 ;
int main()
  {
    printf("*** CATEGORY ** TEST FOR -GOTO- ** STARTED ***\n");
    goto  stg0201;
 g1:
      printf("*** CATEGORY-01 **** N   G ****\n");
    if (g020)
 stg0202:
     g020++;
    else
     ;
    if (g020==2)
      printf("*** CATEGORY-02 *** 0     K ***\n");
    else
      printf("*** CATEGORY-02 **** N   G ****\n");
    g020=1;
    goto  stg0203;
 g3:
      printf("*** CATEGORY-03 **** N   G ****\n");
    while (g020<4)
 stg0204:
     g020++;
    if (g020==4)
      printf("*** CATEGORY-04 *** 0     K ***\n");
    else
      printf("*** CATEGORY-04 **** N   G ****\n");
    g020=0;
    goto  stg0205;
 g5:
      printf("*** CATEGORY-05 **** N   G ****\n");
    for(idxg=1;  g020<4;  idxg++)
 stg0206:
    g020++;
    if (g020==4)
      printf("*** CATEGORY-06 *** 0     K ***\n");
    else
      printf("*** CATEGORY-06 **** N   G ****\n");
    g020=1;
    idxg=0;
    goto  stg0207;
 g7:
      printf("*** CATEGORY-07 **** N   G ****\n");
    switch (g020) {
     case 1 :
       break;
     default :
 stg0208:
            g020++;
            break;
    }
    if (g020==1)
      printf("*** CATEGORY-08 *** 0     K ***\n");
    else
      printf("*** CATEGORY-08 **** N   G ****\n");
    g020=0;
   printf("*** CATEGORY ** TEST FOR -GOTO- ** ENDED ***\n");
    exit(0);
 dmya:
    switch (g020)
     case 1:
 stg0207:
          g020++;
    if (g020==2)
      printf("*** CATEGORY-07 *** 0     K ***\n");
    else
      printf("*** CATEGORY-07 **** N   G ****\n");
    g020=0;
    goto  stg0208;
 g08:
      printf("*** CATEGORY-08 **** N   G ****\n");
    do
 stg0205:
    g020++;
    while (g020<4);
    if (g020==4)
      printf("*** CATEGORY-05 *** 0     K ***\n");
    else
      printf("*** CATEGORY-05 **** N   G ****\n");
    g020=0;
    goto  stg0206;
 g6:
      printf("*** CATEGORY-06 **** N   G ****\n");
    switch (g020)
 stg0203:
     case 1 :
          g020++;
    if (g020==2)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    g020=0;
    goto  stg0204;
 g4:
      printf("*** CATEGORY-04 **** N   G ****\n");
    {
 stg0201:
    g020++;
    }
    if (g020==1)
      printf("*** CATEGORY-01 *** 0     K ***\n");
    else
      printf("*** CATEGORY-01 **** N   G ****\n");
    g020=1;
    goto  stg0202;
 g2:
      printf("*** CATEGORY-02 **** N   G ****\n");
exit (0);
 }
