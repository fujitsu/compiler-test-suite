#include <stdio.h>
int main()
{
#if __x86_64__ || __aarch64__
  signed int int_max= 9223372036854775807 ;
#else
  signed int int_max= 2147483647 ;
#endif

  signed long int _total = 0ul ;
  signed long int lint_max = 0ul ;
  signed long int lint_min = 0ul;
  signed long int res1,res2,res3,res4,res5;

#if __x86_64__ || __aarch64__
  res1 = 18446744073709551481ul;
  res2 = 18446744073709551526ul;
  res3 = 18446744073709551571ul;
  res4 = 0;
  res5 = 45ul;
#else
  res1 = 96636764025;
  res2 = 96636764070;
  res3 = 96636764115;
  res4 = 18446743977072787456;
  res5 = 18446743977072787501;
#endif  
  
  for(lint_min=0;lint_min<9;lint_min++) {
    lint_max+=(int_max-2) ;
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

  lint_max = 0ul;
  lint_min = 0ul;
  _total = 0ul ;

  for(lint_min=0;lint_min<9;lint_min++) {
    lint_max+=(int_max-1) ;
    _total += lint_max ;
  }

  if (_total!=res2)
    {
      puts("ng");
      printf("%llx %llu \n",_total,_total);
      printf("%llx %llu \n",res2,res2);
    }
  else
    puts("ok");

  lint_max = 0ul;
  lint_min = 0ul;
  _total = 0ul ;

  for(lint_min=0;lint_min<9;lint_min++) {
    lint_max+=(int_max) ;
    _total += lint_max ;
  }

  if (_total!=res3)
    {
      puts("ng");
      printf("%llx %llu \n",_total,_total);
      printf("%llx %llu \n",res3,res3);
    }
  else
    puts("ok");

  lint_max = 0ul;
  lint_min = 0ul;
  _total = 0ul ;

  for(lint_min=0;lint_min<9;lint_min++) {
    lint_max+=(int_max+1) ;
    _total += lint_max ;
  }

  if (_total!=res4)
    {
      puts("ng");
      printf("%llx %llu \n",_total,_total);
      printf("%llx %llu \n",res4,res4);
    }
  else
    puts("ok");

  lint_max = 0ul;
  lint_min = 0ul;
  _total = 0ul ;

  for(lint_min=0;lint_min<9;lint_min++) {
    lint_max+=(int_max+2) ;
    _total += lint_max ;
  }

  if (_total!=res5)
    {
      puts("ng");
      printf("%llx %llu \n",_total,_total);
      printf("%llx %llu \n",res5,res5);
    }
  else
    puts("ok");
}

