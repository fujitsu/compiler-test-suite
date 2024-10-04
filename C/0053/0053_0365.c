#include<stdio.h>
int i5 (void);
    int  i200=1 ;
    int  i201=0 ;
    int  i202=0 ;
    int  i203=0 ;
    int  idxi=1 ;
int 
main (void)
  {
    printf("*** \n");
    if (i200)
     while (i201<4)
     i201++;
    else
     i202++;
    if (i202==0 && i201==4)
     printf("*** \n");
    else
     printf("*** \n");
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
     printf("*** \n");
    else
     printf("*** \n");
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
      printf("*** \n");
    else
      printf("*** \n");
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
      printf("*** \n");
    else
      printf("*** \n");
    i201=0;
    i202=0;
    if (i200)
     while (i201<4)
     i201++;
    else
     while (i202<4)
     i202++;
    if (i202==0 && i201==4)
      printf("*** \n");
    else
      printf("*** \n");
    i201=0;
    i202=0;
    if (i200)
     while (i201<4)
     i201++;
    else
     for (idxi=1;  i202<4;  idxi++)
     i202++;
    if (i202==0 && i201==4)
      printf("*** \n");
    else
      printf("*** \n");
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
      printf("*** \n");
    else
      printf("*** \n");
    i201=0;
    i202=0;
    if (i200)
     while (i201<4)
     i201++;
    else
     goto it;
   if (i201==4)
     printf("*** \n");
    else
 it:
     printf("*** \n");
     i201=0;
    if (i200)
     while (i201<4)
     i201++;
    else
     ;
    if (i201==4)
      printf("*** \n");
    else
      printf("*** \n");
    i201=0;
    if (i200)
     while (i201<4)
     i201++;
    else
 pass:
     i202++;
    if (i202==0 && i201==4)
      printf("*** \n");
    else
      printf("*** \n");
    i201=0;
    i202=0;
    if (i5()==4)
      printf("*** \n");
    else
      printf("*** \n");
    i201=0;
    i202=0;
   printf("*** \n");
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
