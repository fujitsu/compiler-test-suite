
#include <stdio.h>
#include <stdarg.h>

static int c_count;

struct cclass {
  int m00;
  cclass() : m00(c_count++) {  }
  cclass(const cclass& cp) : m00(cp.m00*100) {  }
  ~cclass() {  }
};

static int GSI;
struct ST {
  int M01;
  double M02;
};

int Func(int NUM, ...) { return 1; }

struct Cclass {
  int m01;
  Cclass(int I, ...)
   : m01(I)
  {
    int ind=1;
    va_list list;
    va_start(list, I);
    printf("Cclass() : %d\n", GSI++);
    cclass *cp = new cclass();
    cclass *cpp = new cclass[1];
    ST sto = { 2, 3.01 };
    printf("M01 : %d, M02 : %g\n", sto.M01, sto.M02);
    int tmp;
#pragma clang loop unroll(disable)
for (ind=1; ind<2; ind++)
  tmp = Func(20);
    {
      int li = tmp;
      static int sli = 2;
      printf("li : %d, sli : %d\n", ++li, ++sli);
    }
    printf("%d\t", va_arg(list, int));
    printf("%g\t", va_arg(list, double));


    printf("\n");
#if 1

#pragma omp parallel
    printf("");
#endif
    va_end( list );
    delete cp;
    delete[] cpp;
  }
  ~Cclass() { printf("~Cclass() : %d\n", m01); }
};

template<class T>
struct Tclass {
  T m01;
  Tclass(T I, ...)
   : m01(I)
  {
    va_list list;
    va_start(list, I);
    printf("Tclass() : %d\n", GSI++);
    cclass *cp = new cclass();
    cclass *cpp = new cclass[1];
    ST sto = { 2, 3.0 };
    printf("M01 : %d, M02 : %g\n", sto.M01, sto.M02);
    {
      int li = 1;
      static int sli = 2;
      printf("li : %d, sli : %d\n", ++li, ++sli);
    }
    printf("%d\t", va_arg(list, int));
    printf("%g\t", va_arg(list, double));


    printf("\n");
#if 1

#pragma omp parallel
    printf("");
#endif
    va_end( list );
    delete cp;
    delete[] cpp;
  }
  ~Tclass() { printf("~Tclass() : %d\n", m01); }
};
int main()
{
    printf("main() : calling Cclass() ... 1\n");
    Cclass cobj1(3000, 8, 8.8);
    Cclass cobj2(6000, 4, 4.4e+02);
    Tclass<int> tobj3(2000, 2, 2.2);
}

