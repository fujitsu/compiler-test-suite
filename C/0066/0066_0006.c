

#include <stdio.h>
#include <string.h>

#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  int len = 10, fpchk = 0;

  int                    i4_ary[len], i4;
  long long int          i8_ary[len], i8;
  unsigned int           u4_ary[len], u4;
  unsigned long long int u8_ary[len], u8;
  float                  r4_ary[len], r4;
  double                 r8_ary[len], r8;
  long double            r16_ary[len], r16;

  memset( i4_ary,  0, sizeof(int) * len );
  memset( i8_ary,  0, sizeof(long long int) * len );
  memset( u4_ary,  0, sizeof(unsigned int) * len );
  memset( u8_ary,  0, sizeof(unsigned long long int) * len );
  memset( r4_ary,  0, sizeof(float) * len );
  memset( r8_ary,  0, sizeof(double) * len );
  memset( r16_ary, 0, sizeof(long double) * len );

  i4_ary[1]  = 10;
  i8_ary[1]  = 10;
  u4_ary[1]  = 10;
  u8_ary[1]  = 10;
  r4_ary[1]  = 10;
  r8_ary[1]  = 10;
  r16_ary[1] = 10;

#ifdef _OPENMP
  omp_set_num_threads(4);
#endif

#pragma omp parallel
  {
#pragma omp sections firstprivate(i4_ary,i8_ary,u4_ary,u8_ary,r4_ary,r8_ary,r16_ary)
    {
#pragma omp section
      {
	if( i4_ary[1] != 10 || i8_ary[1] != 10 || u4_ary[1] != 10 || u8_ary[1] != 10 ||
	    r4_ary[1] != 10 || r8_ary[1] != 10 || r16_ary[1] != 10 ) {
	  i4  = i4_ary[1];
	  i8  = i8_ary[1];
	  u4  = u4_ary[1];
	  u8  = u8_ary[1];
	  r4  = r4_ary[1];
	  r8  = r8_ary[1];
	  r16 = r16_ary[1];
	  fpchk = 1;
	}
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

  if( i4_ary[1] == 10 && i8_ary[1] == 10 && u4_ary[1] == 10 && u8_ary[1] == 10 &&
      r4_ary[1] == 10 && r8_ary[1] == 10 && r16_ary[1] == 10 && fpchk == 0)
    {
      printf("OK\n");
    }
  else
    {
      printf("==== NG ====\n");
      printf(" fpchk = %d\n",fpchk);
      printf(" (org)i4_ary[1]  = %d (fp)i4  = %d\n", i4_ary[1], i4);
      printf(" (org)i8_ary[1]  = %lld (fp)i8  = %lld\n", i8_ary[1], i8);
      printf(" (org)u4_ary[1]  = %d (fp)u4  = %d\n", u4_ary[1], u4);
      printf(" (org)u8_ary[1]  = %llu (fp)u8  = %llu\n", u8_ary[1], u8);
      printf(" (org)r4_ary[1]  = %f (fp)r4  = %f\n", r4_ary[1], r4);
      printf(" (org)r8_ary[1]  = %f (fp)r8  = %f\n", r8_ary[1], r8);
      printf(" (org)r16_ary[1] = %Lf (fp)r16 = %Lf\n", r16_ary[1], r16);
    }
  return 0;
}
