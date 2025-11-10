struct tag
{
  int x, y, z;
} __attribute__ ((designated_init));

struct tag t1 = { .z = 1, .y = 2, .x = 3 };
struct tag t2 = { z: 4, y: 5, x: 6 };

int foo()
{
  return t1.x + t1.y + t1.z + t2.x + t2.y + t2.z;
}
