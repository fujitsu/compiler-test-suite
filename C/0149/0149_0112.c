#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  d020=0 ;
    int  d021=0 ;
    int  d022=0 ;
    int  d023=0 ;
    int  idxd=0 ;
int main()
  {
   printf("*** CATEGORY ** TEST FOR DO ** STARTED ***\n");
    do
    for (idxd=1;  d020<4;  idxd++)
    for (d021=1;  d020<4;  d021++)
    d020++;
    while (d020<4);
    if (d020==4 && idxd==2)
     printf("*** CATEGORY-01 *** O     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    d020=0;
    d021=0;
    idxd=0;
    do
    for (idxd=1;  d020<4;  idxd++)
    while (d020<4)
    d020++;
    while (d020<4);
    if (d020==4)
     printf("*** CATEGORY-02 *** O     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    d020=0;
    idxd=0;
    do
    for (idxd=1;  d020<4;  idxd++)
    do
    d020++;
    while (d020<4);
    while (d020<4);
    if (d020==4)
     printf("*** CATEGORY-03 *** O     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    d020=0;
    idxd=0;
    do
    while (d020<4)
    for (idxd=1;  d020<4;  idxd++)
    d020++;
    while (d020<4);
    if (d020==4)
     printf("*** CATEGORY-04 *** O     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    d020=0;
    idxd=0;
    do
    while (d020<4)
    for (idxd=1;  d020<4;  idxd++)
    d020++;
    while (d020<4);
    if (d020==4)
     printf("*** CATEGORY-05 *** O     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    d020=0;
    idxd=0;
    do
    while (d020<4)
    do
    d020++;
    while (d020<4);
    while (d020<4);
    if (d020==4)
     printf("*** CATEGORY-06 *** O     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    d020=0;
    idxd=0;
    do
    do
    for (idxd=1;  d020<4;  idxd++)
    d020++;
    while (d020<4);
    while (d020<4);
    if (d020)
     printf("*** CATEGORY-07 *** O     K ***\n");
    else
     printf("*** CATEGORY-07 **** N   G ****\n");
    d020=0;
    idxd=0;
    do
    do
    while (d020<4)
    d020++;
    while (d020<4);
    while (d020<4);
    if (d020==4)
     printf("*** CATEGORY-08 *** O     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    d020=0;
    do
    do
    do
    d020++;
    while (d020<4);
    while (d020<4);
    while (d020<4);
    if (d020==4)
     printf("*** CATEGORY-09 *** O     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    d020=0;
    do
    {
    d020++;
    continue;
    }
    while (d020<4);
    if (d020==4)
     printf("*** CATEGORY-10 *** 0     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    d020=0;
   printf("*** CATEGORY ** TEST FOR -DO- ** ENDED ***\n");
exit (0);
 }
