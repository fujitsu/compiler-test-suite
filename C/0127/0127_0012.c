#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub (float f401[10][10], float f402[10][10], int i401[10][10], int i402[100], int i403[100]);

      struct tag1
      {
        int   st_i403[10];
        int   st_i404[10];
      };

      struct tag2
      {
        int   st_i401[10];
        int   st_i402[10];
        float st_f401[10];
        struct tag1 st_st;
      };

      struct tag2 str[10];

      struct tag3
      {
        float st_f401[10];
        float st_f402[10];
      } ;
int 
main (void)
{
      float f401[10][10],f402[10][10];
      int   i401[10][10],i402[100],i403[100];
      int   i,j,m,n,k;
      int   *ptr1;
      struct tag3 com;

      for(i=0;i<10;i++)
        for(j=0;j<10;j++)
        {
          f401[i][j]=10*i+j;
          f402[i][j]=0;
          i401[i][j]=10*i+j;
          str[i].st_i401[j]=j;
          str[i].st_i402[j]=j;
          str[i].st_f401[j]=j;
          str[i].st_st.st_i403[j]=j;
          str[i].st_st.st_i404[j]=j;
        }
      for(k=0;k<100;k++)
      {
        i402[k] = k;
        i403[k] = k;
      }
 
 
 
      for (i=0,n=1,m=-1;i<10;i++)
      {
        for (k=0,m++,j=0;j<10;j++,k++)
        {
          f402[i402[j]-(i403[j]-i403[k]+i402[k]-i403[j])]
              [i-(i403[m]-m-(m/(i403[n+1]-i403[n])-i)*n)]=
          f401[str[j].st_st.st_i403[j]-(str[j].st_st.st_i404[j]-
               str[j].st_st.st_i404[k]+str[j].st_st.st_i403[k]-
               str[j].st_st.st_i404[j])]
              [((str[j].st_i401[m]-m)+5)/2];
          ptr1 = &(str[i402[j]-(i403[j]-i402[k])].
                 st_i402[j/(k-j+n)/n/(i402[j+1]-i403[k])]);
          i401[i][j] = i403[100-*ptr1/(*ptr1*j+1)-*ptr1/(10-m)-1];
        }
        m++;m=m/2;
      }
      printf(" ## test 1 ##\n");
      for(i=0;i<10;printf("\n"),i++)
        for(j=0;j<10;j++)
          printf("%5.2f ",f402[i][j]);
      printf(" \n");
      for(i=0;i<10;printf("\n"),i++)
        for(j=0;j<10;j++)
          printf("%d ",str[i].st_st.st_i403[j]);
      printf("\n");
      for(i=0;i<10;printf("\n"),i++)
        for(j=0;j<10;j++)
          printf("%d ",i401[i][j]);
      printf("\n");
      sub(f401,f402,i401,i402,i403);
	exit(0);
}
      int 
sub (float f401[10][10], float f402[10][10], int i401[10][10], int i402[100], int i403[100])
{
      int   i,j,m,n,k;
      int   *ptr1;
      struct tag3 com;
 
 
 
      for (i=0,n=1,m=-1;i<10;i++)
      {
        for (k=0,m++,j=0;j<10;j++,k++)
        {
          f402[i402[j]-(i403[j]-i403[k]+i402[k]-i403[j])]
              [i-(i403[m]-m-(m/(i403[n+1]-i403[n])-i)*n)]=
          f401[str[j].st_st.st_i403[j]-(str[j].st_st.st_i404[j]-
               str[j].st_st.st_i404[k]+str[j].st_st.st_i403[k]-
               str[j].st_st.st_i404[j])]
              [((str[j].st_i401[m]-m)+5)/2];
          ptr1 = &(str[i402[j]-(i403[j]-i402[k])].
                 st_i402[j/(k-j+n)/n/(i402[j+1]-i403[k])]);
          i401[i][j] = i403[100-*ptr1/(*ptr1*j+1)-*ptr1/(10-m)-1];
        }
        m++;m=m/2;
      }
      printf(" ## test 2 ##\n");
      for(i=0;i<10;i++)
        for(j=0;j<10;j++)
          printf("%5.2f ",f402[i][j]);
      printf(" \n");
      for(i=0;i<10;i++)
        for(j=0;j<10;j++)
          printf("%d ",str[i].st_st.st_i403[j]);
      printf("\n");
      for(i=0;i<10;i++)
        for(j=0;j<10;j++)
          printf("%d ",i401[i][j]);
      printf("\n");
}
