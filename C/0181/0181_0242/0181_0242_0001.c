typedef struct
{
  int array[2] __attribute__ ((aligned(16)));
} Test;

static Test t = { {1, 2} };
static int g_val __attribute__ ((aligned(8))) = 1;

int foo()
{
  return ++g_val + t.array[0] + t.array[1];
}
