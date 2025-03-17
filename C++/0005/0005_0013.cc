#if __cplusplus
extern "C" int printf(const char*, ...);
#else
extern int printf(const char*, ...);
#endif

int main() {
  double d1 = 10.0;
  double d2 = 20.0;
  double d3;
  int res=0;

  d3 = d1 + d2;
  if (d3 != 30.0) {
    res++;
    printf("NG: d3=%lf\n", d3);
  }
  d3 = d1 - d2;
  if (d3 != -10.0) {
    res++;
    printf("NG: d3=%lf\n", d3);
  }
  d3 = d1 * d2;
  if (d3 != 200.0) {
    res++;
    printf("NG: d3=%lf\n", d3);
  }
  d3 = d2 / d1;
  if (d3 != 2.0) {
    res++;
    printf("NG: d3=%lf\n", d3);
  }
  if (res == 0) {
    printf("OK\n");
  }
  return res;
}
