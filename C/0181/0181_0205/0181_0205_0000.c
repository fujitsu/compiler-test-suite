#include <stdio.h>

extern char *my_dgettext(int no, char *my_format) __attribute__ ((format_arg (2)));

int main()
{
  char *text = my_dgettext(100,"%s, %d, %s\n");
  printf(text, "AA", "BB");
  return 0;
}
