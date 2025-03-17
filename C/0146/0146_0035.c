#include <stdio.h>
struct tag {
  int i4;
};
int main()
{
  int i;
  struct tag st;

  st.i4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    st.i4++;
  }
  if (st.i4 != 100) printf("ng101: %d\n", st.i4);

  st.i4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    ++st.i4;
  }
  if (st.i4 != 100) printf("ng102: %d\n", st.i4);

  st.i4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    st.i4--;
  }
  if (st.i4 != -100) printf("ng103: %d\n", st.i4);

  st.i4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    --st.i4;
  }
  if (st.i4 != -100) printf("ng104: %d\n", st.i4);

  printf("pass\n");
  return 0;
}
