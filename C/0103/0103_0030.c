extern int puts(const char *);
void f1(unsigned int f1a, unsigned int f1b) {
#pragma omp task shared(f1a, f1b)
  {
#pragma omp task shared(f1a, f1b)
    {
#pragma omp task shared(f1a, f1b)
      {
	f1a = f1b + 2;
      }
    }
  }

#pragma omp taskwait

  if ( f1a != 3 ) {
    puts("NG");
  }
}

void f2(unsigned long long f2a, unsigned long long f2b) {
#pragma omp task shared(f2a, f2b)
  {
#pragma omp parallel shared(f2a, f2b)
    {
#pragma omp task shared(f2a, f2b)
      {
	f2a = f2b + 2ULL;
      }
    }
  }

#pragma omp taskwait

  if ( f2a != 3ULL ) {
    puts("NG");
  }
}

int main() {
  f1(0U, 1U);
  f2(0ULL, 1ULL);
  puts("OK");
  return 0;
}

