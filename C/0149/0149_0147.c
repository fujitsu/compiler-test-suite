#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  i140=0 ;
    int  i141=1 ;
    int  i142=1 ;
    int  i143=0 ;
    int  idxi=0 ;
int main()
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i140) {
     if (i141)
      if (i142)
        i143=0;
    }
    else
     if (i141)
      if (i142)
        i143++;
    if (i143==1)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    i143=0;
    if (i140) {
     if (i141)
      if (i142)
        i143=0;
    }
    else
     if (i141)
      switch (i142)
           case 1 :
                i143++;
    if (i143==1)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i143=0;
    if (i140) {
     if (i141)
      if (i142)
        i143=0;
    }
    else
     switch (i141)
          case 1 :
               if (i142)
                i143++;
    if (i143==1)
     printf("*** CATEGORY-03 *** 0     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    i143=0;
    if (i140) {
     if (i141)
      if (i142)
        i143=0;
    }
    else
     switch (i141)
          case 1 :
               switch (i142)
                    case 1 :
                i143++;
    if (i143==1)
     printf("*** CATEGORY-04 *** 0     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    i143=0;
    if (i140) {
     if (i141)
      switch (i142)
           case 1 :
                i143=0;
    }
    else
     if (i141)
      if (i142)
        i143++;
    if (i143==1)
     printf("*** CATEGORY-05 *** 0     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    i143=0;
    if (i140) {
     if (i141)
      switch (i142)
           case 1 :
                i143=0;
    }
    else
     if (i141)
      switch (i142)
           case 1 :
                i143++;
    if (i143==1)
     printf("*** CATEGORY-06 *** 0     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    i143=0;
    if (i140) {
     if (i141)
      switch (i142)
           case 1 :
                i143=0;
    }
    else
     switch (i141)
          case 1 :
               if (i142)
                i143++;
    if (i143==1)
     printf("*** CATEGORY-07 *** 0     K ***\n");
    else
     printf("*** CATEGORY-07 **** N   G ****\n");
    i143=0;
    if (i140) {
     if (i141)
      switch (i142)
           case 1 :
                i143=0;
    }
    else
     switch (i141)
          case 1 :
               switch (i142)
                    case 1 :
                i143++;
    if (i143==1)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    i143=0;
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
