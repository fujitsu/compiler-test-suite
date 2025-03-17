#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  i280=0 ;
    int  i281=1 ;
    int  i282=1 ;
    int  i283=0 ;
    int  idxi=0 ;
int main()
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i280)
     if (i281)
      if (i282)
        i283++;
    if (i283==0)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    i283=0;
    if (i280)
     if (i281)
      switch (i282)
           case 1 :
              i283++;
    if (i283==0)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i283=0;
    if (i280)
     switch (i281)
          case 1 :
               if (i282)
                i283++;
    if (i283==0)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    i283=0;
    if (i280)
     switch (i281)
      case 1 :
           switch (i282)
            case 1 :
                 i283++;
    if (i283==0)
      printf("*** CATEGORY-04 *** 0     K ***\n");
    else
      printf("*** CATEGORY-04 **** N   G ****\n");
    i280=1;
    i283=0;
    if (i280)
     idxi++;
    else
     if (i281)
      if (i282)
       i283++;
    if (i283==0 && idxi==1)
      printf("*** CATEGORY-05 *** 0     K ***\n");
    else
      printf("*** CATEGORY-05 **** N   G ****\n");
    i283=0;
    idxi=0;
    if (i280)
     idxi++;
    else
     if (i281)
      switch (i282)
       case 1 :
            i283++;
    if (i283==0 && idxi==1)
      printf("*** CATEGORY-06 *** 0     K ***\n");
    else
      printf("*** CATEGORY-06 **** N   G ****\n");
    i283=0;
    idxi=0;
    if (i280)
     idxi++;
    else
     switch (i281)
      case 1 :
           if (i282)
            i283++;
    if (i283==0 && idxi==1)
      printf("*** CATEGORY-07 *** 0     K ***\n");
    else
      printf("*** CATEGORY-07 **** N   G ****\n");
    i283=0;
    idxi=0;
    if (i280)
     idxi++;
    else
     switch (i281)
      case 1 :
           if (i282)
            i283++;
    if (i283==0 && idxi==1)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    i283=0;
    idxi=0;
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
