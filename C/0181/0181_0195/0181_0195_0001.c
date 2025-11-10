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
  struct line1 *this = (struct line1 *)
    malloc(sizeof(struct line1) + len + 1);
  
  this->line.length = len;
  strcpy(this->line.contents, arg);

  printf("%d: %s\n", this->line.length, this->line.contents);
  free(this);
}
