#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  w020=0 ;
    int  w021=0 ;
    int  w022=0 ;
    int  w023=0 ;
    int  idxw=0 ;
int main()
  {
   printf("*** CATEGORY ** TEST FOR WHILE ** STARTED ***\n");
    while (w020<4)
    for(idxw=1;  w020<4;  idxw++)
    for(w021=1;  w020<4;  w021++)
    w020++;
    if (w020==4  &&  idxw==2)
     printf("*** CATEGORY-01 *** O     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    w020=0;
    w021=0;
    idxw=0;
    while (w020<4)
    for(idxw=1;  w020<4;  idxw++)
    while (w020<4)
    w020++;
    if (w020==4 && idxw==2)
     printf("*** CATEGORY-02 *** O     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    w020=0;
    idxw=0;
    while (w020<4)
    for (idxw=1;  w020<4;  idxw++)
    do
    w020++;
    while (w020<4);
    if (w020==4  &&  idxw==2)
     printf("*** CATEGORY-03 *** O     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    w020=0;
    idxw=0;
    while (w020<4)
    while (w020<4)
    for (idxw=1;  w020<4;  idxw++)
    w020++;
    if (w020==4)
     printf("*** CATEGORY-04 *** O     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    w020=0;
    idxw=0;
    while (w020<4)
    while (w020<4)
    while (w020<4)
    w020++;
    if (w020==4)
     printf("*** CATEGORY-05 *** O     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    w020=0;
    while (w020<4)
    while (w020<4)
    do
    w020++;
    while (w020<4);
    if (w020==4)
     printf("*** CATEGORY-06 *** O     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    w020=0;
    while (w020<4)
    do
    for (idxw=1;  w020<4;  idxw++)
    w020++;
    while (w020<4);
    if (w020==4 && idxw==5)
     printf("*** CATEGORY-07 *** O     K ***\n");
    else
     printf("*** CATEGORY-07 **** N   G ****\n");
    w020=0;
    idxw=0;
    while (w020<4)
    do
    while (w020<4)
    w020++;
    while (w020<4);
    if (w020==4)
     printf("*** CATEGORY-08 *** O     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    w020=0;
    while (w020<4)
    do
    do
    w020++;
    while (w020<4);
    while (w020<4);
    if (w020==4)
     printf("*** CATEGORY-09 *** O     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    w020=0;
    while (w020<4) {
    w020++;
    continue;
    }
    if (w020==4)
     printf("*** CATEGORY-10 *** O     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    w020=0;
   printf("*** CATEGORY ** TEST FOR -WHILE- ** ENDED ***\n");
exit (0);
 }
