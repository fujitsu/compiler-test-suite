
#include <stdio.h>

typedef struct {
  int start;
  int end;
} test_t;

static test_t msg;
static int len = ((char*) &(msg.end)) - ((char*) &msg);

int main(int argc, char *argv[]) {
  printf("len=%d\n", len);
  return 0;
}
