#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct line
{
  int length;
  char contents[0];
};

void foo(const char *arg)
{
  const int len = strlen(arg);
  line *me = (line *)
    malloc(sizeof(line) + len);
  
  me->length = len;
  strcpy(me->contents, arg);

  printf("%d: %s\n", me->length, me->contents);
  free(me);
}
