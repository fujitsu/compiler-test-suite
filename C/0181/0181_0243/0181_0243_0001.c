int common_val __attribute__ ((common));
int nocommon_val __attribute__ ((nocommon));

void foo()
{
  common_val = 2;
  nocommon_val = 3;
}
