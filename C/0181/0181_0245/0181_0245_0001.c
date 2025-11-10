int g_val_default __attribute__ ((visibility ("default"))) = 0;
int g_val_hidden __attribute__ ((visibility ("hidden"))) = 0;
int g_val_internal __attribute__ ((visibility ("internal"))) = 0;
int g_val_protected __attribute__ ((visibility ("protected"))) = 0;

int sub1()
{
  return ++g_val_default;
}

int sub2()
{
  return ++g_val_hidden;
}

int sub3()
{
  return ++g_val_internal;
}

int sub4()
{
  return ++g_val_protected;
}
