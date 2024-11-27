extern int puts(const char *);
void f1(float f1a, float f1b) {
#pragma omp parallel shared(f1a, f1b)
  {
#pragma omp parallel shared(f1a, f1b)
    {
#pragma omp parallel shared(f1a, f1b)
      {
	f1a = f1b + 2.0F;
      }
    }
  }

  if ( f1a != 3.0F ) {
    puts("NG");
  }
}

void f2(double f2a, double f2b) {
#pragma omp parallel shared(f2a, f2b)
  {
#pragma omp task shared(f2a, f2b)
    {
#pragma omp parallel shared(f2a, f2b)
      {
	f2a = f2b + 2.0;
      }
    }
  }

  if ( f2a != 3.0 ) {
    puts("NG");
  }
}

int main() {
  f1(0.0F, 1.0F);
  f2(0.0, 1.0);
  puts("OK");
  return 0;
}
