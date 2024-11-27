
#include <stdio.h>
int main()
{
  unsigned long int _total = 0ul ;
#if INT64 || LONG64 || __sparcv9 || __x86_64__ || __aarch64__
  unsigned long int lint_max = 18446744073709551615ul ;
  unsigned long int res1 = 45ul;
#else
  unsigned long int lint_max = 4294967295ul ;
  unsigned long int res1 = 42949673005;
#endif

  unsigned long int lint_min = 0ul;

  for(lint_min=0;lint_min<10;lint_min++) {
    lint_max++ ;
    _total += lint_max ;
  }
  
  if (_total!=res1)
    {
      puts("ng");
      printf("%llx %llu \n",_total,_total);
      printf("%llx %llu \n",res1,res1);
    }
  else
    puts("ok");
}
