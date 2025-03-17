#include <stdio.h>
struct t {
  long long int a:8;
};
struct t  a,b;
int main() {
  b.a = a.a + 10LL; 
  if (b.a == 10LL) {
    a.a = 15LL - b.a;
    if (a.a == 5LL) {
      printf("ok\n");
    } else {
      printf("ng\n");
    }
  } else {
    printf("ng\n");
  }
}
