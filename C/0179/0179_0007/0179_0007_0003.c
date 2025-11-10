int cc(int *i);
void ccc(int *i);

int c(int *i)
{
  *i *= *i;
  return cc(i);
}

int cc(int *i)
{
  *i = *i / 13;
  ccc(i);
  return *i;
}

void ccc(int *i)
{
  *i += 2 ;
}
