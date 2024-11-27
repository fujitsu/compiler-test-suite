#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include <string.h>
int val(int n);
typedef struct{
               float real,imag;
              }COMPLEX;
typedef struct{
               float real,imag;
              }COMPLEX8;
typedef struct{
               double dreal,dimag;
              }COMPLEX16;
typedef struct{
               long double qreal,qimag;
              }COMPLEX32;

int main()
{
  struct st1 {
    int i401[10],i402[10],i403[10],i404[10],i405[10],i406[10];
    int list[10],list2[10];
    int i411[10][10],i412[10][10],i421[10][10][10];
    short int i201[10];
    short int i202[10];
    short int i211[10][10];
    float r401[10],r402[10],r403[10],r404[10];
    float r411[10][10],r412[10][10];
    double r801[10 + 1],r802[10],r803[10],r804[10];
    long double r1601[10];
    long double r1602[10];
  } t;
  struct st1 *p = &t;
  
  int i=1,j,m=1,k;

  for(j=0;j<10;j++){
    p->i201[j] =0;
    p->i202[j] =0;
    p->r1601[j]=0;
    p->r1602[j]=0;
  }

  for(;i<=10;
    p->i401[i-1]=i+1,p->i402[i-1]=p->i401[i-1]+1,p->i403[i-1]=p->i402[i-1]+1,
    p->i404[i-1]=p->i403[i-1]+1,p->i405[i-1]=p->i404[i-1]+1,
    p->i406[i-1]=p->i405[i-1]+1,
    i++);

  for(i=0;i<10;p->r404[i]=i+4,i++) p->r401[i]=i+3,
    p->r402[i]=i+1,p->r403[i]=i+2;

  for(j=0,i=0;i<10;p->list2[i]=i%2,i++)
  {
    p->r801[j]=j+1,
    p->r802[j]=j+2;p->r803[j]=j+3,
    j++;
    p->r804[j-1]=j+1;
  }

  for(i=0;i<10;i++)
    for(j=0;j<10;j++)
    {
      p->r411[i][j]=j+1;
      p->r412[i][j]=j+2;
    }

    for(i=0;i<10;i++) for(j=0;j<10;j++) p->i411[i][j]=p->i412[i][j]=i;

    for(i=0;i<10;i++)
      for(j=0;j<10;j++) p->i211[i][j]=i+j;

  printf("\n*** test 1 ***\n\n");

  for(i=0;i<10;i++)
  { p->i401[i] = p->i403[i] + p->i405[i];p->i406[i] = p->i403[i] - p->i401[i],
    p->i405[i] = p->i406[i] * p->i403[i],
    p->i403[i] = p->i401[i] / p->i405[i];p->i403[i]+=p->i401[i]; }
  
  for(i=0;i<10;i++) printf("%d ",p->i403[i]);printf("\n");

  for(i=0;i<10;i++)
  {
    p->r401[i]=p->r402[i]+i,
    p->r402[i]=p->r401[i]*p->r403[i],
    p->r403[i]=p->r401[i]-p->r402[i];p->r402[i]=p->r402[i]+p->r401[i],
    p->r403[i]=p->r402[i]*p->r403[i];
  }

  for(i=0;i<10;i++) printf("%g ",p->r403[i]);printf("\n");

  printf("\n*** test 2 ***\n\n");

  for(i=0;i<10;i++) { p->i201[i] = i ,
    p->i202[i] = p->i201[i] + i,
    p->r1601[i] *= 2 ,
    p->r1602[i] = (double)(p->i201[i]+p->i202[i]);p->i401[i]=i;}

  for(i=0;i<10;i++) printf("%g ",(double)p->r1601[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",(double)p->r1602[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",p->i202[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",p->i401[i]);printf("\n");

  for(i=0;i<10;p->list[i]=i,i++)
  {
    p->i401[i]=(int)p->r401[i]*p->i402[i],p->r402[i]=i+p->r401[i],
    p->i201[i]=p->i401[i]+p->r402[i];p->i403[i]=p->i401[i]-i;
    p->i202[i]=p->i201[i]-1,
    p->i404[i]=p->i403[i]+p->i401[i]-p->r402[i];
  }

  for(i=0;i<10;i++) printf("%d ",p->i404[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",p->i202[i]);printf("\n");

  for(i=0;i<10;i++)
  {
    p->i401[i]=p->i402[i]*p->i403[i];p->r1601[i]=sin(p->r801[i]);
    p->r1602[i]=cos(p->r801[i]+p->r802[i]);p->i404[p->list[i]]=p->i405[p->list[i]]+i;
    p->i402[i]=p->i404[p->list[i]]-p->i401[i];p->i201[i]=i;p->i406[i]=p->i402[i]*2;
    p->i202[i]=i-p->i201[i];p->i402[i]=-p->i406[i];p->r1601[i]+=p->r1602[i];
  }

  for(i=0;i<10;i++) printf("%d ",p->i202[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",p->i402[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",(double)p->r1601[i]);printf("\n");

  for(i=0;i<10;i++)
    if (i<5)
      p->r801[i]=sin(p->r802[i]);
    else
      p->r1601[i]=cos(p->r803[i]);

  for(i=0;i<10;i++) printf("%g ",p->r801[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",(double)p->r1601[i]);printf("\n");

  printf("\n*** test 3 ***\n\n");

  for(i=0;i<10;i++)
    if (p->i401[i]<p->i402[i])
    {
      p->r401[i]=p->r402[i]&&p->i405[i];
      p->r402[i]=p->r401[i]*i;
    }
    else
    {
      p->r801[i]=p->r802[i]||i;
      p->r803[i]=(p->r801[i]+1,
               p->r801[i]*i);
    }

  for(i=0;i<10;i++) printf("%g ",p->r402[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",p->r803[i]);printf("\n");

  for(i=0;i<10;i+=2)
    if (p->i401[i]=(sin(p->r801[i])<cos(p->r802[i])))
      p->r401[p->list[i]]=sqrt((double)i+(double)p->i401[i]);
    else
      p->r402[p->list[i]]=sqrt(p->r803[p->list[i]]+p->i401[i]);

  for(i=0;i<10;i++) printf("%g ",p->r401[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",p->r402[i]);printf("\n");

  for(i=0;i<10;i++)
    if (p->i401[i]<p->i402[i])
      p->r801[i]=sin((double)p->list[i]);
    else if(p->i402[i]<p->i403[i])
      p->r802[i]=cos((double)p->r401[p->list[i]]);
    else
      if (p->i403[i]<p->i404[i])
        p->r803[i]=tan((double)p->r402[i]);
      else
        p->r804[i]=i;

  for(i=0;i<10;i++) printf("%g ",p->r801[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",p->r802[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",p->r803[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",p->r804[i]);printf("\n");

  for(i=0;i<10;i+=2)
    switch (i%3)
    {
      case 0: p->i406[i]=i;break;
      case 1: p->i406[i]=p->i403[i]*p->i401[i];
              break;
      case 2:
              p->i406[i]=(int)(((sin(p->r801[p->list[i]]))*10)+0.5);
              p->i406[i]=p->i406[i]*p->i402[i]+(int)p->r401[p->list[i]];
              break;
      default:
              p->i406[i]=-i;
    }

  for(i=0;i<10;i++) printf("%d ",p->i406[i]);printf("\n");

  for(i=0,j=1;
      i<10;
      i++,j++)
  {
    p->r801[j]=((sin(p->r802[i])<=sin(p->r802[p->list[i]]))?
      (p->r803[i]=p->r401[i]*3.14+p->i403[i]):
      (p->r804[i]=p->r401[p->list[i]]*3.14+p->i404[i]));
  }

  for(i=0;i<10;i++) printf("%g ",p->r801[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",p->r803[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",p->r804[i]);printf("\n");

  for(i=0;i<10;i++)
  {
    if (i<5)
    {
      p->i401[i]=i+1;
      continue;
    }
    p->i402[i]=0;
  }
  for(i=0;i<10;i++)
  {
    if (i<5)
      p->i403[i]=i+1;
    else
    {
      p->i404[i]=i+10;
      continue;
    }
    p->i402[i]=p->i402[i]+i;
  }

  for(i=0;i<10;i++) printf("%d ",p->i401[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",p->i402[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",p->i403[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",p->i404[i]);printf("\n");

  for(i=0;i<10;i++)
  {
    if (i>5)
    {
      break;
    }
    p->i405[i]=0;
  }
  for(i=0;i<10;i++)
  {
    if (i>5)
    {
      p->i406[i]=0;
    }
    else
    {
      break;
    }
  }

  for(i=0;i<10;i++) printf("%d ",p->i403[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",p->i405[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",p->i406[i]);printf("\n");

  for(i=0;i<10;i++)
  {
    if (i>5)
    {
      p->r401[i]=i;
      break;
    }
    p->r402[i]=0;
  }
  for(i=0;i<10;i++)
  {
    if (i>5)
    {
      p->r801[i]=i;
    }
    else
    {
      p->r802[i]=i+1;
      break;
    }
    p->r803[i]=-1;
  }

  for(i=0;i<10;i++) printf("%g ",p->r401[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",p->r402[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",p->r801[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",p->r802[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",p->r803[i]);printf("\n");

  printf("\n*** test 4 ***\n\n");

  for(i=0;i<10;i+=3)
  {
    p->i401[i]=p->i402[i]*p->i403[i];
    printf("%d=%d   ",i,p->i401[i]);
  }

  for(i=0;i<10;i++)
  {
    if (i==0||i>9)
    {
      printf("\n");
    }
    else
     p->r401[i]=(int)(p->i401[i]/(i+1));
    printf("%g ",p->r401[i]);
  }

  for(i=val(0);i<10;i++)
  {
    p->i401[i]=val(i);
    p->i402[val(i)]=p->i403[i]*val(p->i404[i]);
  }

  for(i=0;i<10;i++) printf("%d ",p->i401[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",p->i402[i]);printf("\n");

  i=0;
  while(i>10)
  {
    p->r801[i]=p->r802[i]-p->r803[i];
    i++;
  }

  for(i=0;i<10;i++) printf("%g ",p->r801[i]);printf("\n");

  i=0;
  do
  {
    p->r401[i]=i-p->r402[i];
    i++;
  }while(i<10);

  for(i=0;i<10;i++) printf("%g ",p->r401[i]);printf("\n");

  for(i=0;i<10;i++)
  {
    p->r801[i]=sin(p->r802[i]);
    if (p->r801[i]<0)
      goto lab1;
    else
      if (p->r801[i]!=p->r803[i])
        p->r401[i]=1;
      else
        goto lab2;
    p->r401[i]=0;
lab1: p->r402[i]=1;
lab2:
      p->r402[i]=0;
  }

  for(i=0;i<10;i++) printf("%g ",p->r401[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",p->r402[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",p->r801[i]);printf("\n");

  for(i=0;i<10;i++)
  {
    p->i402[i]=i;
lab3:
    p->i403[i]=i+1;
    if (p->i402[i]!=p->list[i])
      goto lab3;
    p->i404[i]=p->i402[i]+p->i403[i];
  }

  for(i=0;i<10;i++) printf("%d ",p->i404[i]);printf("\n");

  for(i=0;i<10;i++)
  {
    p->i401[i]=p->i402[i]+p->i403[i];
    
    p->i404[i]=p->i405[i]-p->i406[i];

    p->i402[i]=p->i401[i]*p->i404[i];
  }

  for(i=0;i<10;i++) printf("%g ",p->r402[i]);printf("\n");

  printf("\n*** test 5 ***\n\n");

  for(i=0;i<10;i++)
    for(j=0;j<10;j++)
      p->i411[i][j]=p->i401[j]+p->i402[j]*p->i412[i][j];

  for(i=0;i<10;i++) printf("%d ",p->i411[i][1]);printf("\n");

  for(i=0;i<10;i++)
  {
    p->i401[i]=i;
    for(j=0;j<10;j++)
      p->r401[j]=p->r402[j]+1;
  }

  for(i=0;i<10;i++) printf("%d ",p->i401[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",p->r401[i]);printf("\n");

  for(i=0;i<10;i++)
  {
    p->i401[i]=i;
    for(j=0;j<10;j++)
    {
      p->i411[i][j]=p->i411[i][j]*p->r401[i]*p->r402[j];
      p->i412[i][j]=p->i411[i][j]*p->r401[j]*p->r402[i];
    }
  }

  for(i=0;i<10;i++) printf("%d ",p->i401[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",p->i412[i][1]);printf("\n");

  for(i=0;i<10;i++)
  {
    for(j=0;j<10;j++)
    {
      p->i412[i][j]=p->i412[i][j]*p->r801[i]*p->r802[j];
      p->i411[i][j]=p->i412[i][j]*p->r801[j]*p->r802[i];
    }
    p->i402[i]=i;
  }

  for(i=0;i<10;i++) printf("%d ",p->i402[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",p->i411[i][1]);printf("\n");

  for(i=0;i<10;i++)
  {
    p->i403[i]=i;
    for(j=0;j<10;j++)
      p->i412[i][j]=p->i411[i][j]*i;
    p->i404[i]=p->i401[i]+1;
  }

  for(i=0;i<10;i++) printf("%d ",p->i403[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",p->i404[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",p->i412[i][1]);printf("\n");

  for(i=0;i<10;i++)
  {
    if (p->i403[i]<5)
      for(j=0;j<10;j++)
      {
        p->i411[j][i]=p->r401[j]*p->r402[j];
      }
    else
      for(k=0;k<10;k++)
      {
        p->i412[k][i]=p->r403[i]*p->r404[i];
      }
  }

  for(i=0;i<10;i++) printf("%d ",p->i411[i][2]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",p->i412[i][2]);printf("\n");

  printf("\n*** test 6 ***\n\n");

  for(i=0;i<10;i++)
    for(j=0;j<10;j++)
      p->r411[i][j]=p->r412[i][j]*p->i211[i][j];

  for(i=0;i<10;i++) printf("%g ",p->r411[i][i]);printf("\n");

  for(j=0;j<10;j++)
  {
    p->r1601[j]=1.;
    for(i=0;i<10;i++)
      p->r412[i][j]=p->r411[j][i]*j+p->i411[i][j];
  }

  for(i=0;i<10;i++) printf("%g ",p->r412[2][i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",(double)p->r1601[i]);printf("\n");

  for(j=0;j<10;j++)
  {
    for(i=0;i<10;i++)
      p->r411[i][j]=p->r412[i][j]*p->r411[i][j]*2;
    p->r1602[j]=1.;
  }

  for(i=0;i<10;i++) printf("%g ",p->r411[2][i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",(double)p->r1602[i]);printf("\n");

  for(j=0;j<10;j++)
  {
    p->r801[j]=sin(p->r801[j]);
    for(i=0;i<10;i++)
      p->i211[i][j]=1;
    p->r802[j]=cos(p->r802[j]);
  }

  for(i=0;i<10;i++) printf("%d ",p->i211[2][i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",p->r801[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",p->r802[i]);printf("\n");

  for(i=0;i<10;i++)
    for(j=0;j<10;j++)
      for(k=0;k<10;k++)
        p->i421[i][j][k]=k+i+j;

  for(i=0;i<10;i++) printf("%d ",p->i421[2][i][5]);printf("\n");

  for(i=0,k=1;i<10;i++,k*=2)
    for(j=0;j<10;j++)
      p->r411[i][j]=sin(p->r801[i])+cos(p->r802[i]);

  for(i=0;i<10;i++) printf("%g ",p->r411[i][i]);printf("\n%d\n",k);

  for(i=0;i<10;i++)
  {
    p->r401[i]=p->r402[i]+i;
    for(j=0;j<10;j++)
    {
      p->i411[i][j]=p->i412[i][j]+j;
      if (i!=p->list[i])
        goto lab4;
      p->i411[i][j]=p->i411[i][j]+i+j;
    }
lab4:p->r401[i]=p->r403[i]+i;
  }

  for(i=0;i<10;i++) printf("%d ",p->i411[1][i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",p->r401[i]);printf("\n");

  j=0;
  for(i=0;i<10;i++)
  {
    p->r401[i]=p->r402[i]+i;
    if (i!=p->list[i])
    {
      j=0;
      goto lab5;
    }
    for(j=0;j<10;j++)
    {
      p->r411[i][j]=p->r412[i][j]+j;
lab5: p->r411[i][j]=p->r411[i][j]-j;
    }
  }

  for(i=0;i<10;i++) printf("%g ",p->r411[i][1]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",p->r401[i]);printf("\n");

  printf("\n*** test 7***\n\n");

  for(i=1;i<10;i++)
    p->i401[i]=p->i401[i-1]*p->i402[i]+p->i403[i];

  j=0;
  for(i=1;i<10;i++)
    j+=(p->i401[i]+p->i402[i]);

  for(i=1,j=0;i<10;i++)
    if (p->list2[i])
    {
      p->i402[j++]=p->i403[i]*p->i405[i];
    }

  for(i=1,j=0;i<10;i++)
    if (!p->list2[i])
    {
      p->i403[i]=p->i406[j++]*i;
    }

  for(i=0;i<10;i++) printf("%d ",p->i401[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",p->i402[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",p->i403[i]);printf("\n");
  printf("%d \n",j);

  m=p->i402[0];
  for(j=0,i=1;i<10;i++)
    if (m>p->i402[i])
    {
      m=p->i402[i];
      j=i;
    }

  printf("i402--> min= %d min_idx= %d \n",m,j);

  m=p->i403[0];
  for(j=0,i=1;i<10;i++)
    if (m<p->i403[i])
    {
      m=p->i403[i];
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
