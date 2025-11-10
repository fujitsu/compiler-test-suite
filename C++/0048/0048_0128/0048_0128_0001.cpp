static __inline__ int boo(__const__ int val)
{
  return val / 2;
}

int foo(__const__ int val)
{
  __typeof__(val) ret = boo(val);
  return ret;
}
