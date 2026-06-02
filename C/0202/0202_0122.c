#include <stdio.h>

#if  __STDC_VERSION__ == 199901L 
struct finctx {
  struct {
    FILE * to;
    FILE * rewr;
    FILE * from;
  }ctx;
};
int main()
{
  FILE * outfile = stdout ;
  FILE * fin = stdin ;
  struct finctx finctx =
  {
    .ctx =   { .to =  outfile , .rewr =   0L , .from =   fin } 
  };
  printf(" OK \n");
  return 0;
}
#else
int main()
{
  printf(" OK \n");
  return 0;
}
#endif

