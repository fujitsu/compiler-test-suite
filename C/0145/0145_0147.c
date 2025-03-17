

#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int is_expression(int parm, char *name, int exp, int i, int not)
{
  int tid=0;
  if (not == 0 && parm == exp) {
    parm += 10;
  } else if ( not == 1 && parm != exp) {
    parm += 10;
  } else {
#ifdef _OPENMP
    tid = omp_get_thread_num();
#endif
    printf("NG(%d):[%dcounts] %s = %d\n",tid,i,name,parm);
  }
  return parm;
}

int main()
{
  int i;
  int sh1,sh2,sh3,sh4;
  int pri1,pri2;
  int fp1,fp2;

  sh1  = sh2  = sh3 = sh4 = 5;
  pri1 = pri2 = 5;
  fp1  = fp2  = 5;

#pragma omp parallel shared(sh1,sh2,sh3,sh4) private(pri1,pri2) firstprivate(fp1,fp2)
  {
    pri1 = pri2 = 10;
#pragma omp for private(sh2,pri2,fp2) firstprivate(sh3) lastprivate(sh4)
    for (i=0;i<10;i++) {
      sh4  = fp2 = 10;
      pri2 = 20;
      sh2  = 10;
#pragma omp task
      {
#pragma omp atomic
	sh1  += 10; 
	sh2  = is_expression(sh2 ,"sh2 ",10    ,i,0);
	sh3  = is_expression(sh3 ,"sh3 ",5     ,i,0);
	sh4  = is_expression(sh4 ,"sh4 ",10    ,i,0);
	pri1 = is_expression(pri1,"pri1",10    ,i,0);
	pri2 = is_expression(pri2,"pri2",20    ,i,0);
	fp1  = is_expression(fp1 ,"fp1 ",5     ,i,0);
	fp2  = is_expression(fp2 ,"fp2 ",10    ,i,0);
      }
    }
  }

  
  if (sh1 != 105 || sh2 != 5 || sh3 != 5 || sh4 != 10
      || pri1 != 5 || pri2 != 5 || fp1 != 5 || fp2 != 5 ) {
    if (sh1  != 105)      printf("NG:sh1  = %d\n",sh1);
    if (sh2  != 5)        printf("NG:sh2  = %d\n",sh2);
    if (sh3  != 5)        printf("NG:sh3  = %d\n",sh3);
    if (sh4  != 10)       printf("NG:sh4  = %d\n",sh4);
    if (pri1 != 5)        printf("NG:pri1 = %d\n",pri1);
    if (pri2 != 5)        printf("NG:pri2 = %d\n",pri2);
    if (fp1  != 5)        printf("NG:fp1  = %d\n",fp1);
    if (fp2  != 5)        printf("NG:fp2  = %d\n",fp2);
  }
  printf("pass\n");
  return 0;
}
