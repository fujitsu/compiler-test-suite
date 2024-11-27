

#include <stdio.h>
#include <string.h>

#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  int len = 10; 

  int                    i4_ary[len];
  long long int          i8_ary[len];
  unsigned int           u4_ary[len];
  unsigned long long int u8_ary[len];
  float                  r4_ary[len];
  double                 r8_ary[len];
  long double            r16_ary[len];

  memset( i4_ary,  0, sizeof(int) * len );
  memset( i8_ary,  0, sizeof(long long int) * len );
  memset( u4_ary,  0, sizeof(unsigned int) * len );
  memset( u8_ary,  0, sizeof(unsigned long long int) * len );
  memset( r4_ary,  0, sizeof(float) * len );
  memset( r8_ary,  0, sizeof(double) * len );
  memset( r16_ary, 0, sizeof(long double) * len );

#ifdef _OPENMP
  omp_set_num_threads(4);
#endif

#pragma omp parallel
  {
#pragma omp sections lastprivate(i4_ary,i8_ary,u4_ary,u8_ary,r4_ary,r8_ary,r16_ary)
    {
#pragma omp section
      {
	i4_ary[1] = 1;
	i8_ary[1] = 1;
	u4_ary[1] = 1;
	u8_ary[1] = 1;
	r4_ary[1] = 1;
	r8_ary[1] = 1;
	r16_ary[1] = 1;
      }
#pragma omp section
      {
	i4_ary[1] = 2;
	i8_ary[1] = 2;
	u4_ary[1] = 2;
	u8_ary[1] = 2;
	r4_ary[1] = 2;
	r8_ary[1] = 2;
	r16_ary[1] = 2;
      }
#pragma omp section
      {
	i4_ary[1] = 3;
	i8_ary[1] = 3;
	u4_ary[1] = 3;
	u8_ary[1] = 3;
	r4_ary[1] = 3;
	r8_ary[1] = 3;
	r16_ary[1] = 3;
      }
#pragma omp section
      {
	i4_ary[1] = 4;
	i8_ary[1] = 4;
	u4_ary[1] = 4;
	u8_ary[1] = 4;
	r4_ary[1] = 4;
	r8_ary[1] = 4;
	r16_ary[1] = 4;
      }
    }
  }

  if( i4_ary[1] == 4 && i8_ary[1] == 4 && u4_ary[1] == 4 && u8_ary[1] == 4 &&
      r4_ary[1] == 4 && r8_ary[1] == 4 && r16_ary[1] == 4 )
    {
      printf("OK\n");
    }
  else
    {
      printf("=== NG ===\n");
      printf("i4_ary[1]  = %d\n",i4_ary[1]);
      printf("i8_ary[1]  = %lld\n",i8_ary[1]);
      printf("u4_ary[1]  = %d\n",u4_ary[1]);
      printf("u8_ary[1]  = %llu\n",u8_ary[1]);
      printf("r4_ary[1]  = %f\n",r4_ary[1]);
      printf("r8_ary[1]  = %f\n",r8_ary[1]);
      printf("r16_ary[1] = %Lf\n",r16_ary[1]);
    }
  return 0;
}
