#include <string>
using namespace std;
int a=1;
int m=2;
int main(void) {
  m = min(m, a);
  if (m == 1) {
    printf("OK\n");
  } else {
    printf("NG %d\n",m);
  }
  return 1;
}
