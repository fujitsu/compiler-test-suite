#include <stdlib.h>
#include <stdio.h>
#include <math.h>

long int glval[10]={1,1,1,1,1,1,1,1,1,1}; 
int sub(long int ax[1][1]);
int main()                                    
     {
     long int a[100][100];
     long int b[100][100];
     long int aa;
          int i;
          int j;
     for(i=0;i<100;i++)
        {
        for(j=0;j<100;j++)
           {
           a[i][j]=0;                    
           b[i][j]=a[i][j];
           }
        }
     for(i=0;i<100;i++)
        {
        for(j=0;j<100;j++)
           {
           if(a[i][j]!=b[i][j])
             {
             printf("<<<<  defferent message !!>>>>\n");
             break;
             }
           }
        }
     aa=sub(a);                          
     if(aa!=1)
       {
       printf("///// abnormal parameter.//////");
       printf("\n");
       }
     for(i=0;i<100;i++)
        {
        for(j=0,i++;j<100;j++)
           {
           a[i][j]=aa;                   
           if(i>=100)
             {
             break;
             }
           }
        }
     for(i=0;i<100;i++)
        {
        for(j=0;j<100;j++)
           {
           if(a[i][j]!=b[i][j])
             {
             printf("a[%ld][%ld]=%ld b[%ld][%ld]=%ld \n",i,j,a[i][j],i,j,b[i][j]);
             }
           }
        }
	exit(0);
     }
    
int sub(ax)                                   
     long int ax[1][1];
     {
     long int axx;
          int k;
          int l;
      for(k=0;k<10;k++)
         {
         ax[0][0]=glval[k];
         }
      axx=ax[0][0];
      return(axx);
      }
     
