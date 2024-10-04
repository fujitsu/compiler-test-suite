#include<stdio.h>
    int  g020=0 ;
    int  g021=0 ;
    int  g022=0 ;
    int  idxg=0 ;
int main()
  {
    printf("*** \n");
    goto  stg0201;
 g1:
      printf("*** \n");
    if (g020)
 stg0202:
     g020++;
    else
     ;
    if (g020==2)
      printf("*** \n");
    else
      printf("*** \n");
    g020=1;
    goto  stg0203;
 g3:
      printf("*** \n");
    while (g020<4)
 stg0204:
     g020++;
    if (g020==4)
      printf("*** \n");
    else
      printf("*** \n");
    g020=0;
    goto  stg0205;
 g5:
      printf("*** \n");
    for(idxg=1;  g020<4;  idxg++)
 stg0206:
    g020++;
    if (g020==4)
      printf("*** \n");
    else
      printf("*** \n");
    g020=1;
    idxg=0;
    goto  stg0207;
 g7:
      printf("*** \n");
    switch (g020) {
     case 1 :
       break;
     default :
 stg0208:
            g020++;
            break;
    }
    if (g020==1)
      printf("*** \n");
    else
      printf("*** \n");
    g020=0;
   printf("*** \n");
    return 0;
 dmya:
    switch (g020)
     case 1:
 stg0207:
          g020++;
    if (g020==2)
      printf("*** \n");
    else
      printf("*** \n");
    g020=0;
    goto  stg0208;
 g08:
      printf("*** \n");
    do
 stg0205:
    g020++;
    while (g020<4);
    if (g020==4)
      printf("*** \n");
    else
      printf("*** \n");
    g020=0;
    goto  stg0206;
 g6:
      printf("*** \n");
    switch (g020)
 stg0203:
     case 1 :
          g020++;
    if (g020==2)
      printf("*** \n");
    else
      printf("*** \n");
    g020=0;
    goto  stg0204;
 g4:
      printf("*** \n");
    {
 stg0201:
    g020++;
    }
    if (g020==1)
      printf("*** \n");
    else
      printf("*** \n");
    g020=1;
    goto  stg0202;
 g2:
      printf("*** \n");
 }
