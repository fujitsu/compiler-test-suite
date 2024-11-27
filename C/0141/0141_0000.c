#include <stdio.h>

void printout(char **msg, int size)
{
  int i;

  for (i = 0; i < size; ++i) {
    printf("%s\n", msg[i]);
  } 
}

int main()
{
  static char *msg[] = {
    "Abcdefg A Abcdefgh:",
    "  OK"
  };
  printout(msg, sizeof(msg)/sizeof(char*));
}
