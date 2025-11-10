#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int val(int n);

int main()
{
  int i401[10],i402[10],i403[10],i404[10],i405[10],i406[10];
  int list[10],list2[10];
  int i411[10][10],i412[10][10],i421[10][10][10];
  short int i201[10]={0,0,0,0,0,0,0,0,0,0};
  short int i202[10]={0,0,0,0,0,0,0,0,0,0};
  short int i211[10][10];
  float r401[10],r402[10],r403[10],r404[10];
  float r411[10][10],r412[10][10];
  double r801[10],r802[10],r803[10],r804[10];
  long double r1601[10]={0,0,0,0,0,0,0,0,0,0};
  long double r1602[10]={0,0,0,0,0,0,0,0,0,0};
  int i=1,j,m=1,k;

  for(;i<=10;
    i401[i-1]=i+1,i402[i-1]=i401[i-1]+1,i403[i-1]=i402[i-1]+1,
    i404[i-1]=i403[i-1]+1,i405[i-1]=i404[i-1]+1,
    i406[i-1]=i405[i-1]+1,
    i++);

  for(i=0;i<10;r404[i]=i+4,i++) r401[i]=i+3,
    r402[i]=i+1,r403[i]=i+2;

  for(j=0,i=0;i<10;list2[i]=i%2,i++)
  {
    r801[j]=j+1,
    r802[j]=j+2;r803[j]=j+3,
    j++;
    r804[j-1]=j+1;
  }

  for(i=0;i<10;i++)
    for(j=0;j<10;j++)
    {
      r411[i][j]=j+1;
      r412[i][j]=j+2;
    }

    for(i=0;i<10;i++) for(j=0;j<10;j++) i411[i][j]=i412[i][j]=i;

    for(i=0;i<10;i++)
      for(j=0;j<10;j++) i211[i][j]=i+j;

  printf("\n*** test 1 ***\n\n");

  for(i=0;i<10;i++)
  { i401[i] = i403[i] + i405[i];i406[i] = i403[i] - i401[i],
    i405[i] = i406[i] * i403[i],
    i403[i] = i401[i] / i405[i];i403[i]+=i401[i]; }

  for(i=0;i<10;i++) printf("%d ",i403[i]);printf("\n");

  for(i=0;i<10;i++)
  {
    r401[i]=r402[i]+i,
    r402[i]=r401[i]*r403[i],
    r403[i]=r401[i]-r402[i];r402[i]=r402[i]+r401[i],
    r403[i]=r402[i]*r403[i];
  }

  for(i=0;i<10;i++) printf("%g ",r403[i]);printf("\n");

  printf("\n*** test 2 ***\n\n");

  for(i=0;i<10;i++) { i201[i] = i ,
    i202[i] = i201[i] + i,
    r1601[i] *= 2 ,
    r1602[i] = (double)(i201[i]+i202[i]);i401[i]=i;}

  for(i=0;i<10;i++) printf("%g ",(double)r1601[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",(double)r1602[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",i202[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",i401[i]);printf("\n");

  for(i=0;i<10;list[i]=i,i++)
  {
    i401[i]=(int)r401[i]*i402[i],r402[i]=i+r401[i],
    i201[i]=i401[i]+r402[i];i403[i]=i401[i]-i;
    i202[i]=i201[i]-1,
    i404[i]=i403[i]+i401[i]-r402[i];
  }

  for(i=0;i<10;i++) printf("%d ",i404[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",i202[i]);printf("\n");

  for(i=0;i<10;i++)
  {
    i401[i]=i402[i]*i403[i];r1601[i]=sin(r801[i]);
    r1602[i]=cos(r801[i]+r802[i]);i404[list[i]]=i405[list[i]]+i;
    i402[i]=i404[list[i]]-i401[i];i201[i]=i;i406[i]=i402[i]*2;
    i202[i]=i-i201[i];i402[i]=-i406[i];r1601[i]+=r1602[i];
  }

  for(i=0;i<10;i++) printf("%d ",i202[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",i402[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",(double)r1601[i]);printf("\n");

  for(i=0;i<10;i++)
    if (i<5)
      r801[i]=sin(r802[i]);
    else
      r1601[i]=cos(r803[i]);

  for(i=0;i<10;i++) printf("%g ",r801[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",(double)r1601[i]);printf("\n");

  printf("\n*** test 3 ***\n\n");

  for(i=0;i<10;i++)
    if (i401[i]<i402[i])
    {
      r401[i]=r402[i]&&i405[i];
      r402[i]=r401[i]*i;
    }
    else
    {
      r801[i]=r802[i]||i;
      r803[i]=(r801[i]+1,
               r801[i]*i);
    }

  for(i=0;i<10;i++) printf("%g ",r402[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",r803[i]);printf("\n");

  for(i=0;i<10;i+=2)
    if (i401[i]=(sin(r801[i])<cos(r802[i])))
      r401[list[i]]=sqrt((double)i+(double)i401[i]);
    else
      r402[list[i]]=sqrt(r803[list[i]]+i401[i]);

  for(i=0;i<10;i++) printf("%g ",r401[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",r402[i]);printf("\n");

  for(i=0;i<10;i++)
    if (i401[i]<i402[i])
      r801[i]=sin((double)list[i]);
    else if(i402[i]<i403[i])
      r802[i]=cos((double)r401[list[i]]);
    else
      if (i403[i]<i404[i])
        r803[i]=tan((double)r402[i]);
      else
        r804[i]=i;

  for(i=0;i<10;i++) printf("%g ",r801[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",r802[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",r803[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",r804[i]);printf("\n");

  for(i=0;i<10;i+=2)
    switch (i%3)
    {
      case 0: i406[i]=i;break;
      case 1: i406[i]=i403[i]*i401[i];
              break;
      case 2:
              i406[i]=(int)(((sin(r801[list[i]]))*10)+0.5);
              i406[i]=i406[i]*i402[i]+(int)r401[list[i]];
              break;
      default:
              i406[i]=-i;
    }

  for(i=0;i<10;i++) printf("%d ",i406[i]);printf("\n");

  for(i=0,j=1;
      i<9;
      i++,j++)
  {
    r801[j]=((sin(r802[i])<=sin(r802[list[i]]))?
      (r803[i]=r401[i]*3.14+i403[i]):
      (r804[i]=r401[list[i]]*3.14+i404[i]));
  }

  for(i=0;i<10;i++) printf("%g ",r801[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",r803[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",r804[i]);printf("\n");

  for(i=0;i<10;i++)
  {
    if (i<5)
    {
      i401[i]=i+1;
      continue;
    }
    i402[i]=0;
  }
  for(i=0;i<10;i++)
  {
    if (i<5)
      i403[i]=i+1;
    else
    {
      i404[i]=i+10;
      continue;
    }
    i402[i]=i402[i]+i;
  }

  for(i=0;i<10;i++) printf("%d ",i401[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",i402[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",i403[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",i404[i]);printf("\n");

  for(i=0;i<10;i++)
  {
    if (i>5)
    {
      break;
    }
    i405[i]=0;
  }
  for(i=0;i<10;i++)
  {
    if (i>5)
    {
      i406[i]=0;
    }
    else
    {
      break;
    }
  }

  for(i=0;i<10;i++) printf("%d ",i403[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",i405[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",i406[i]);printf("\n");

  for(i=0;i<10;i++)
  {
    if (i>5)
    {
      r401[i]=i;
      break;
    }
    r402[i]=0;
  }
  for(i=0;i<10;i++)
  {
    if (i>5)
    {
      r801[i]=i;
    }
    else
    {
      r802[i]=i+1;
      break;
    }
    r803[i]=-1;
  }

  for(i=0;i<10;i++) printf("%g ",r401[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",r402[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",r801[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",r802[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",r803[i]);printf("\n");

  printf("\n*** test 4 ***\n\n");

  for(i=0;i<10;i+=3)
  {
    i401[i]=i402[i]*i403[i];
    printf("%d=%d   ",i,i401[i]);
  }

  for(i=0;i<10;i++)
  {
    if (i==0||i>9)
    {
      printf("\n");
    }
    else
     r401[i]=(int)(i401[i]/(i+1));
    printf("%g ",r401[i]);
  }

  for(i=val(0);i<10;i++)
  {
    i401[i]=val(i);
    i402[val(i)]=i403[i]*val(i404[i]);
  }

  for(i=0;i<10;i++) printf("%d ",i401[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",i402[i]);printf("\n");

  i=0;
  while(i>10)
  {
    r801[i]=r802[i]-r803[i];
    i++;
  }

  for(i=0;i<10;i++) printf("%g ",r801[i]);printf("\n");

  i=0;
  do
  {
    r401[i]=i-r402[i];
    i++;
  }while(i<10);

  for(i=0;i<10;i++) printf("%g ",r401[i]);printf("\n");

  for(i=0;i<10;i++)
  {
    r801[i]=sin(r802[i]);
    if (r801[i]<0)
      goto lab1;
    else
      if (r801[i]!=r803[i])
        r401[i]=1;
      else
        goto lab2;
    r401[i]=0;
lab1: r402[i]=1;
lab2:
      r402[i]=0;
  }

  for(i=0;i<10;i++) printf("%g ",r401[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",r402[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",r801[i]);printf("\n");

  for(i=0;i<10;i++)
  {
    i402[i]=i;
lab3:
    i403[i]=i+1;
    if (i402[i]!=list[i])
      goto lab3;
    i404[i]=i402[i]+i403[i];
  }

  for(i=0;i<10;i++) printf("%d ",i404[i]);printf("\n");

  for(i=0;i<10;i++)
  {
    i401[i]=i402[i]+i403[i];
    
    i404[i]=i405[i]-i406[i];

    i402[i]=i401[i]*i404[i];
  }

  for(i=0;i<10;i++) printf("%g ",r402[i]);printf("\n");

  printf("\n*** test 5 ***\n\n");

  for(i=0;i<10;i++)
    for(j=0;j<10;j++)
      i411[i][j]=i401[j]+i402[j]*i412[i][j];

  for(i=0;i<10;i++) printf("%d ",i411[i][1]);printf("\n");

  for(i=0;i<10;i++)
  {
    i401[i]=i;
    for(j=0;j<10;j++)
      r401[j]=r402[j]+1;
  }

  for(i=0;i<10;i++) printf("%d ",i401[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",r401[i]);printf("\n");

  for(i=0;i<10;i++)
  {
    i401[i]=i;
    for(j=0;j<10;j++)
    {
      i411[i][j]=i411[i][j]*r401[i]*r402[j];
      i412[i][j]=i411[i][j]*r401[j]*r402[i];
    }
  }

  for(i=0;i<10;i++) printf("%d ",i401[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",i412[i][1]);printf("\n");

  for(i=0;i<10;i++)
  {
    for(j=0;j<10;j++)
    {
      i412[i][j]=i412[i][j]*r801[i]*r802[j];
      i411[i][j]=i412[i][j]*r801[j]*r802[i];
    }
    i402[i]=i;
  }

  for(i=0;i<10;i++) printf("%d ",i402[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",i411[i][1]);printf("\n");

  for(i=0;i<10;i++)
  {
    i403[i]=i;
    for(j=0;j<10;j++)
      i412[i][j]=i411[i][j]*i;
    i404[i]=i401[i]+1;
  }

  for(i=0;i<10;i++) printf("%d ",i403[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",i404[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",i412[i][1]);printf("\n");

  for(i=0;i<10;i++)
  {
    if (i403[i]<5)
      for(j=0;j<10;j++)
      {
        i411[j][i]=r401[j]*r402[j];
      }
    else
      for(k=0;k<10;k++)
      {
        i412[k][i]=r403[i]*r404[i];
      }
  }

  for(i=0;i<10;i++) printf("%d ",i411[i][2]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",i412[i][2]);printf("\n");

  printf("\n*** test 6 ***\n\n");

  for(i=0;i<10;i++)
    for(j=0;j<10;j++)
      r411[i][j]=r412[i][j]*i211[i][j];

  for(i=0;i<10;i++) printf("%g ",r411[i][i]);printf("\n");

  for(j=0;j<10;j++)
  {
    r1601[j]=1.;
    for(i=0;i<10;i++)
      r412[i][j]=r411[j][i]*j+i411[i][j];
  }

  for(i=0;i<10;i++) printf("%g ",r412[2][i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",(double)r1601[i]);printf("\n");

  for(j=0;j<10;j++)
  {
    for(i=0;i<10;i++)
      r411[i][j]=r412[i][j]*r411[i][j]*2;
    r1602[j]=1.;
  }

  for(i=0;i<10;i++) printf("%g ",r411[2][i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",(double)r1602[i]);printf("\n");

  for(j=0;j<10;j++)
  {
    r801[j]=sin(r801[j]);
    for(i=0;i<10;i++)
      i211[i][j]=1;
    r802[j]=cos(r802[j]);
  }

  for(i=0;i<10;i++) printf("%d ",i211[2][i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",r801[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",r802[i]);printf("\n");

  for(i=0;i<10;i++)
    for(j=0;j<10;j++)
      for(k=0;k<10;k++)
        i421[i][j][k]=k+i+j;

  for(i=0;i<10;i++) printf("%d ",i421[2][i][5]);printf("\n");

  for(i=0,k=1;i<10;i++,k*=2)
    for(j=0;j<10;j++)
      r411[i][j]=sin(r801[i])+cos(r802[i]);

  for(i=0;i<10;i++) printf("%g ",r411[i][i]);printf("\n%d\n",k);

  for(i=0;i<10;i++)
  {
    r401[i]=r402[i]+i;
    for(j=0;j<10;j++)
    {
      i411[i][j]=i412[i][j]+j;
      if (i!=list[i])
        goto lab4;
      i411[i][j]=i411[i][j]+i+j;
    }
lab4:r401[i]=r403[i]+i;
  }

  for(i=0;i<10;i++) printf("%d ",i411[1][i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",r401[i]);printf("\n");

  j=0;
  for(i=0;i<10;i++)
  {
    r401[i]=r402[i]+i;
    if (i!=list[i])
    {
      j=0;
      goto lab5;
    }
    for(j=0;j<10;j++)
    {
      r411[i][j]=r412[i][j]+j;
lab5: r411[i][j]=r411[i][j]-j;
    }
  }

  for(i=0;i<10;i++) printf("%g ",r411[i][1]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",r401[i]);printf("\n");

  printf("\n*** test 7***\n\n");

  for(i=1;i<10;i++)
    i401[i]=i401[i-1]*i402[i]+i403[i];

  j=0;
  for(i=1;i<10;i++)
    j+=(i401[i]+i402[i]);

  for(i=1,j=0;i<10;i++)
    if (list2[i])
    {
      i402[j++]=i403[i]*i405[i];
    }

  for(i=1,j=0;i<10;i++)
    if (!list2[i])
    {
      i403[i]=i406[j++]*i;
    }

  for(i=0;i<10;i++) printf("%d ",i401[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",i402[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",i403[i]);printf("\n");
  printf("%d \n",j);

  m=i402[0];
  for(j=0,i=1;i<10;i++)
    if (m>i402[i])
    {
      m=i402[i];
      j=i;
    }

  printf("i402--> min= %d min_idx= %d \n",m,j);

  m=i403[0];
  for(j=0,i=1;i<10;i++)
    if (m<i403[i])
    {
      m=i403[i];
      j=i;
    }

  printf("i403--> max= %d max_idx= %d \n",m,j);

exit (0);
}

int val(n)
int n;
{
  int ii;
  for(ii=0;ii<10;ii++)
    if (n>100)
      n = ii*100;
    else
    {
      return (n);
    }
}
