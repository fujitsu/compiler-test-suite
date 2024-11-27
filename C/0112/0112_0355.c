
#include <stdio.h>
int main()
{
  unsigned int _total = 0ul ;
  unsigned int lint_max = 1ul ;
  unsigned int lint_min = 0ul;
  signed int i_total = 0ul ;
  signed int ilint_max = 1ul ;
  signed int ilint_min = 0ul;

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

  
  for(ilint_min=0;ilint_min<10;ilint_min++) {
    ilint_max+=2 ;
    i_total += ilint_max ;
  }
  
  if (i_total!=120ul)
    {
      puts("ng");
      printf("%llx %lld \n",i_total,i_total);
      printf("%llx %lld \n",120ul,120ul);
    }
  else
    puts("ok");

}
