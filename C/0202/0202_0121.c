#include <stdio.h>

#if  __STDC_VERSION__ == 199901L 
struct finctx {
  struct {
    FILE * to;
    int    f1;
    char   f2;
    _Bool  f4;
    short  f5;
    long   f6;
    long long    f7;
    double       f8;
    long double  f9;
    FILE * from;
  }ctx;
};
int main()
{
  FILE * fin = stdin ;
  struct finctx finctx =
    {
      { 0 ,
        (_Bool)0 ,
        (_Bool)0 ,
        (_Bool)0 ,
        (_Bool)0 ,
        (_Bool)0 ,
        (_Bool)0 ,
        (_Bool)0 ,
        (_Bool)0 ,
        fin }
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

