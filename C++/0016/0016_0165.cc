class CA {
public:
  class NEST_CLASS {
    int a;
  };  
  struct NEST_STRUCT{
    int a;
  };
  enum NEST_ENUM{ e1,e2};
  union NEST_UNION{
    int a;
  };
  typedef int (* NEST_TYPEDEF)[2];
  static int * st_a;
  virtual void vfunc(int ,char){}
  virtual void pvfunc(char,short)=0;
};
int *CA::st_a=0;
class CB : public CA {
  void pvfunc(char,short){}
}cbobj;


struct SA {
public:
  class NEST_CLASS {
    int a;
  };  
  struct NEST_STRUCT{
    int a;
  };
  enum NEST_ENUM{ e1,e2};
  union NEST_UNION{
    int a;
  };
  typedef int (* NEST_TYPEDEF)[2];
  static int * st_a;
  virtual void vfunc(int ,char){}
  virtual void pvfunc(char,short)=0;
};
int *SA::st_a = 0;
struct SB :public SA {
  void pvfunc(char,short){}
}sbobj;


union UA {
  class NEST_CLASS {
    int a;
  };  
  struct NEST_STRUCT{
    int a;
  };
  enum NEST_ENUM{ e1,e2};
  union NEST_UNION{
    int a;
  };
  typedef int (* NEST_TYPEDEF)[2];
}uaobj;

template <class T , int I> class TPA {
  class NEST_CLASS {
    int a;
  };  
  struct NEST_STRUCT{
    int a;
  };
  enum NEST_ENUM{ e1,e2};
  union NEST_UNION{
    int a;
  };
  typedef int (* NEST_TYPEDEF)[2];
  static int * st_a;
  virtual void vfunc(int ,char){}
  virtual void pvfunc(char,short)=0;
};
class TPB : public TPA<int,10> {
  void pvfunc(char,short){}
}tpbobj;


namespace {
  class NEST_CLASS {
    int a;
  };  
  struct NEST_STRUCT{
    int a;
  };
  enum NEST_ENUM{ e1,e2};
  union NEST_UNION{
    int a;
  };
  typedef int (* NEST_TYPEDEF)[2];
  static int * st_a;
};

#include <stdio.h>
int main(){
  st_a=0;
  puts("ok");
  return (int)0;
}
