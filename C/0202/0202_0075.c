#include <stdio.h>

#if defined(__STDC_VERSION__) && __STDC_VERSION__ < 199901L
#define II 10
#else 
int II = 10;
#endif 

int *vla[10];

void func_nest__2()
{
  int array_2[II];

  vla[0] = (int *)array_2;
}

void func_nest__3()
{
  int array_3[II];
  func_nest__2() ;

  vla[1] = (int *)array_3;
}

void func_nest_2()
{
  int array_1[II];
  func_nest__2() ;

  vla[2] = (int *)array_1;
}

void func_nest_3()
{
  int array_1[II];
  func_nest__3() ;

  vla[3] = (int *)array_1;
}

#if error
void func_break()
{
  int array_1[II];

  vla[4] = (int *)array_1;
  break;
}
#endif

void func_goto()
{
  int array_1[II];

  vla[5] = (int *)array_1;
  goto L1;
L1:;
}

#if error
void func_continue()
{
  int array_1[II];

  vla[6] = (int *)array_1;
  continue;
}
#endif

void func_return()
{
  int array_1[II];

  vla[7] = (int *)array_1;
  return;
}

int main()
{
  for ( int i=0 ; i<10 ; i++) {
    vla[i] = NULL;
  }

  func_nest_2();

  func_nest_3();

#if error
  func_break();
#endif

  func_goto();

#if error
  func_continue();
#endif

  func_return();

#if CFE
  if (vla[5] == vla[7]) {
    printf("OK\n");
  } else {
    printf("%x\n%x\n%x\n%x\n%x\n%x\n%x\n%x\n",vla[0],vla[1],vla[2],vla[3],vla[4],vla[5],vla[6],vla[7]);
    printf("NG\n");
  }
#else
  printf("OK\n");
#endif

  return 0;
}
