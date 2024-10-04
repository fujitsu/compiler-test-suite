#include <stdio.h>

int  status=0;

int main()
{
  void printx(char *x, unsigned long long int y);
  unsigned long long int   ll;

  printf("07 START\n");

  ll = (unsigned long long int)0xffffffffffffffff*0;
  if (ll != 0)
    printx("*** 07 (05-01) NG ***\n", ll);

  ll = (unsigned long long int)0xffffffffffffffff*1;
  if (ll != (unsigned long long int)0xffffffffffffffff)
    printx("*** 07 (05-02) NG ***\n", ll);

  ll = (unsigned long long int)0x7fffffffffffffff*2;
  if (ll != (unsigned long long int)0xfffffffffffffffe)
    printx("*** 07 (05-03) NG ***\n", ll);

  ll = (unsigned long long int)0x5555555555555555*3;
  if (ll != (unsigned long long int)0xffffffffffffffff)
    printx("*** 07 (05-04) NG ***\n", ll);

  ll = (unsigned long long int)0x3fffffffffffffff*4;
  if (ll != (unsigned long long int)0xfffffffffffffffc)
    printx("*** 07 (05-05) NG ***\n", ll);

  ll = (unsigned long long int)0x00000000ffffffff*
       (unsigned long long int)0x00000000ffffffff;
  if (ll != (unsigned long long int)0xfffffffe00000001)
    printx("*** 07 (05-06) NG ***\n", ll);

  ll = (unsigned long long int)0x00000000ffffffff*
       (unsigned long long int)0x0000000100000001;
  if (ll != (unsigned long long int)0xffffffffffffffff)
    printx("*** 07 (05-07) NG ***\n", ll);

  ll = (unsigned long long int)0x0000000000000001*
       (unsigned long long int)0x0000000000000001;
  if (ll != 1)
    printx("*** 07 (05-08) NG ***\n", ll);

  ll = (unsigned long long int)1600000000*
       (unsigned long long int)1111111111;
  if (ll != (unsigned long long int)1777777777600000000)
    printx("*** 07 (05-09) NG ***\n", ll);

  if (status==0)
     printf("****** TEST 0-15  ALL OK. ******\n");
  printf("07 END\n");
}

void printx(char *x, unsigned long long int y)
{
   status++;
   printf(x);
   printf("LL ==> %x \n", y);
}
