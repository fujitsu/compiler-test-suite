#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
#include <omp.h>     


#define LOCK_FAILURE 0 
int  opt_verbose = 0; 
int  eqCheck0(int no, int checkValue, int compValue, const char *str);

int    error = 0;




class cfunc01 {
public:
cfunc01(int maxthds, int orderNo, int num, ...) {
  int  myNo    =10;
  int  checkNo = 0;
  omp_nest_lock_t lock1;
  int  res;
  int  rcc = 0;


  int tmp;
  va_list list;
  va_start(list, num);
  for(int I=0; I<num; ++I)
    tmp = va_arg(list, int);
  printf("\n");
  va_end( list );
  tmp++;


  
  
  
  
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

  error += rcc;
}
};



class cfunc02 {
public:
cfunc02(int maxthds, int orderNo, int num, ...) {
  int  checkNo = 0;
  omp_nest_lock_t lock1;
  int  rcc = 0;


  int tmp;
  va_list list;
  va_start(list, num);
  for(int I=0; I<num; ++I)
    tmp =  va_arg(list, int);
  printf("\n");
  va_end( list );
  tmp++;


  
  
  
  
  
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

  error += rcc;
}
};



class cfunc03 {
public:
cfunc03(int maxthds, int orderNo, int num, ...) {
  int  myNo    =30;
  int  checkNo = 0;
  omp_nest_lock_t lock1;
  int  res;
  int  rcc = 0;


  int tmp;
  va_list list;
  va_start(list, num);
  for(int I=0; I<num; ++I)
    tmp = va_arg(list, int);
  printf("\n");
  va_end( list );
  tmp++;


  
  
  
  
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

  error += rcc;
}
};



class cfunc04 {
public:
cfunc04(int maxthds, int orderNo, int num, ...) {
  int  myNo    =40;
  int  checkNo = 0;
  omp_nest_lock_t lock1;
  int  res;
  int  rcc = 0;


  int tmp;
  va_list list;
  va_start(list, num);
  for(int I=0; I<num; ++I)
    tmp = va_arg(list, int);
  printf("\n");
  va_end( list );
  tmp++;


  
  
  
  
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

  error += rcc;
}
};



class cfunc05 {
public:
cfunc05(int maxthds, int orderNo, int num, ...) {
  int  myNo    =50;
  int  checkNo = 0;
  omp_nest_lock_t lock1;
  int  res;
  int  rcc = 0;


  int tmp;
  va_list list;
  va_start(list, num);
  for(int I=0; I<num; ++I)
    tmp = va_arg(list, int);
  printf("\n");
  va_end( list );
  tmp++;


  
  
  
  
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

  error += rcc;
}
};





int main(int argc, char *argv[]) {
  static char tpName[] = "omp_LOCK_001.c";
  char **pp;
  int    maxthds;

  
  
  
  
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
  
  
  
  printf("----- omp_test_nest_lock or ");
  printf("omp_test_lock -----\n");
  

  
  
  
  cfunc01 o11(maxthds,1, 3, 1, 2, 3); 
  cfunc02 o12(maxthds,1, 3, 1, 2, 3); 
  cfunc03 o13(maxthds,1, 3, 1, 2, 3); 
  cfunc04 o14(maxthds,1, 3, 1, 2, 3); 
  cfunc05 o15(maxthds,1, 3, 1, 2, 3); 

  cfunc01 o21(maxthds,2, 2, 2, 1); 
  cfunc02 o22(maxthds,2, 2, 2, 1); 
  cfunc03 o23(maxthds,2, 2, 2, 1); 
  cfunc04 o24(maxthds,2, 2, 2, 1); 
  cfunc05 o25(maxthds,2, 2, 2, 1); 

  
  
  
  printf("%s\n",opt_verbose?"--":error?"NG":"OK");

  return error;
}
int  eqCheck0(int no, int checkValue, int compValue, const char *str) {
  int rcc = 0;
  if (checkValue != compValue || opt_verbose) {
    printf("- %02d %s:%2d (==%2d)\n",
           no,str,checkValue,compValue);
    rcc = 1;
  }
  return rcc;
}
