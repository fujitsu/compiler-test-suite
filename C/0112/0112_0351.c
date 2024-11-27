#include <stdio.h>
int main()
{
  unsigned long int _total = 0ul ;
  unsigned long int lint_max = 1ul ;

  unsigned long int lint_min = 0ul;

  for(lint_min=0;lint_min<10;lint_min++) {
    lint_max+=2 ;
    _total += lint_max ;
  }
  
  if (_total!=120ul)
    {
      puts("ng");
      printf("%llx %lu \n",_total,_total);
      printf("%llx %lu \n",120ul,120ul);
    }
  else
    puts("ok");
}
