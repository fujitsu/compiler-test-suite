#include <stdlib.h>
#include <stdio.h>
#include <omp.h>     


#define LOCK_FAILURE 0 
int  opt_verbose = 0; 
int  eqCheck0(int no, int checkValue, int compValue, char *str);

int cfunc01(int maxthds, int orderNo) {
  int  myNo    =10;
  int  checkNo = 0;
  omp_nest_lock_t lock1;
  int  res;
  int  rcc = 0;

  checkNo++;
#pragma omp parallel if (orderNo == 1)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
    }
  }
#pragma omp parallel if (orderNo == 2)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
      res = omp_test_nest_lock(&lock1);
    }
  }
  rcc += eqCheck0(myNo+checkNo,res,1,"init nest lock");

  checkNo++;
#pragma omp parallel if (orderNo == 1)
  {
#pragma omp master
    {
      omp_destroy_nest_lock(&lock1);
    }
  }
#pragma omp parallel if (orderNo == 2)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
      res = omp_test_nest_lock(&lock1);
    }
  }
  rcc += eqCheck0(myNo+checkNo,res,1,"init nest lock");

  checkNo++;
#pragma omp parallel if (orderNo == 1)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
      omp_set_nest_lock(&lock1);
    }
  }
#pragma omp parallel if (orderNo == 2)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
      res = omp_test_nest_lock(&lock1);
    }
  }
  rcc += eqCheck0(myNo+checkNo,res,1,"init nest lock");

  checkNo++;
#pragma omp parallel if (orderNo == 1)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
      omp_unset_nest_lock(&lock1);
    }
  }
#pragma omp parallel if (orderNo == 2)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
      res = omp_test_nest_lock(&lock1);
    }
  }
  rcc += eqCheck0(myNo+checkNo,res,1,"init nest lock");

  checkNo++;
#pragma omp parallel if (orderNo == 1)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
      omp_test_nest_lock(&lock1);
    }
  }
#pragma omp parallel if (orderNo == 2)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
      res = omp_test_nest_lock(&lock1);
    }
  }
  rcc += eqCheck0(myNo+checkNo,res,1,"init nest lock");

  return rcc;
}
int cfunc02(int maxthds, int orderNo) {
  int  checkNo = 0;
  omp_nest_lock_t lock1;
  int  rcc = 0;

  checkNo++;
#pragma omp parallel if (orderNo == 1)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
    }
  }
#pragma omp parallel if (orderNo == 2)
  {
#pragma omp master
    {
      omp_destroy_nest_lock(&lock1);
    }
  }
  checkNo++;
#pragma omp parallel if (orderNo == 1)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
      omp_set_nest_lock(&lock1);
    }
  }
#pragma omp parallel if (orderNo == 2)
  {
#pragma omp master
    {
      omp_destroy_nest_lock(&lock1);
    }
  }
 
  checkNo++;
#pragma omp parallel if (orderNo == 1)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
      omp_unset_nest_lock(&lock1);
    }
  }
#pragma omp parallel if (orderNo == 2)
  {
#pragma omp master
    {
      omp_destroy_nest_lock(&lock1);
    }
  }
 
  checkNo++;
#pragma omp parallel if (orderNo == 1)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
      omp_test_nest_lock(&lock1);
    }
  }
#pragma omp parallel if (orderNo == 2)
  {
#pragma omp master
    {
      omp_destroy_nest_lock(&lock1);
    }
  }

  return rcc;
}
int cfunc03(int maxthds, int orderNo) {
  int  myNo    =30;
  int  checkNo = 0;
  omp_nest_lock_t lock1;
  int  res;
  int  rcc = 0;

  checkNo++;
#pragma omp parallel if (orderNo == 1)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
    }
  }
#pragma omp parallel if (orderNo == 2)
  {
#pragma omp master
    {
      omp_set_nest_lock(&lock1);
      res = omp_test_nest_lock(&lock1);
    }
  }
  rcc += eqCheck0(myNo+checkNo,res,2,"set nest lock");

  checkNo++;
  checkNo++;
#pragma omp parallel if (orderNo == 1)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
      omp_set_nest_lock(&lock1);
    }
  }
#pragma omp parallel if (orderNo == 2)
  {
#pragma omp master
    {
      omp_set_nest_lock(&lock1);
      res = omp_test_nest_lock(&lock1);
    }
  }
  rcc += eqCheck0(myNo+checkNo,res,3,"set nest lock");

  checkNo++;
#pragma omp parallel if (orderNo == 1)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
      omp_set_nest_lock(&lock1); 
      omp_unset_nest_lock(&lock1);
    }
  }
#pragma omp parallel if (orderNo == 2)
  {
#pragma omp master
    {
      omp_set_nest_lock(&lock1);
      res = omp_test_nest_lock(&lock1);
    }
  }
  rcc += eqCheck0(myNo+checkNo,res,2,"set nest lock");

  checkNo++;
#pragma omp parallel if (orderNo == 1)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
      omp_test_nest_lock(&lock1);
    }
  }
#pragma omp parallel if (orderNo == 2)
  {
#pragma omp master
    {
      omp_set_nest_lock(&lock1);
      res = omp_test_nest_lock(&lock1);
    }
  }
  rcc += eqCheck0(myNo+checkNo,res,3,"set nest lock");

  return rcc;
}
int cfunc04(int maxthds, int orderNo) {
  int  myNo    =40;
  int  checkNo = 0;
  omp_nest_lock_t lock1;
  int  res;
  int  rcc = 0;

  checkNo++;
#pragma omp parallel if (orderNo == 1)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
      omp_set_nest_lock(&lock1); 
    }
  }
#pragma omp parallel if (orderNo == 2)
  {
#pragma omp master
    {
      omp_unset_nest_lock(&lock1);
      res = omp_test_nest_lock(&lock1);
    }
  }
  rcc += eqCheck0(myNo+checkNo,res,1,"unset nest lock");

  checkNo++;
  checkNo++;
#pragma omp parallel if (orderNo == 1)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
      omp_set_nest_lock(&lock1);
    }
  }
#pragma omp parallel if (orderNo == 2)
  {
#pragma omp master
    {
      omp_unset_nest_lock(&lock1);
      res = omp_test_nest_lock(&lock1);
    }
  }
  rcc += eqCheck0(myNo+checkNo,res,1,"unset nest lock");

  checkNo++;
#pragma omp parallel if (orderNo == 1)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
      omp_set_nest_lock(&lock1); 
      omp_set_nest_lock(&lock1); 
      omp_unset_nest_lock(&lock1);
    }
  }
#pragma omp parallel if (orderNo == 2)
  {
#pragma omp master
    {
      omp_unset_nest_lock(&lock1);
      res = omp_test_nest_lock(&lock1);
    }
  }
  rcc += eqCheck0(myNo+checkNo,res,1,"unset nest lock");

  checkNo++;
#pragma omp parallel if (orderNo == 1)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
      omp_test_nest_lock(&lock1);
    }
  }
#pragma omp parallel if (orderNo == 2)
  {
#pragma omp master
    {
      omp_unset_nest_lock(&lock1);
      res = omp_test_nest_lock(&lock1);
    }
  }
  rcc += eqCheck0(myNo+checkNo,res,1,"unset nest lock");

  checkNo++;
#pragma omp parallel if (orderNo == 1)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
      omp_set_nest_lock(&lock1);
      omp_test_nest_lock(&lock1);
    }
  }
#pragma omp parallel if (orderNo == 2)
  {
#pragma omp master
    {
      omp_unset_nest_lock(&lock1);
      res = omp_test_nest_lock(&lock1);
    }
  }
  rcc += eqCheck0(myNo+checkNo,res,2,"unset nest lock");

  return rcc;
}
int cfunc05(int maxthds, int orderNo) {
  int  myNo    =50;
  int  checkNo = 0;
  omp_nest_lock_t lock1;
  int  res;
  int  rcc = 0;

  checkNo++;
#pragma omp parallel if (orderNo == 1)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
    }
  }
#pragma omp parallel if (orderNo == 2)
  {
#pragma omp master
    {
      omp_test_nest_lock(&lock1);
      res = omp_test_nest_lock(&lock1);
    }
  }
  rcc += eqCheck0(myNo+checkNo,res,2,"test nest lock");

  checkNo++;
  checkNo++;
#pragma omp parallel if (orderNo == 1)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
      omp_set_nest_lock(&lock1);
    }
  }
#pragma omp parallel if (orderNo == 2)
  {
#pragma omp master
    {
      omp_test_nest_lock(&lock1);
      res = omp_test_nest_lock(&lock1);
    }
  }
  rcc += eqCheck0(myNo+checkNo,res,3,"test nest lock");

  checkNo++;
#pragma omp parallel if (orderNo == 1)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
      omp_set_nest_lock(&lock1); 
      omp_unset_nest_lock(&lock1);
    }
  }
#pragma omp parallel if (orderNo == 2)
  {
#pragma omp master
    {
      omp_test_nest_lock(&lock1);
      res = omp_test_nest_lock(&lock1);
    }
  }
  rcc += eqCheck0(myNo+checkNo,res,2,"test nest lock");

  checkNo++;
#pragma omp parallel if (orderNo == 1)
  {
#pragma omp master
    {
      omp_init_nest_lock(&lock1);
      omp_test_nest_lock(&lock1);
    }
  }
#pragma omp parallel if (orderNo == 2)
  {
#pragma omp master
    {
      omp_test_nest_lock(&lock1);
      res = omp_test_nest_lock(&lock1);
    }
  }
  rcc += eqCheck0(myNo+checkNo,res,3,"test nest lock");

  checkNo++;
  if (omp_get_max_threads() > 1) {
#pragma omp parallel if(orderNo == 1)
    {
      if (orderNo != 1 ||
          omp_get_thread_num() == 1) {
        omp_init_nest_lock(&lock1);
        omp_test_nest_lock(&lock1);
      }
    }
#pragma omp parallel if(orderNo == 2)
    {
      if (orderNo != 2 ||
          omp_get_thread_num() == 1) {
        res = omp_test_nest_lock(&lock1);
      }
    }
    rcc += eqCheck0(myNo+checkNo,res,LOCK_FAILURE,"test nest lock");
  }

  return rcc;
}


int main(int argc, char *argv[]) {
  static char tpName[] = "omp_LOCK_001.c";
  char **pp;
  int    maxthds;
  int    error = 0;

  opt_verbose = 0;

  pp = argv;
  while (*(++pp) && ((*pp)[0] == '-')) {
    switch ((*pp)[1]) {
     case 'v':
      opt_verbose = 1; break;
     default:
      error = 1;
    }
  }
  if(*pp)
    error = 1;

  if (error) {
    printf("--- %s invalid option ---\n",tpName);
    return 1;
  }

  omp_set_dynamic(0);
  maxthds = omp_get_max_threads();
  printf("----- omp_LOCK_001.c-- omp_test_nest_lock or ");
  printf("omp_test_lock -----\n");
  error += cfunc01(maxthds,1); 
  error += cfunc02(maxthds,1); 
  error += cfunc03(maxthds,1); 
  error += cfunc04(maxthds,1); 
  error += cfunc05(maxthds,1); 

  error += cfunc01(maxthds,2); 
  error += cfunc02(maxthds,2); 
  error += cfunc03(maxthds,2); 
  error += cfunc04(maxthds,2); 
  error += cfunc05(maxthds,2); 

  printf("%s\n",opt_verbose?"--":error?"NG":"OK");

  return error;
}
int  eqCheck0(int no, int checkValue, int compValue, char *str) {
  int rcc = 0;
  if (checkValue != compValue || opt_verbose) {
    printf("- %02d %s:%2d (==%2d)\n",
           no,str,checkValue,compValue);
    rcc = 1;
  }
  return rcc;
}
