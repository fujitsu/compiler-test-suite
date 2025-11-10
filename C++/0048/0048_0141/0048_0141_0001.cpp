#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct line1
{
  struct line2
  {
    int length;
    char contents[0];
  } line;
};

void foo(const char *arg)
{
  const int len = strlen(arg);
  struct line1 *me = (struct line1 *)
    malloc(sizeof(struct line1) + len);
  
  me->line.length = len;
  strcpy(me->line.contents, arg);

  printf("%d: %s\n", me->line.length, me->line.contents);
  free(me);
}
