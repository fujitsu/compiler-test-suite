#include <stdio.h>
#ifndef __sparc
#include <stdarg.h>
#include <exception>

static int c_count;
       int e_count = 1;

struct cclass {
  int m00;
  cclass() : m00(c_count++) {
#ifdef EXCEPTION_TEST
    printf("cclass() : %d\n", m00);
#endif 
  }  
  cclass(const cclass& cp) : m00(cp.m00*100) {
#ifdef EXCEPTION_TEST
    printf("cclass() : %d\n", m00);
#endif 
  }  
  ~cclass() {
#ifdef EXCEPTION_TEST
    printf("~cclass() : %d\n", m00);
#endif 
  }  
};

asm("LABEL1:");

#ifdef IS_TEMPLATE_CLASS_INT
template<class T>
#endif 
class Class1 {
public:
  int m11;
  int m12;
  void Func01() {
    printf("Class1.Func01() : %d\n", m11=c_count=c_count+5);
  }  
  virtual void Func02(int num, ...) {
    printf("Class1.Func02() : %d\n", m11=c_count=c_count+6);
  }  
  virtual Class1* Func1(cclass cob) {
    printf("Class1.Func1() : %d\n", m11=c_count=c_count+1);
    return this;
  }  
  virtual Class1* Func2() {
    printf("Class1.Func2() : %d, %d\n", m11, m12=c_count=c_count+2);
    return this;
  }  
  virtual Class1* Func3(int num, ...) {
    printf("Class1.Func3() : %d\n", m12);
    return this;
  }  
};

asm("LABEL2:");

#ifdef IS_TEMPLATE_CLASS_INT
template<class T>
class Class2 : public virtual Class1<T> {
#else 
class Class2 : public virtual Class1 {
#endif 
public:
  void Func01() {
    printf("Class2.Func01() : %d\n", m11=c_count=c_count+7);
  }  
  virtual void Func02(int num, ...) {
    printf("Class2.Func02() : %d\n", m11=c_count=c_count+8);
    va_list list;
    va_start(list, num);
    for(int I=0; I<num; ++I) {
      printf("%d\t", va_arg(list, int));
    }  
    printf("\n");
    va_end( list );
  }  
  virtual Class2* Func1(cclass cob) {
    if (c_count)
    {
      const cclass *Cp = new cclass();
      Func01();
      struct { int m1; } lobj = { 10000 };
      cclass Cc;
      volatile cclass Cs[2];
      static int CSI = lobj.m1;
      printf("Class2.Func1() : %d\n", m11=c_count=c_count+3);
      printf("Class2.Func1() CSI : %d\n", CSI);
#pragma omp parallel
      printf("");
      delete Cp;
      throw cclass();
    }  
    return this;
  }  
  virtual Class2* Func2() noexcept(false)
  try {
    {
      if (c_count) goto LABEL1;
      printf("Class2.Func2() NG.\n");
      LABEL1:
      switch (c_count) {
      case 1000:
        break;
      default:
        Func02(1, 1);
      }  
      cclass Cc;
      int CAI = 20000;
      printf("Class2.Func2() : %d, %d\n", m11, m12=c_count=c_count+4);
      printf("Class2.Func2() CAI : %d\n", CAI);
      if (c_count) throw (float)2.0;
      return this;
    }
  }  
  catch (float F2f) {
    printf("Class2.Func2() caught : %g\n", F2f);
    
    return this;
  }  
  
  virtual Class2* Func3(int num, ...) {
    {
      printf("Class2.Func3() : %d\n", m12);
      va_list list;
      va_start(list, num);
#pragma clang loop unroll(disable)
      for(int I=0; I<num; ++I) {
        printf("%d\t", va_arg(list, int));
      }  
      printf("\n");
      va_end( list );
      if (e_count) return this;
    }
    printf("Class2.Func3() NG.\n");
    return this;
  }  
};

asm("LABEL3:");

void my_unexpected() {
  printf("my_unexpected()\n");
  throw std::bad_exception();
}  
int main() {
#ifdef IS_TEMPLATE_CLASS_INT
  Class2<int> Obj2;
  Class1<int> *P1 = &Obj2;
#else 
  Class2 Obj2;
  Class1 *P1 = &Obj2;
#endif 
  try {
    P1 = P1->Func1(cclass());
  } catch (cclass) {
    try {
      std::set_unexpected(my_unexpected);
      P1 = P1->Func2();
    } catch(std::bad_exception) {}
  }
  P1 = P1->Func3(2, 21, 22);
}
#else 
int main() {
  printf("Class2.Func01() : 9\n");
  printf("Class2.Func1() : 15\n");
  printf("Class2.Func1() CSI : 10000\n");
  printf("Class2.Func02() : 24\n");
  printf("1	\n");
  printf("Class2.Func2() : 24, 29\n");
  printf("Class2.Func2() CAI : 20000\n");
  printf("Class2.Func2() caught : 2\n");
  printf("Class2.Func3() : 29\n");
  printf("21	22	\n");
}  
#endif 

