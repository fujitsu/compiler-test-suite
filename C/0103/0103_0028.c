extern int puts(const char *);
void f1(unsigned char f1a, unsigned char f1b) {
#pragma omp parallel shared(f1a, f1b)
  {
#pragma omp parallel shared(f1a, f1b)
    {
      f1a = f1b + 2;
    }
  }

  if ( f1a != 3 ) {
    puts("NG");
  }
}

void f2(unsigned short f2a, unsigned short f2b) {
#pragma omp task shared(f2a, f2b)
  {
#pragma omp parallel shared(f2a, f2b)
    {
      f2a = f2b + 2;
    }
  }

#pragma omp taskwait

  if ( f2a != 3 ) {
    puts("NG");
  }
}

int main() {
  f1((unsigned char)0, (unsigned char)1);
  f2((unsigned short)0, (unsigned short)1);
  puts("OK");
  return 0;
}

