#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  i290=1 ;
    int  i291=1 ;
    int  i292=1 ;
    int  i293=0 ;
    int  idxi=0 ;
int main()
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i290) {
     if (i291)
      if (i292)
        i293++;
    }
    else
     if (i291)
      if (i292)
        i293=0;
    if (i293==1)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    i293=0;
    if (i290) {
     if (i291)
      if (i292)
        i293++;
    }
    else
     if (i291)
      switch (i292)
       case 1 :
            i293=0;
    if (i293==1)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i293=0;
    if (i290) {
     if (i291)
      if (i292)
        i293++;
    }
    else
     switch (i291)
      case 1 :
           if (i292)
            i293=0;
    if (i293==1)
     printf("*** CATEGORY-03 *** 0     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    i293=0;
    if (i290) {
     if (i291)
      if (i292)
        i293++;
    }
    else
     switch (i291)
      case 1 :
           switch (i292)
            case 1 :
                 i293=0;
    if (i293==1)
     printf("*** CATEGORY-04 *** 0     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    i293=0;
    if (i290) {
     if (i291)
      switch (i292)
       case 1 :
            i293++;
    }
    else
     if (i291)
      if (i292)
        i293=0;
    if (i293==1)
     printf("*** CATEGORY-05 *** 0     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    i293=0;
    if (i290) {
     if (i291)
      switch (i292)
       case 1 :
            i293++;
    }
    else
     if (i291)
      switch (i292)
       case 1 :
            i293=0;
    if (i293==1)
     printf("*** CATEGORY-06 *** 0     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    i293=0;
    if (i290) {
     if (i291)
      switch (i292)
       case 1 :
            i293++;
    }
    else
     switch (i291)
      case 1 :
           if (i292)
            i293=0;
    if (i293==1)
     printf("*** CATEGORY-07 *** 0     K ***\n");
    else
     printf("*** CATEGORY-07 **** N   G ****\n");
    i293=0;
    if (i290) {
     if (i291)
      switch (i292)
       case 1 :
            i293++;
    }
    else
     switch (i291)
      case 1 :
           switch (i292)
            case 1 :
                 i293=0;
    if (i293==1)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    i293=0;
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
