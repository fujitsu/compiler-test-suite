extern constexpr int func(int a, int b)
{
  return a + b;
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
  
  
  
  

  switch(va) {
  case func(1,2):
  
  
  default:
    ;
  }
}
