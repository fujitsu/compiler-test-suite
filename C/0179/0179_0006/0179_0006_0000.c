#include "000.h"

extern void deadcode_var(int *i, double *d);
extern void deadcode_array(int a[], int N);
extern void deadcode_struct(pair *x);
extern void deadcode_union(each *u);

#define N 1

int main()
{
  { 
    int i = 4;
    double d = 1.0;
    deadcode_var(&i, &d);
    i = i + 1;
    d = d + 1.0;
    deadcode_var(&i, &d);
  }
  
  { 
    int a[N];
    a[0] = 0;
    deadcode_array(a, N);
    a[0] = a[0] + 1;
    deadcode_array(a, N);
  }
  
  { 
    pair x;
    x.upper = 2;
    x.lower = 3;
    deadcode_struct(&x);
    x.upper = x.upper + 1;
    x.lower = x.lower + 2;
    deadcode_struct(&x);
  }

  { 
    each u;
    u.p1 = 1;
    deadcode_union(&u);
    u.p2 = 2;
    deadcode_union(&u);
    u.p3 = 3;
    deadcode_union(&u);
  }
}
