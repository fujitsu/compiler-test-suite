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

void test_single_4()
{
  int i=0;
  do {
    dummy(); i++;
  } while( i<4 );
}

void test_single_1000()
{
  int i=0;
  do {
    dummy(); i++;
  } while( i<1000 );
}

void test_single_var(int n)
{
  int i=0;
  do {
    dummy(); i++;
  } while( i<n );
}

int main()
{
  test_total();
  test_single_4();
  test_single_1000();
  test_single_var(4);

  puts("PASS");
  return 0;
}

struct ANS {
  long lineno;
  void *func;
};

struct ANS ans_start[] = {
  { 29,  test_single_4  },
  { 37,  test_single_1000  },
  { 45,  test_single_var  },
};
struct ANS ans_end[] = {
  { 31,  test_single_4  },
  { 39,  test_single_1000  },
  { 47,  test_single_var },
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
