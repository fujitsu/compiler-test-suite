

#include <stdio.h>
#include <string.h>

#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  int len = 10,i,j,count1=0,count2=0; 
  int ary[len][len];
  int                    i4_ary[len];
  long long int          i8_ary[len];
  unsigned int           u4_ary[len];
  unsigned long long int u8_ary[len];
  float                  r4_ary[len];
  double                 r8_ary[len];
  long double            r16_ary[len];

  for (i=0;i<len;i++)
    {
      i4_ary[i] = 0;
      i8_ary[i] = 0;
      u4_ary[i] = 0;
      u8_ary[i] = 0;
      r4_ary[i] = 0;
      r8_ary[i] = 0;
      r16_ary[i] = 0;
      for (j=0;j<len;j++) ary[i][j]=0;
    }

#ifdef _OPENMP
  omp_set_num_threads(4);
  omp_set_dynamic(0);
#endif

#pragma omp parallel private(i4_ary,u4_ary,r4_ary,i) firstprivate(i8_ary,u8_ary,r8_ary)
  {
    for (i=0;i<10;i++)
      {
	i4_ary[i] += i;
	i8_ary[i] += i;
	u4_ary[i] += i;
	u8_ary[i] += i;
	r4_ary[i] += i;
	r8_ary[i] += i;
#pragma omp critical
	{
	  r16_ary[i] += i;
	  for (j=0;j<10;j++) ary[i][j]+=j;
	}
      }
  }

  for (i=0;i<10;i++)
    {
      if( i4_ary[i]!=0 || i8_ary[i]!=0 || u4_ary[i]!=0 || u8_ary[i]!=0 || r4_ary[i]!=0 || r8_ary[i]!=0 || r16_ary[i]!=i*4 )
	{
	  if( i4_ary[i]!=0 )
	    printf("%d %d %d\n",i,i,i4_ary[i]);
	  if( i8_ary[i]!=0 )
	    printf("%d %d %lld\n",i,i,i8_ary[i]);
	  if( u4_ary[i]!=0 )
	    printf("%d %d %u\n",i,i,u4_ary[i]);
	  if( u8_ary[i]!=0 )
	    printf("%d] %d %llu\n",i,i,u8_ary[i]);
	  if( r4_ary[i]!=0 )
	    printf("%d %d %f\n",i,i,r4_ary[i]);
	  if( r8_ary[i]!=0 )
	    printf("%d %d %f\n",i,i,r8_ary[i]);
	  if( r16_ary[i]!=i*4 )
	    printf("%d %d %d %Lf\n",i,i*4,i,r16_ary[i]);
	  count1++;
	}
      for (j=0;j<4;j++)
	{
	  if (ary[j][i]!=i*4)
	    {
	      printf("ary[%d][%d]=(%d)\n",j,i,ary[j][i]);
	      count2++;
	    }
	}
    }
  
  if( !count1 && !count2 )
    {
      printf("OK\n");
    }
  else
    {
      printf("NG\n");
    }
  return 0;
}
