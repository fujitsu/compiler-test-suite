#include <stdio.h>
int main()
{
#if __x86_64__ || __aarch64__
  unsigned int int_max= 18446744073709551615ul ;
#else
  unsigned int int_max= 4294967295ul ;
#endif

  unsigned long int _total = 0ul ;
  unsigned long int lint_max = 0ul ;
  unsigned long int lint_min = 0ul;
  unsigned long int res1,res2,res3,res4,res5;

#if __x86_64__ || __aarch64__
  res1 = 193273528185ul;
  res2 = 193273528230ul;
  res3 = 193273528275ul;
  res4 = 0;
  res5 = 45ul;
#else
  res1 = 193273528185;
  res2 = 193273528230;
  res3 = 193273528275;
  res4 = 0;
  res5 = 45;
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

