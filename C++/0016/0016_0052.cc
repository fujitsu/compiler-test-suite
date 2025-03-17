namespace A { int a; }
using namespace A;
using namespace A;
#include <stdio.h>
int main(){
  using namespace A;
  a++;
  puts("ok");
}






