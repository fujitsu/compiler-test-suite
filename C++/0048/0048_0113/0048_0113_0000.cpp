#include "000.h"

void func(){
  NS1::C1::Inner1<int> c1_inner1;
  c1_inner1.print();
  NS1::C1::Inner2<double> c1_inner2;
  c1_inner2.print();
}
