namespace A {
  int a;
  namespace B {
    int b;
    namespace C {
      int c;
      namespace D {
        int d;
        namespace E {
          int e;
        }
      }
    }
  }
}
int i;
#include <stdio.h>
int main(){
  i++;
  {
    int j;
    j=10;
    i+=j;
    i++;
  }
  i++;

  puts("ok");
}
