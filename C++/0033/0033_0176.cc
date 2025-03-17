#include <stdio.h>

int f_104p53(char c) { return c - 1; }
int f_104p53(int i) { return i + 1; }
int f_104p53(long L) { return 2 * int(L); }
int main()
{
  int f_104p53(char);
  int f_104p53(int);
  int work = 0;
#pragma omp parallel
  {
    int f_104p53(long);
#pragma omp parallel
    if( f_104p53('c') == 2 * 'c')
#pragma omp parallel
      ;
    else
#pragma omp parallel
#pragma omp atomic
      work++;
  }
  if( !work )
    printf("ok\n");
  else
    printf("ng f_104p53('c') : %d \n", f_104p53('c'));
}

