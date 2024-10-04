#include<stdio.h>
    int  s010=1 ;
    int  s011=0 ;
    int  s012=0 ;
    int  s013=0 ;
    int  idxs=0 ;
int main()
  {
 printf("*** \n");
    switch (s010)
     case 1 :
          s011++;
    if (s011==1)
      printf("*** \n");
    else
      printf("*** \n");
    s011=0;
    switch (s010)
     default:
            s011++;
    if (s011==1)
     printf("*** \n");
    else
     printf("*** \n");
    s011=0;
    switch (s010) {
      case 1 :
           s011++;
           break;
      default :
           s012++;
     }
    if (s011==1)
     printf("*** \n");
    else
     printf("*** \n");
    s011=2;
    s012=0;
    switch (s010)
     case 1 :
          switch (s011)
           case 2 :
                s012++;
    if (s012==1)
     printf("*** \n");
    else
     printf("*** \n");
    s011=1;
    s012=0;
    switch (s010)
     case 1 :
          if (s011)
           s012++;
    if (s012==1)
     printf("*** \n");
    else
     printf("*** \n");
    s011=2;
    s012=3;
    s013=0;
    switch (s010)
     case 1 :
          switch (s011)
           case 2 :
                switch (s012)
                 case 3 :
                      s013++;
    if (s013==1)
     printf("*** \n");
    else
     printf("*** \n");
    s011=2;
    s012=1;
    s013=0;
    switch (s010)
     case 1 :
          switch (s011)
           case 2 :
                if (s012)
                 s013++;
    if (s013==1)
     printf("*** \n");
    else
     printf("*** \n");
    s011=1;
    s012=2;
    s013=0;
    switch (s010)
     case 1 :
          if (s011)
          switch (s012)
           case 2 :
                s013++;
    if (s013==1)
     printf("*** \n");
    else
     printf("*** \n");
    s011=1;
    s012=1;
    s013=0;
    switch (s010)
     case 1 :
          if (s011)
           if (s012)
            s013++;
    if (s013==1)
     printf("*** \n");
    else
     printf("*** \n");
    s011=0;
    s012=0;
    s013=0;
   printf("*** \n");
 }
