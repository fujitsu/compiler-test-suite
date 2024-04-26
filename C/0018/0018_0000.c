#include <stdio.h>
#include <stdbool.h>

bool test_true(void)
{
  return true;
}

int main(void)
{
  if (test_true()) {
    fprintf(stdout, "true\n");
  }
  if (!test_true()) {
    fprintf(stdout, "false\n");
    return 1;
  }
  return 0;
}

