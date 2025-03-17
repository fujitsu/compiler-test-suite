#include <stdio.h>
template <class Arg>
void f(int  (*x)(Arg)) {printf("ok\n");}

int ff(int){return 1;}

int main(){
  f(&ff);
}
