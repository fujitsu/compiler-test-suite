#include <stdio.h>
int main() {
  struct tag {
    unsigned int a : 4;
    unsigned int b : 4;
  } st;
#pragma omp parallel
  st.a = st.b = 0;
#pragma omp parallel
#pragma omp critical
  for (st.b = 0; st.b < 3; st.b++) {
#pragma omp parallel
    st.a = 3;
  }

  if (st.a != 3 || st.b != 3)
    printf(" NG %d %d\n", st.a, st.b);
  else
    printf("ok\n");
}
