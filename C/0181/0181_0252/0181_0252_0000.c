
int printf(const char*, ...);

void printArgsNoRet(char a3, char* a5) {
  printf("'%c' '%c'\n", (int)a3, (int)*a5);
}

#ifdef ORIGINAL
int main() {
  printArgsNoRet('c', "e");
  return 0;
}
#else
void sub1()
{
  printArgsNoRet('c', "e");
}
#endif
