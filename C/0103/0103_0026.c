extern int puts(const char *);
void f1(int f1a, int f1b) {
#pragma omp task shared(f1a, f1b)
  {
#pragma omp task shared(f1a, f1b)
    {
      f1a = f1b + 2;
    }
  }

#pragma omp taskwait

  if ( f1a != 3 ) {
    puts("NG");
  }
}

void f2(long long int f2a, long long int f2b) {
#pragma omp parallel shared(f2a, f2b)
  {
#pragma omp task shared(f2a, f2b)
    {
      f2a = f2b + 2LL;
    }
  }


  if ( f2a != 3LL ) {
    puts("NG");
  }
}

int main() {
  f1(0, 1);
  f2(0LL, 1LL);
  puts("OK");
  return 0;
}

