extern int puts(const char *);
void f1(int f1b) {
  int f1a[100], i;

  for(i=0;i<100;++i) {
    f1a[i] = f1b + i;
  }

  for(i=0;i<100;++i) {
    if ( f1a[i] != i+2 ) {
      puts("NG");
    }
  }
}

int main() {
  f1(2);
  puts("OK");
  return 0;
}
