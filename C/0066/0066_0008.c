

#include <stdio.h>
#include <string.h>

#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  int len = 10,i,j,count=0,count2=0,ng=0; 
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
      i8_ary[i] = 5;
      u4_ary[i] = 0;
      u8_ary[i] = 5;
      r4_ary[i] = 0;
      r8_ary[i] = 0;
      r16_ary[i] = 0;
      for (j=0;j<len;j++)
	{
	  ary[i][j]=0;
	}
    }

#ifdef _OPENMP
  omp_set_num_threads(4);
  omp_set_dynamic(0);
#endif

#pragma omp parallel
  {
#pragma omp sections private(i4_ary,r4_ary) firstprivate(i8_ary,u8_ary) lastprivate(u4_ary,r8_ary) private(i)
    {
#pragma omp section
      {
	for (i=0;i<10;i++)
	  {
	    if ( i8_ary[i] != 5 || u8_ary[i] != 5 ){
	      printf("NG-1:i8_ary[%d] ==%lld  u8_ary[%d] ==%llu\n",i,i8_ary[i],i,u8_ary[i]);
	      ng=1;
	    }
	    i4_ary[i] = i;
	    u4_ary[i] = i;
	    r4_ary[i] = i;
	    r8_ary[i] = i;
#pragma omp critical
	    {
	      r16_ary[i] = r16_ary[i] + i;
	      ary[0][i] = i;
	    }
	  }
      }
#pragma omp section
      {
	for (i=0;i<10;i++)
	  {
	    if ( i8_ary[i] != 5 || u8_ary[i] != 5 ){
	      printf("NG-2:i8_ary[%d] ==%lld  u8_ary[%d] ==%llu\n",i,i8_ary[i],i,u8_ary[i]);
	      ng=1;
	    }
	    i4_ary[i] = i+1;
	    u4_ary[i] = i+1;
	    r4_ary[i] = i+1;
	    r8_ary[i] = i+1;
#pragma omp critical
	    {
	      r16_ary[i] = r16_ary[i] + i;
	      ary[1][i] = i+1;
	    }
	  }
      }
#pragma omp section
      {
	for (i=0;i<10;i++)
	  {
	    if ( i8_ary[i] != 5 || u8_ary[i] != 5 ){
	      printf("NG-3:i8_ary[%d] ==%lld  u8_ary[%d] ==%llu\n",i,i8_ary[i],i,u8_ary[i]);
	      ng=1;
	    }
	    i4_ary[i] = i+2;
	    u4_ary[i] = i+2;
	    r4_ary[i] = i+2;
	    r8_ary[i] = i+2;
#pragma omp critical
	    {
	      r16_ary[i] = r16_ary[i] + i;
	      ary[2][i] = i+2;
	    }
	  }
      }
#pragma omp section
      {
	for (i=0;i<10;i++)
	  {
	    if ( i8_ary[i] != 5 || u8_ary[i] != 5 ){
	      printf("NG-4:i8_ary[%d] ==%lld  u8_ary[%d] ==%llu\n",i,i8_ary[i],i,u8_ary[i]);
	      ng=1;
	    }
	    i4_ary[i] = i+3;
	    u4_ary[i] = i+3;
	    r4_ary[i] = i+3;
	    r8_ary[i] = i+3;
#pragma omp critical
	    {
	      r16_ary[i] = r16_ary[i] + i;
	      ary[3][i] = i+3;
	    }
	  }
      }
    }
  }

  for (i=0;i<10;i++)
    {
      if( i4_ary[i]!=0 || i8_ary[i]!=5 || u4_ary[i]!=i+3 || u8_ary[i]!=5 || r4_ary[i]!=0 || r8_ary[i]!=i+3 || r16_ary[i]!=i*4 )
	{
	  if( i4_ary[i]!=0 )
	    printf("%d %d %d\n",i,i,i4_ary[i]);
	  if( i8_ary[i]!=5 )
	    printf("%d %d %lld\n",i,i,i8_ary[i]);
	  if( u4_ary[i]!=i+3 )
	    printf("%d %d %d %d\n",i,i+3,i,u4_ary[i]);
	  if( u8_ary[i]!=5 )
	    printf("%d %d %llu\n",i,i,u8_ary[i]);
	  if( r4_ary[i]!=0 )
	    printf("%d %d %f\n",i,i,r4_ary[i]);
	  if( r8_ary[i]!=i+3 )
	    printf("%d %f %d %f\n",i,i+3,i,r8_ary[i]);
	  if( r16_ary[i]!=i+3 )
	    printf("%d %Lf %d %Lf\n",i,i+3,i,r16_ary[i]);
	  count++;
	}
      for (j=0;j<4;j++)
	{
	  if (ary[j][i]!=i+j)
	    {
	      count2++;
	      printf("ary[%d][%d]=(%d)\n",j,i,ary[j][i]);
	    }
	}
    }

  if (!count && !count2 && !ng)
    {
      printf("OK\n");
    }
  else
    {
      printf("NG\n");
    }
  return 0;
}
