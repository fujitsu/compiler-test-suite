#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define FALSE   0                                      
#define TRUE    1
#define SIZE    3000
int main()                                                 
     {
     int     i;
     int     number;
     int     first;
     int     remainder;
     int     prime;
     int     factor;
     for(i=2;i<=SIZE;i++)
        {
        printf("%5d= ",i);
        number=i;
        factor=2;
        prime=TRUE;                                    
        first=TRUE;
        while(factor<number)                    
             {
             remainder=number%factor;
             while(remainder==0)                     
                  {                              
                  prime=FALSE;
                  if(first)
                    {
                    printf("%d ",factor);
                    first=FALSE;
                    }
                  else
                    {
                    printf("* %d",factor);
                    }
                  number=number/factor;
                  remainder=number%factor;
                  }
              if(factor==2)
                {
                factor=3;
                }
              else
                {
                factor+=2;
                }
              if(factor*factor>number)
                {
                break;
                }
             }
             if(number!=1)
               {
               if(!first)
                 {
                 printf("*");
                 }
               printf("%d",number);
               }
             if(prime)
               {
               printf("[prime]");                   
               }                                    
             printf(" \n");
             }
         printf("<<<<<<<  >>>>>>> \n");
         printf("\n");
	exit(0);
         }
         
