extern int printf(const char *, ...);

#if defined(__GNUC__) 

#ifndef TYPE
#define TYPE unsigned int
#endif

void foo1(int *val)
{
  int data[10];
  data[9] = 3;

  __atomic_load(&data[9],val,__ATOMIC_RELAXED);
  __atomic_load(&data[9],val,__ATOMIC_RELAXED);

  return ;
}

void foo2(int *val)
{
  int data[10];
  data[9] = 3;

  __atomic_load(&data[9],val,__ATOMIC_SEQ_CST);
  __atomic_load(&data[9],val,__ATOMIC_SEQ_CST);

  return ;
}
void foo3(int *val)
{
  int data[10];
  data[9] = 3;

  __atomic_load(&data[9],val,__ATOMIC_ACQUIRE);
  __atomic_load(&data[9],val,__ATOMIC_ACQUIRE);

  return ;
}
void foo4(int *val)
{
  int data[10];
  data[9] = 3;

  __atomic_load(&data[9],val,__ATOMIC_CONSUME);
  __atomic_load(&data[9],val,__ATOMIC_CONSUME);

  return ;
}
int main()
{
  int val;
  val =0;
  foo1(&val);
  printf("0x%x\n", (int)val);
  val =0;
  foo2(&val);
  printf("0x%x\n", (int)val);
  val =0;
  foo3(&val);
  printf("0x%x\n", (int)val);
  val =0;
  foo4(&val);
  printf("0x%x\n", (int)val);

  return 0;
}
#else
int main()
{
  printf("0x%x\n", 0x3);
  printf("0x%x\n", 0x3);
  printf("0x%x\n", 0x3);
  printf("0x%x\n", 0x3);

  return 0;
}
#endif
