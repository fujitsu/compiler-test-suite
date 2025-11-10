#include <setjmp.h>
#include <stdio.h>

int bar(jmp_buf buf, int i)
{
  printf("Inside bar %d\n", i);
  longjmp(buf, i);
}

#ifdef ORIGINAL
int main()
{
  jmp_buf buf;
  int ret;

  if ((ret = setjmp(buf)) != 0) {
    printf("returning from bar == %d\n", ret);

    if ((ret = setjmp(buf)) != 0) {
      printf("returning from bar == %d\n", ret);
    } else {
      bar(buf, 927);
    }
  } else {
    bar(buf, 37);
  }

  return 0;
}
#else
void sub1()
{
  jmp_buf buf;
  int ret;

  if ((ret = setjmp(buf)) != 0) {
    printf("returning from bar == %d\n", ret);

    if ((ret = setjmp(buf)) != 0) {
      printf("returning from bar == %d\n", ret);
    } else {
      bar(buf, 927);
    }
  } else {
    bar(buf, 37);
  }
}
#endif
