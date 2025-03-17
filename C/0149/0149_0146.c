#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  i130=1 ;
    int  i131=1 ;
    int  i132=1 ;
    int  i133=0 ;
    int  idxi=0 ;
int main()
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i130)
     if (i131)
      if (i132)
        i133++;
    if (i133==1)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    i133=0;
    if (i130)
     if (i131)
      switch (i132)
           case 1 :
              i133++;
    if (i133==1)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i133=0;
    if (i130)
     switch (i131)
          case 1 :
               if (i132)
                i133++;
    if (i133==1)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    i133=0;
    if (i130)
     switch (i131)
          case 1 :
             switch (i132)
                  case 1 :
                       i133++;
    if (i133==1)
      printf("*** CATEGORY-04 *** 0     K ***\n");
    else
      printf("*** CATEGORY-04 **** N   G ****\n");
    i130=0;
    i133=0;
    if (i130)
     idxi++;
    else
     if (i131)
      if (i132)
       i133++;
    if (i133==1 && idxi==0)
      printf("*** CATEGORY-05 *** 0     K ***\n");
    else
      printf("*** CATEGORY-05 **** N   G ****\n");
    i133=0;
    idxi=0;
    if (i130)
     idxi++;
    else
     if (i131)
      switch (i132)
           case 1 :
             i133++;
    if (i133==1 && idxi==0)
      printf("*** CATEGORY-06 *** 0     K ***\n");
    else
      printf("*** CATEGORY-06 **** N   G ****\n");
    i133=0;
    idxi=0;
    if (i130)
     idxi++;
    else
     switch (i131)
          case 1 :
             if (i132)
              i133++;
    if (i133==1 && idxi==0)
      printf("*** CATEGORY-07 *** 0     K ***\n");
    else
      printf("*** CATEGORY-07 **** N   G ****\n");
    i133=0;
    idxi=0;
    if (i130)
     idxi++;
    else
     switch (i131)
          case 1 :
             if (i132)
              i133++;
    if (i133==1 && idxi==0)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    i133=0;
    idxi=0;
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
