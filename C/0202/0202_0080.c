#include <stdio.h>

#if defined(__STDC_VERSION__) && __STDC_VERSION__ < 199901L
#define II 10
#else 
int II = 10;
#endif 

int *vla[10];

void func_nest_2()
{
  int i=0;
  do {
    int array_1[II];

    do {
      int array_2[II];
  
      if (vla[0]==NULL) vla[0] = (int *)array_2;
      i++;
    } while (i<10);

    if (vla[1]==NULL) vla[1] = (int *)array_1;
    i++;
  } while (i<10);
}

void func_nest_3()
{
  int i=0;
  do {
    int array_1[II];

    do {
      int array_3[II];

      do {
        int array_2[II];
  
        if (vla[2]==NULL) vla[2] = (int *)array_2;
        i++;
      } while (i<10);

      if (vla[3]==NULL) vla[3] = (int *)array_3;
      i++;
    } while (i<10);

    if (vla[4]==NULL) vla[4] = (int *)array_1;
    i++;
  } while (i<10);
}

void func_break()
{
  int i=0;
  do {
    int array_1[II];

    if (vla[5]==NULL) vla[5] = (int *)array_1;
    break;
    i++;
  } while (i<10);
}

void func_goto()
{
  int i=0;
  do {
    int array_1[II];

    if (vla[6]==NULL) vla[6] = (int *)array_1;
    goto L1;
    i++;
  } while (i<10);
L1:;
}

void func_continue()
{
  int i=0;
  do {
    int array_1[II];

    if (vla[7]==NULL) vla[7] = (int *)array_1;
    i++;
    continue;
  } while (i<10);
}

void func_return()
{
  int i=0;
  do {
    int array_1[II];

    if (vla[8]==NULL) vla[8] = (int *)array_1;
    return;
    i++;
  } while (i<10);
}

int main()
{
  for ( int i=0 ; i<10 ; i++) {
    vla[i] = NULL;
  }
  func_nest_2();

  func_nest_3();

  func_break();

  func_goto();

  func_continue();

  func_return();

#if CFE
  if (vla[5] == vla[6] && vla[6] == vla[7] && vla[7] == vla[8] ) {
    printf("OK\n");
  } else {
    printf("%x\n%x\n%x\n%x\n%x\n%x\n%x\n%x\n%x\n%x\n",
            vla[0],vla[1],vla[2],vla[3],vla[4],vla[5],vla[6],vla[7],vla[8],vla[9]);
    printf("NG\n");
  }
#else
  printf("OK\n");
#endif


  return 0;
}
