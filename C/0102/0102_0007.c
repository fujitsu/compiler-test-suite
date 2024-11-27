#include <stdio.h>
#include <assert.h>

void dummy()
{
  static volatile int x = 0;
  x++;
}

void test_total()
{

}

void test_multi_4(int outer_n)
{
  int i,j;
  for(j=0;j<outer_n;j++) {
    i=0; while(i<4) {
      dummy(); i++;
    }
  }
}

void test_multi_1000(int outer_n)
{
  int i,j;
  for(j=0;j<outer_n;j++) {
    i=0; while(i<1000) {
      dummy(); i++;
    }
  }
}

void test_multi_var(int n,int outer_n)
{
  int i,j;
  for(j=0;j<outer_n;j++) {
    i=0; while(i<n) {
      dummy(); i++;
    }
  }
}

int main()
{
  test_total();
  test_multi_4(1);
  test_multi_1000(1);
  test_multi_var(4,1);

  puts("PASS");
  return 0;
}

struct ANS {
  long lineno;
  void *func;
};

struct ANS ans_start[] = {
  { 29,  test_multi_4  },
  { 30,  test_multi_4  },
  { 39,  test_multi_1000  },
  { 40,  test_multi_1000  },
  { 49,  test_multi_var  },
  { 50,  test_multi_var  },
};
struct ANS ans_end[] = {
  { 32,  test_multi_4  },
  { 33,  test_multi_4  },
  { 42,  test_multi_1000  },
  { 43,  test_multi_1000  },
  { 52,  test_multi_var },
  { 53,  test_multi_var },
};

static int   nnnn = 0;
static void *prev_addr_stack[10];
 
static void __jwe_tloop_start(long lineno, void *func, char *auto_addr, char *name, long len)
{
   static int i=0;
   if( ans_start[i].lineno != lineno ) {
     fprintf(stderr, " NG  start base=%d %d\n", ans_start[i].lineno, lineno);
     assert( ans_start[i].lineno == lineno );
   }
   assert( ans_start[i].func   == func );
   prev_addr_stack[nnnn] = auto_addr;
   nnnn++;
   assert( len  == 0 );
   assert( name == NULL );
   i++;
}

static void __jwe_tloop_end(long lineno, void *func, char *auto_addr, char *name, long len)
{
   static int i=0;
   if( ans_end[i].lineno != lineno ) {
     fprintf(stderr, " NG  end base=%d %d\n", ans_end[i].lineno, lineno);
     assert( ans_end[i].lineno == lineno );
   }
   assert( ans_end[i].func   == func );
   nnnn--;
   assert( prev_addr_stack[nnnn] == auto_addr);
   assert( len  == 0 );
   assert( name == NULL );
   i++;
}

void *dummy_refer[2] = { __jwe_tloop_start, __jwe_tloop_end };
