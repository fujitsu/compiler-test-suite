#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int init (int i401[], int i402[], int i403[], int i404[], int i405[], int i406[], int i407[], float f401[], float f402[], float f403[], float f404[], float f405[], float f406[], float f407[]);
int sub01 (int i401[10], int i402[10], int i403[10], int i404[10], int i405[10], int i406[10], int i407[10], float f401[20], float f402[20], float f403[20], float f404[20], float f405[20], float f406[20], float f407[20]);

int 
main (void)
  {
      int i401[20],i402[20],i403[20],i404[20],i405[20],i406[20];
      int i407[20],i,k;
      float f401[20],f402[20],f403[20],f404[20],f405[20],f406[20];
      float f407[20];

      init(i401,i402,i403,i404,i405,i406,i407,
           f401,f402,f403,f404,f405,f406,f407);

      for(i=0;i<10;
          i401[i402[i403[i404[i405[i406[i407[i]]]]]]] =
         (i407[i406[i405[i404[i403[i402[i401[i]]]]]]] +
          i401[i403[i405[i407[i402[i404[i406[i]]]]]]] -
         (i401[i407[i402[i406[i403[i404[i405[i]]]]]]] -
          i407[i401[i406[i402[i405[i403[i404[i]]]]]]]))/2,
          f401[i401[i402[i403[i]]]-i404[i405[i406[i407[i]]]]]=
         -f402[i401[i402[i403[i404[i]]]]-i405[i406[i407[i]]]]*
         (f403[i401[i402[i407[i406[i403[i404[i]]]]]]-i405[i]])-
         (f404[i]*(f405[i401[i405[i]]]/(i+1)+i401[i402[i]])+1),
         ++i);
        printf("  ## test 1 ## \n");
      for(i=0;i<10;i++)
        printf("%d ",i401[i]);
        printf("\n");
      for(i=0;i<20;i++)
        printf("%f ",f401[i]);

      init(i401,i402,i403,i404,i405,i406,i407,
           f401,f402,f403,f404,f405,f406,f407);
      sub01(i401,i402,i403,i404,i405,i406,i407,
            f401,f402,f403,f404,f405,f406,f407);
        printf("\n  ## test 2 ## \n");
      for(i=0;i<10;i++)
        printf("%d ",i401[i]);
        printf("\n");
      for(i=0;i<20;i++)
        printf("%f ",f401[i]);

      init(i401,i402,i403,i404,i405,i406,i407,
           f401,f402,f403,f404,f405,f406,f407);

      for(i=0,k=i401[i]*i402[i403[i]];i<(i401[1]+i402[9]);
           f407[i401[i402[i405[i]]-i403[i407[i401[i]]]+i]] =
           f406[i402[i403[i]-i403[k]]+i405[k]] *
          (0-f405[i401[k]+i-i405[i402[i407[i]]]]),i++,k++);
      printf("\n ##  test 3 ## \n");
      for(i=0;i<20;i++)
        printf("%f ",f407[i]);
      printf("\n");
	exit(0);
  }
int init (int i401[], int i402[], int i403[], int i404[], int i405[], int i406[], int i407[], float f401[], float f402[], float f403[], float f404[], float f405[], float f406[], float f407[])
   {

      int i;
      for(i=0;i<20;i++)
      {
        if(i<10)
        i401[i]=i402[i]=i403[i]=i404[i]=i405[i]=i406[i]=i407[i]=i;
        if(i>=10)
        i401[i]=i402[i]=i403[i]=i404[i]=i405[i]=i406[i]=i407[i]=i-10;
        f401[i]=f402[i]=f403[i]=f404[i]=f405[i]=f406[i]=f407[i]=i;
      }
      return 0;
   }

int sub01 (int i401[10], int i402[10], int i403[10], int i404[10], int i405[10], int i406[10], int i407[10], float f401[20], float f402[20], float f403[20], float f404[20], float f405[20], float f406[20], float f407[20])
   {
      int i;

      for(i=0;i<10;
          i401[i402[i403[i404[i405[i406[i407[i]]]]]]] =
          i407[i406[i405[i404[i403[i402[i401[i]]]]]]] +
          i401[i403[i405[i407[i402[i404[i406[i]]]]]]] -
         (i401[i407[i402[i406[i403[i404[i405[i]]]]]]] -
          i407[i401[i406[i402[i405[i403[i404[i]]]]]]]),
          f401[i401[i402[i403[i]]]-i404[i405[i406[i407[i]]]]]=
         -f402[i401[i402[i403[i404[i]]]]-i405[i406[i407[i]]]]*
         (f403[i401[i402[i407[i406[i403[i404[i]]]]]]-i405[i]])-
         (f404[i]*(f405[i401[i405[i]]]/(i+1)+i401[i402[i]])+1),
         ++i);
      return 0;
    }
