#include <stdio.h>
int bug(unsigned char inbuff)
{
  int incnum = (signed char)(inbuff);
  if ((incnum!=1)&&(incnum!=-1)) {
    return (incnum > 1) ? 42 : 23 ;
  } else {
    return 17;
  }
}

#ifdef ORIGINAL
int main(int argc, char** argv)
{
  printf("%d\n", bug(-1));
}
#else
void sub1()
{
  printf("%d\n", bug(-1));
}
#endif
