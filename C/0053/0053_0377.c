#include<stdio.h>
int n1 (void);
    int  n010=0;
    int  n011=0;
    int  idxn=0;
int 
main (void)
  {
    printf("*** \n");
 test1:
    {n010++;
      n010++;}
    if(n010==2)
      printf("*** \n");
    else
      printf("*** \n");
    n010=0;
 test2:
    n010++;
    if(n010==1)
      printf("*** \n");
    else
      printf("*** \n");
    n010=1;
 test3:
    if(n010)
      printf("*** \n");
    else
      printf("*** \n");
    n010=1;
 test4:
    switch(n010) {
     case 1 :
      printf("*** \n");
      break;
     default :
      printf("*** \n");
      break;
    }
    n010=0;
 test5:
    while(n010<4)
    n010++;
    if(n010==4)
      printf("*** \n");
    else
      printf("*** \n");
    n010=0;
 test6:
    for(idxn=0;  n010<4;  idxn++)
    n010++;
    if(n010==4)
      printf("*** \n");
    else
      printf("*** \n");
    n010=0;
 test7:
    goto test72;
 test71:
    printf("*** \n");
    goto test8;
 test72:
    printf("*** \n");
 test8:
    ;
    printf("*** \n");
    n010=0;
 test9:
    do
    n010++;
    while(n010<4);
    if(n010==4)
      printf("*** \n");
    else
      printf("*** \n");
    n010=1;
    goto test10;
 test101:
    switch (n010) {
 test10:
    case 1 :
         printf("*** \n");
         break;
    default :
         printf("*** \n");
         break;
    }
    n010=0;
    goto test11;
 test111:
    switch (n010) {
 test11:
    default :
         printf("*** \n");
         break;
    case 1 :
         printf("*** \n");
         break;
    }
    goto test12;
 test12:
 test121:
    n010++;
    if (n010==1)
     printf("*** \n");
    else
     printf("*** \n");
    n010=0;
 test13:
    if (n1()==1)
     printf("*** \n");
    else
     printf("*** \n");
test14aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\
test14aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\
test14aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\
test14aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\
test14aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
    n010++;
    if(n010==1)
      printf("*** \n");
    else
      printf("*** \n");
    n010=1;
    for (idxn=1;  idxn<4;  idxn++) {
test15:
      printf("*** \n");
    continue;
test15d:
      printf("*** \n");
    }
    switch (n010)  {
     case 1 :
test16:
     break;
test16d:
      printf("*** \n");
    }
    if (n010)
      printf("*** \n");
    else
      printf("*** \n");
   printf("*** \n");
 }
 int 
n1 (void)
 {
 test131:
        return(1);
 }
