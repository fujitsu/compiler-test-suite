class Dummy {};
template<class T , int I> class Dummy_temp {};
typedef int Dummy_type;


class CA {
public:
  int (Dummy::*a)(int,char);
  void *(Dummy::*b);

  short Dummy::*(Dummy::*d);
  float (Dummy::*e)[20][30];
  class Dummy Dummy::*f;
  Dummy_type Dummy::*g;
  Dummy_temp<int,10> Dummy::*h;
}caobj;


struct SA {
public:
  int (Dummy::*a)(int,char);
  void *(Dummy::*b);

  short Dummy::*(Dummy::*d);
  float (Dummy::*e)[20][30];
  class Dummy Dummy::*f;
  Dummy_type Dummy::*g;
  Dummy_temp<int,10> Dummy::*h;
}saobj;


union UA {
  int (Dummy::*a)(int,char);
  void *(Dummy::*b);

  short Dummy::*(Dummy::*d);
  float (Dummy::*e)[20][30];
  class Dummy Dummy::*f;
  Dummy_type Dummy::*g;
  Dummy_temp<int,10> Dummy::*h;
}uaobj;

namespace NA {
  int (Dummy::*a)(int,char);
  void *(Dummy::*b);

  short Dummy::*(Dummy::*d);
  float (Dummy::*e)[20][30];
  class Dummy Dummy::*f;
  Dummy_type Dummy::*g;
  Dummy_temp<int,10> Dummy::*h;
};


template <class T, int I,class T2> class TPA {
public:
  int (Dummy::*a)(int,char);
  void *(Dummy::*b);

  short Dummy::*(Dummy::*d);
  float (Dummy::*e)[20][30];
  class Dummy Dummy::*f;
  Dummy_type Dummy::*g;
  Dummy_temp<int,10> Dummy::*h;
  T (Dummy::*i)[I];
  T (*(T2::*j)[2])();
};
TPA<int,10,Dummy>  tpaobj;


typedef  int (Dummy::*TAA)(int,char);
typedef  void *(Dummy::*TAB);

typedef  short Dummy::*(Dummy::*TAD);
typedef  float (Dummy::*TAE)[20][30];
typedef  class Dummy Dummy::*TAF;
typedef  Dummy_type Dummy::*TAG;
typedef  Dummy_temp<int,10> Dummy::*TAH;

#include <stdio.h>
int main(){
  puts("ok");
}
