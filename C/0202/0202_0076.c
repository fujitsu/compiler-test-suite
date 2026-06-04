#include <stdio.h>
#include <alloca.h>

#if defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
#include <complex.h>
#endif 


int *vla[10];

int i = 100, j;
int *p1, *p2, *p3;

void sub1()
{
  int       array_j[i];
  int       array_i[i];

  
  vla[0] = (int *)array_j;
  vla[1] = (int *)array_i;

  p1 = (int *)alloca(100);

}
void sub2()
{
  {
    int       array_j[i];
    int       array_i[i];
    

      vla[6] = (int *)array_j;
      vla[7] = (int *)array_i;
  }
}

int main()
{
  sub1();
  sub2();

#if CFE
  
  if (vla[0] == vla[6] && vla[1] == vla[7]) {
    printf("OK\n");
  } else {
    printf("0:%x\n1:%x\n2:%x\n3:%x\n4:%x\n5:%x\n6:%x\n7:%x\n8:%x\n9:%x\n",
           vla[0],vla[1],vla[2],vla[3],vla[4],vla[5],vla[6],vla[7],vla[8],vla[9]);
    printf("NG\n");
  }
#else
    printf("OK\n");
#endif

  return 0;
}
