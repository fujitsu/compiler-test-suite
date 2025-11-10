extern int printf(const char*, ...);
void foo_2( unsigned int i, int array[4]) __attribute__((noinline));
void foo_2( unsigned int i, int array[4]) {
  unsigned int j=3;
  do {
    array[j] = array[j-1];
    j--;
  }  while (j>i);
  printf("%d %d %d %d %d\n", i, array[0], array[1], array[2], array[3]);
}
#ifdef ORIGINAL
int main() {
  int array[4], i;
  for (i=0; i<5; i++) {
    array[0] = 5; array[1] = 6; array[2] = 7; array[3] = 8;
    foo(i, array);
  }
  array[0] = 5; array[1] = 6; array[2] = 7; array[3] = 8;
  foo(0xffffffffU, array);
  return 0;
}
#else
void sub2()
{
  int array[4], i;
  for (i=0; i<5; i++) {
    array[0] = 5; array[1] = 6; array[2] = 7; array[3] = 8;
    foo_2(i, array);
  }
  array[0] = 5; array[1] = 6; array[2] = 7; array[3] = 8;
  foo_2(0xffffffffU, array);
}
#endif
