int pragma_if(int n, int j) 
{
  int i, x, y;
  
  for(i = 0; i < n; ++i) {
    if (i != j) {
      return 0;
    }
  }
  return i;
}

