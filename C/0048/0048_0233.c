#include <stdio.h>
int func6 (void);
int func5 (void);
int func4 (void);
int func3 (void);
int func2 (void);
int func1 (void);
int main()
{
  printf (" START\n");
  func1();
  func2();
  func3();
  func4();
  func5();
  func6();
  printf (" END\n");
}
int 
func1 (void)                        
{
  int a=0;
  int x=0;

  while(a<10)
  {
    ++a;
    if (a==5)
      continue;
    ++x;
  }

  if (x!=9)
    printf (" FUNC1 NG\n");
}
int 
func2 (void)                        
{
  int a=0;
  int x=0;

  do
  {
   ++a;
    if (a==5)
      continue;
    if (a==6)
      continue;
   ++x;
  }
  while(a<10);

  if (x!=8)
    printf (" FUNC2 NG\n");
}
int 
func3 (void)                        
{
  int x=0;
  int a=0;
  for (;;)
  {
    if (a>9) break;
    for(;a<10;++a)
    {
      if (a==5)
        continue;
      ++x;
    }
    ++a;
  }

  if (x!=9)
    printf (" FUNC3 NG\n");
}
int 
func4 (void)                        
{
  int x=0;
  int a=0;
  do
  {
    ++x;
    ++a;
    continue;
  }
  while(a<10);

  if (x!=10)
    printf (" FUNC4 NG\n");
}
int 
func5 (void)                        
{
  int x=0;
  int a=0;
  for (a=0;a<10;++a)
  {
    ++x;
    continue;
  }

  if (x!=10)
    printf (" FUNC5 NG\n");
}
int 
func6 (void)                        
{
  int x=0;
  int a=0,b=0,c=0,d=0,e=0,f=0;
  for (a=0;a<2;++a )
  {
    while(b<2)
    {
      do
      {
        for(d=0;d<2;++d )
        {
          while(e<2)
          {
            do
            {
              ++f;
              if (f==1)
                continue;
              ++x;
            }
            while(f<2) ;
            ++e;
          }
          if (d==1)
          continue;
        }
        ++c;
      }
      while(c<2) ;
      ++b;
    }
  }

  if (x!=2)
    printf (" FUNC6 NG\n");
}
