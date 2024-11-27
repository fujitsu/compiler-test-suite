extern int puts(const char *);
void f1() {
  char f1c;
  f1c = 1;
#pragma omp task shared(f1c)
  {
    f1c = f1c + 1;
  }

#pragma omp taskwait

  if ( f1c == 2 ) {
    puts("OK");
  } else {
    puts("NG");
  }
}

int main() {
  f1();
  return 0;
}
