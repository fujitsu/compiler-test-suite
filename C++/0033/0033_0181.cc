#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif
struct A{int a;};
struct X533p_111a:public virtual A
{
	int i;
	char buf[4096];
};

X533p_111a yy;
X533p_111a zz = yy;
int main(){
  int work=0,num=1;
#pragma omp parallel
#pragma omp atomic
  work++;
#ifdef _OPENMP
  num = omp_get_max_threads();
#endif
  if( work == num )
    printf("ok\n");
  else
    printf("ng\n");
}
