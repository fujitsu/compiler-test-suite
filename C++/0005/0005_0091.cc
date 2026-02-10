#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#ifdef _OPENMP
#include <omp.h>
#endif

#if __cplusplus
struct st{ 
      int i1;
      int i4;
      st(){ i1 = i4 =0;}
      st(st &r){ i1 = r.i1; i4 =r.i4; }
      st & operator =(st &r){ i1 = r.i1; i4 =r.i4; return *this;}
      ~st(){}
}st;
#else
struct st {
    int i1;
    int i4;
};
#endif
 void sub(int *,int *);
      struct st s1;
int main()
{
      int i2[50], i3[50];
      int  i;

      s1.i1 = 25;
      for(i=0; i<50; i++)
	{
          i2[i] = 0;
          i3[i] = 0;
	}

      sub(i2,i3);

      for(i=0; i<50; i++)
	{
	  i3[i] = i;
        }
      for(i=0; i<50; i++)
	{
          if(i2[i] != i3[i])
	    {
              printf( "i2[%d]=%d i3[%d]=%d\n",i,i2[i],i,i3[i]);
            }
        }
      printf(" #### C_OMP lastprivate(int[]) ####\n");
      if(s1.i1 == i2[50-1])
	{
          printf("   OK\n");
	}
      else
	{
          printf("   NG!!\n");
          printf("s1.i1=%d\n",s1.i1);
	  for(i=0;i<50;i++)
	    {
              if(i==0)printf( "i2[%d]=%d",i,i2[i]);
	    }
	  printf("\n");
	  for(i=0;i<50;i++)
  	    {
              if(i==0)printf( "i3=%d",i3[i]);
	    }
	  printf("\n");
      }
   exit (0) ;
}

void sub(int *i2,int *i3)
{
    int i;
#pragma omp parallel
   {
#pragma omp for lastprivate(s1)
      for (i=0; i<50; i++)
	{
	  i2[i] = i;

          s1.i1= i;
        }
   }
}
