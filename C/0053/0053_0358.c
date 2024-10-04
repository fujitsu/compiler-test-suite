#include<stdio.h>
    int  i130=1 ;
    int  i131=1 ;
    int  i132=1 ;
    int  i133=0 ;
    int  idxi=0 ;
int main()
  {
    printf("*** \n");
    if (i130)
     if (i131)
      if (i132)
        i133++;
    if (i133==1)
     printf("*** \n");
    else
     printf("*** \n");
    i133=0;
    if (i130)
     if (i131)
      switch (i132)
           case 1 :
              i133++;
    if (i133==1)
     printf("*** \n");
    else
     printf("*** \n");
    i133=0;
    if (i130)
     switch (i131)
          case 1 :
               if (i132)
                i133++;
    if (i133==1)
      printf("*** \n");
    else
      printf("*** \n");
    i133=0;
    if (i130)
     switch (i131)
          case 1 :
             switch (i132)
                  case 1 :
                       i133++;
    if (i133==1)
      printf("*** \n");
    else
      printf("*** \n");
    i130=0;
    i133=0;
    if (i130)
     idxi++;
    else
     if (i131)
      if (i132)
       i133++;
    if (i133==1 && idxi==0)
      printf("*** \n");
    else
      printf("*** \n");
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
      printf("*** \n");
    else
      printf("*** \n");
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
      printf("*** \n");
    else
      printf("*** \n");
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
     printf("*** \n");
    else
     printf("*** \n");
    i133=0;
    idxi=0;
   printf("*** \n");
 }
