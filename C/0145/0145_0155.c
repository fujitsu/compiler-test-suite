
#include <omp.h>
#include <stdio.h>

struct test_str{
  int x;
  int y;
}test_str;

void sub01()
{
  struct test_str a={100,200},
                  b={150,250},
                  c={200,300};
#pragma omp task firstprivate(a,b,c)
  {
    if (a.x!=100 || a.y!=200 || b.x!=150 || b.y!=250 || c.x!=200 || c.y!=300) {
      printf("NG-01: a={x:%d,y:%d}\n",a.x,a.y);
      printf("     : b={x:%d,y:%d}\n",b.x,b.y);
      printf("     : c={x:%d,y:%d}\n",c.x,c.y);
    }
    a.x+=50;
    a.y+=50;
    b.x+=50;
    b.y+=50;
    c.x+=50;
    c.y+=50;
  }
#pragma omp taskwait
  if (a.x!=100 || a.y!=200 || b.x!=150 || b.y!=250 || c.x!=200 || c.y!=300) {
    printf("NG-02: a={x:%d,y:%d}\n",a.x,a.y);
    printf("     : b={x:%d,y:%d}\n",b.x,b.y);
    printf("     : c={x:%d,y:%d}\n",c.x,c.y);
  }
}

int main()
{
#pragma omp parallel
  {
    sub01();
  }
  printf("pass\n");
  return 0;
}
