#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int f0710 (void);
    int  f070=0 ;
    int  f071=0 ;
    int  f072=0 ;
    int  f073=0 ;
    int  idxf=0 ;
int main (void)
  {
   printf("*** CATEGORY ** TEST FOR FOR ** STARTED ***\n");
    for (idxf=1;  f070<4; idxf++)
     {
     f070++;
     }
    if (f070==4)
     printf("*** CATEGORY-01 *** O     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    f070=0;
    for (idxf=1;  f070<4; idxf++)
    f070++;
    if (f070==4)
     printf("*** CATEGORY-02 *** O     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    f070=1;
    for (idxf=1;  f070<4; idxf++)
    if (f070)
     f070++;
    if (f070==4)
     printf("*** CATEGORY-03 *** O     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    f070=0;
    f071=1;
    for (idxf=1;  f070<4; idxf++)
    switch (f071)
     case 1 :
          f070++;
    if (f070==4)
     printf("*** CATEGORY-04 *** O     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    f070=1;
    f071=0;
    for (idxf=1;  f070<4; idxf++)
    while (f070<4)
     f070++;
    if (f070==4)
     printf("*** CATEGORY-05 *** O     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    f070=0;
    for (idxf=1;  f070<4; idxf++)
    for (f071=1;  f070<4;  f071++)
    f070++;
    if (f070==4)
     printf("*** CATEGORY-06 *** O     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    f070=0;
    f071=0;
    for (idxf=1;  f070<4; idxf++)
    goto  f0707;
     printf("*** CATEGORY-07 **** N   G ****\n");
     goto f0707skp;
 f0707:
     printf("*** CATEGORY-07 *** O     K ***\n");
 f0707skp:
    f070=0;
    for (idxf=1;  f070<4; idxf++)
    break;
    if (idxf==1)
     printf("*** CATEGORY-08 *** O     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    if (f0710()==1)
     printf("*** CATEGORY-09 *** O     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    f070=0;
    for (idxf=1;  f070<4; idxf++)
    {
    do
    f070++;
    while (f070<4);
    break;
    }
    if (f070==4)
     printf("*** CATEGORY-10 *** O     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    f070=0;
    for (idxf=1;  idxf<4; idxf++)
    {
    }
    if (idxf==4)
     printf("*** CATEGORY-11 *** O     K ***\n");
    else
     printf("*** CATEGORY-11 **** N   G ****\n");
    f070=0;
    for (idxf=1;  idxf<4; idxf++)
    ;
    if (idxf==4)
     printf("*** CATEGORY-12 *** O     K ***\n");
    else
     printf("*** CATEGORY-12 **** N   G ****\n");
    f070=0;
    for (idxf=1;  f070<4; idxf++)
 f0713:
    f070++;
    if (f070==4)
     printf("*** CATEGORY-13 *** O     K ***\n");
    else
     printf("*** CATEGORY-13 **** N   G ****\n");
    f070=0;
   printf("*** CATEGORY ** TEST FOR -FOR- ** ENDED ***\n");
exit (0);
 }
 int f0710 (void)
 {
    for (idxf=1;  f070<4; idxf++)
    return(idxf);
 }
