extern int puts(const char *);
void f1(short f1a, short f1b) {
#pragma omp parallel shared(f1a, f1b)
  {
    f1a = f1b + 1;
  }

  if ( f1a == 2 ) {
    puts("OK");
  } else {
    puts("NG");
  }
}

int main() {
  f1((short)0, (short)1);
  return 0;
}
