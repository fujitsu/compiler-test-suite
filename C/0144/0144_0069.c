#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#ifdef _OPENMP
#include <omp.h>
#endif

#if __cplusplus
struct st {
      int i1;
      char c1;
      st(){ i1 = c1 =0;} 
      st(st &r){ i1 = r.i1; c1 =r.c1; } 
      st & operator =(st &r){ i1 = r.i1; c1 =r.c1; return *this;}
      ~st(){}
}st;
#else
struct st{
      int i1;
      char c1;
} ;
#endif
int main()
{
      struct st s1;
      char cb;
      unsigned int ld;
      int i2[4];
      int  tp_debug = 0;

      //strcpy(&s1.c1,"M");
      s1.c1 = 'M' ;
      s1.i1 = 10;
      omp_set_dynamic (1);
      omp_set_dynamic (0);
#pragma omp parallel firstprivate(s1) private(ld) num_threads(4)
{
#ifdef _OPENMP
    ld=omp_get_thread_num();
#endif

      s1.c1 = ld +'0';
      s1.i1 = s1.i1 +ld;
      i2[ld] = s1.i1;
      if(tp_debug == 1)
        printf("para s1.c1 = %c\n",s1.c1);
}
      printf(" #### C_OMP firstprivate(char) omp_firstprivate_06.c ####\n");
      if((strncmp(&s1.c1,"M",1) == 0) &&
	 (i2[0]==10) && (i2[1]==11) && (i2[2]==12) && (i2[3]==13))
	{
	printf("   OK\n");
	}
      else
	{
          printf("   NG!!  s1.c1 = %c\n",s1.c1);
  	printf("   i2=%d %d %d %d\n",i2[0],i2[1],i2[2],i2[3]);
	}
    exit(0);
}
