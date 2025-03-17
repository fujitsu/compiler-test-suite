#include <stdio.h>

int counter(char *ss)
{
  char *s;
  int count = 0;
  for (; ;) {
    s = ss;
    while (*s == 's' || *s == ' ') {
      s++;
      ++count;
    }
    if (count > 0) break;
  }
  return count;
}

int main(void)
{
  if (counter("sss su") == 5) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
  return 0;
}
