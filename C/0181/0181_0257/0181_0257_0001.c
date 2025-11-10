int printf(const char *, ...);

void test_2(short s1) {
  unsigned short us2 = (unsigned short) s1;     
  
  printf("s1   = %d\n",   s1);
  printf("us2  = %u\n",   us2);
}

#ifdef ORIGINAL
int main() {
  test(-769);
  return 0;
}
#else
void sub2()
{
  test_2(-769);
}
#endif
