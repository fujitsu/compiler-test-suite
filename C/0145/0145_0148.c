

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
    printf("sec%d(%d)    :%s  = %2d\n",i,tid,name,parm);
  }
  return parm;
}

int is_ret(int parm, char *name, int exp, int ret, int not)
{
  int tid=0;
  if (not == 0 && parm == exp) {
    ret++;
  } else if ( not == 1 && parm != exp) {
    ret++;
  } else {
#ifdef _OPENMP
    tid = omp_get_thread_num();
#endif
    printf("parallel(%d):%s  = %2d\n",tid,name,parm);
  }
  return ret;
}

int sub()
{
  static int sh1,sh2,sh3,sh4;
  
  int pri1,pri2;
  static int pri3;
  int ret = 0;

#pragma omp single
  {
  sh1  = sh2  = sh3  = sh4  = 5;
  pri1 = pri2 = pri3 = 5;
  }
#pragma omp sections private(sh2,pri2) firstprivate(sh3,pri3) lastprivate(sh4)
  {
#pragma omp section
    {
      sh2   = 10;
      sh4   = 10;
      pri2  = 10;
#pragma omp task
      {
#pragma omp atomic
	sh1  += 10;
	sh2  = is_expression(sh2 ,"sh2 ",10,1,0);
        if (sh3!=5) {
	  printf("NG:sh3=%d\n",sh3);
	}
	sh4  = is_expression(sh4 ,"sh4 ",10,1,0);
	if (pri1!=5) {
	  printf("NG:pri1=%d\n",pri1);
	}
	pri2 = is_expression(pri2,"pri2",10,1,0);
	if (pri3!=5) {
	  printf("NG:pri3=%d\n",pri3);
	}
      }
    }
#pragma omp section
    {
      sh2   = 20;
      sh4   = 10;
      pri2  = 20;
#pragma omp task
      {
#pragma omp atomic
	sh1  += 10;
	sh2  = is_expression(sh2 ,"sh2 ",20,2,0);
        if (sh3!=5) {
	  printf("NG:sh3=%d\n",sh3);
	}
	sh4  = is_expression(sh4 ,"sh4 ",10,2,0);
	if (pri1!=5) {
          printf("NG:pri1=%d\n",pri1);
	}
	pri2 = is_expression(pri2,"pri2",20,2,0);
	if (pri3!=5) {
	  printf("NG:pri3=%d\n",pri3);
	}
      }
    }
  }

  ret = is_ret(sh1 ,"sh1 ",25,ret,0);
  ret = is_ret(sh2 ,"sh2 ",5 ,ret,0);
  ret = is_ret(sh3 ,"sh3 ",5 ,ret,0);
  ret = is_ret(sh4 ,"sh4 ",10,ret,0);
  ret = is_ret(pri1,"pri1", 5,ret,0);
  ret = is_ret(pri2,"pri2", 5,ret,0);
  ret = is_ret(pri3,"pri3", 5,ret,0);
  return ret;
}

int main()
{
  int ret=0;

#pragma omp parallel
  {
    ret = sub();
  }

  
  if (ret != 7) {
    printf("NG:ret = %d\n",ret);
  }
  printf("pass\n");
  return 0;
}
