#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int i5 (void);
    int  i200=1 ;
    int  i201=0 ;
    int  i202=0 ;
    int  i203=0 ;
    int  idxi=1 ;
int 
main (void)
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i200)
     while (i201<4)
     i201++;
    else
     i202++;
    if (i202==0 && i201==4)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    i201=0;
    i202=0;
    if (i200)
     while (i201<4)
     i201++;
    else
     {
     i202++;
     }
    if (i202==0 && i201==4)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i201=0;
    i202=1;
    if (i200)
     while (i201<4)
     i201++;
    else
     if (i202)
      i202++;
     else
      i202++;
    if (i202==1 && i201==4)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    i201=0;
    i202=1;
    if (i200)
     while (i201<4)
     i201++;
    else
     switch (i202) {
      case 1 :
           i202++;
     }
    if (i202==1 && i201==4)
      printf("*** CATEGORY-04 *** 0     K ***\n");
    else
      printf("*** CATEGORY-04 **** N   G ****\n");
    i201=0;
    i202=0;
    if (i200)
     while (i201<4)
     i201++;
    else
     while (i202<4)
     i202++;
    if (i202==0 && i201==4)
      printf("*** CATEGORY-05 *** 0     K ***\n");
    else
      printf("*** CATEGORY-05 **** N   G ****\n");
    i201=0;
    i202=0;
    if (i200)
     while (i201<4)
     i201++;
    else
     for (idxi=1;  i202<4;  idxi++)
     i202++;
    if (i202==0 && i201==4)
      printf("*** CATEGORY-06 *** 0     K ***\n");
    else
      printf("*** CATEGORY-06 **** N   G ****\n");
    i201=0;
    i202=0;
    if (i200)
     while (i201<4)
     i201++;
    else
     do
     i202++;
     while (i202<4);
    if (i202==0 && i201==4)
      printf("*** CATEGORY-07 *** 0     K ***\n");
    else
      printf("*** CATEGORY-07 **** N   G ****\n");
    i201=0;
    i202=0;
    if (i200)
     while (i201<4)
     i201++;
    else
     goto it;
   if (i201==4)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
 it:
     printf("*** CATEGORY-08 **** N   G ****\n");
     i201=0;
    if (i200)
     while (i201<4)
     i201++;
    else
     ;
    if (i201==4)
      printf("*** CATEGORY-09 *** 0     K ***\n");
    else
      printf("*** CATEGORY-09 **** N   G ****\n");
    i201=0;
    if (i200)
     while (i201<4)
     i201++;
    else
 pass:
     i202++;
    if (i202==0 && i201==4)
      printf("*** CATEGORY-10 *** 0     K ***\n");
    else
      printf("*** CATEGORY-10 **** N   G ****\n");
    i201=0;
    i202=0;
    if (i5()==4)
      printf("*** CATEGORY-11 *** 0     K ***\n");
    else
      printf("*** CATEGORY-11 **** N   G ****\n");
    i201=0;
    i202=0;
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
 int 
i5 (void)
 {
    int  i200=1;
    int  i201=0;
    if (i200)
     while (i201<4)
     i201++;
    else
     return(i201);
    return(i201);
  }
