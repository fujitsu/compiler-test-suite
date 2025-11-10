constexpr int func(int a, int b)
{
  return a + b;
}

const int x=0, y=0;
constexpr int func2(int a, int b)
{
  return x + y;
}

int vrfunc(int a) {
  if (a > 0)
    return a;
  else
    return -a;
}

int main()
{
  int va = 1, vb = vrfunc(va);
  const int vc = 3;
  constexpr int vd = func2(1,4);
  const int ve = vrfunc(2);
  int result1 = func(1, 2);
  
  
  

  switch(va) {
  case func(1,2):
  case func(1,vc):
  case func(1,vd):
  
  
  
  default:
    ;
  }
}
