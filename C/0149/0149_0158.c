#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int i2511 (void);
int i2510 (void);
int i2509 (void);
int i2508 (void);
int i2507 (void);
int i2506 (void);
int i2505 (void);
int i2504 (void);
int i2503 (void);
int i2502 (void);
int i2501 (void);
    int  i250=1 ;
    int  i251=0 ;
    int  i252=0 ;
    int  i253=0 ;
    int  idxi=1 ;
int 
main (void)
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i2501()==0)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    i252=0;
    if (i2502()==0)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i252=0;
    if (i2503()==0)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    i251=1;
    i252=0;
    if (i2504()==0)
      printf("*** CATEGORY-04 *** 0     K ***\n");
    else
      printf("*** CATEGORY-04 **** N   G ****\n");
    i251=0;
    i252=0;
    if (i2505()==0)
      printf("*** CATEGORY-05 *** 0     K ***\n");
    else
      printf("*** CATEGORY-05 **** N   G ****\n");
    i252=0;
    if (i2506()==0)
      printf("*** CATEGORY-06 *** 0     K ***\n");
    else
      printf("*** CATEGORY-06 **** N   G ****\n");
    i252=0;
    if (i2507()==0)
      printf("*** CATEGORY-07 *** 0     K ***\n");
    else
      printf("*** CATEGORY-07 **** N   G ****\n");
    i252=0;
    if (i2508()==0)
      printf("*** CATEGORY-08 *** 0     K ***\n");
    else
      printf("*** CATEGORY-08 **** N   G ****\n");
    i252=0;
    if (i2509()==0)
      printf("*** CATEGORY-09 *** 0     K ***\n");
    else
      printf("*** CATEGORY-09 **** N   G ****\n");
    if (i2510()==0)
      printf("*** CATEGORY-10 *** 0     K ***\n");
    else
      printf("*** CATEGORY-10 **** N   G ****\n");
    i252=0;
    if (i2511()==0)
      printf("*** CATEGORY-11 *** 0     K ***\n");
    else
      printf("*** CATEGORY-11 **** N   G ****\n");
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
 int 
i2501 (void)
 {
    if (i250)
     return(i252);
    else
     i252++;
    return(i252);
 }
 int 
i2502 (void)
 {
    if (i250)
     return(i252);
    else
     {
     i252++;
     }
    return(i252);
  }
  int 
i2503 (void)
  {
    if (i250)
      return(i252);
    else
     if (i252)
      i252++;
     else
      i252++;
     return(i252);
  }
  int 
i2504 (void)
  {
    if (i250)
     return(i252);
    else
     switch (i251) {
      case 1 :
           i252++;
     }
    return(i252);
  }
  int 
i2505 (void)
  {
    if (i250)
     return(i252);
    else
     while (i252<4)
     i252++;
    return(i252);
  }
  int 
i2506 (void)
  {
    if (i250)
     return(i252);
    else
     for (idxi=1;  i252<4;  idxi++)
     i252++;
    return(i252);
  }
  int 
i2507 (void)
  {
    if (i250)
     return(i252);
    else
     do
     i252++;
     while (i252<4);
    return(i252);
  }
  int 
i2508 (void)
  {
    if (i250)
     return(i252);
    else
     goto it2;
  it2 :
    return(0);
  }
  int 
i2509 (void)
  {
    if (i250)
     return(i252);
    else
     ;
    return(1);
  }
  int 
i2510 (void)
  {
    if (i250)
     return(i252);
    else
 pass:
     i252++;
    return(i252);
  }
 int 
i2511 (void)
 {
    if (i250)
     return(i252);
    else
     return(1);
  }
