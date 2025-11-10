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
  struct line *this = (struct line *)
    malloc(sizeof(struct line) + len + 1);
  
  this->length = len;
  strcpy(this->contents, arg);

  printf("%d: %s\n", this->length, this->contents);
  free(this);
}
