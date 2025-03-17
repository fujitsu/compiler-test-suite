int dummy;



class CN {
public :
  int a;
private:
  int p;
}x;
struct SN{
  int st;
}y;
union UN{
  float fu;
  int   iu; 
}z;
enum EN{ e1, e2, e3};



template <class T> class TC {
private:
  int ti;
public:
  char tc;
};
template <class T, int x> class TTC {
protected:
  int ti;
  int a[10];
};
void f1(){
  TC<int> y;
  TTC<int, 10> x;
  dummy=sizeof(y)+sizeof(x);
}


namespace NA {
  int na;
  char c;
  class NAB {
    int nab;
    char c;
  }nab;
}


class T_C {};
typedef int I;
typedef T_C*  T_CP;


class N1_Class {
public:
  class N2_class {
    int a;
    int b;
 };
 class N2_class2 {
   class N3_class{
     int N3_member;
   };
   int x;
 };
}n1class;



namespace N1_name {
  int N1_mem;
  namespace N2_name {
    int N2_mem ;
  }
  namespace N2_name2{
    namespace N3_name{
      void N3_f(){}
      void * N3_mem;
    }
  }
}

    
namespace N1_n_c {
  int N1_n_c_mem;
  class N2_n_c {
    int N2_n_c_mem;
  public:
    class N3_n_c{
      int N3_n_c_mem;
      class N4_n_c{
        int N4_n_c_mem;
      public:
        void N4_n_c_func(){}
      };
    };
  };
  namespace N2_n_c_2 {
    int N2_n_c_2_mem;
    namespace N3_n_c {
      int N3_n_c_2_mem;
      class N4_n_c {
        class N5_n_c{
        protected:
           int N4_n_c_2;
        };
        float * N4_n_c_2;
      }; 
    }
    class N3_n_c_2{
      char (*N3_n_c_2_p)[30];
    private:
      class N4_n_c {
        short unsigned  N4_n_c_3;
      }; 
    };
  }
}


    
class N1_c_t {
public:
  typedef int (*N2_c_t)(int);
  class N2_c_t2 {
  protected:
    typedef char (*N3_c_t)[10][50];
 };
};


namespace N1_n_t2 {
  typedef int N1_n_t2;
  namespace N2_n_t2 {
    typedef double & N3_n_t2 ;
  }
}


namespace N1_n_t3 {
  class N2_n_t3 {
    typedef  char N3_n_t3 ;
    class N3_n_t3_2 {
    public:
      typedef char (*(* N4_n_t3_2)[3])[10];
    };
  };
  namespace N2_n_t3_2{
    class N3_n_t3_2 {
      typedef  char N4_n_t3_2 ;
      class N3_n_t3_2_2 {
      public:
        typedef int (*(* N4_n_t3_2_2)[3])[10];
      };
    };
  }
}

#include <stdio.h>
int main(){
  puts("ok");
  return 0;
}
