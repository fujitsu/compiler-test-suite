#include <stdio.h>

int  status=0;

int main()
{
  void printx(char *x, unsigned long long int y);
  unsigned long long int   ll;

  printf("06 START\n");

  ll = (unsigned long long int)0xffffffffffffffff/2;
  if (ll != (unsigned long long int)0x7fffffffffffffff)
    printx("*** 06 (05-01) NG ***\n", ll);

  ll = (unsigned long long int)0xffffffffffffffff/
       (unsigned long long int)0xffffffffffffffee;
       (short int)1 ;
  if (ll != 1)
    printx("*** 06 (05-02) NG ***\n", ll);

  ll = (unsigned long long int)0xfff1234567890123/
       (unsigned long long int)0xfff1234567890123;
       (short int)1 ;
  if (ll != 1)
    printx("*** 06 (05-03) NG ***\n", ll);

  ll = (unsigned long long int)0xffffffff12345678/
       (unsigned long long int)0xffffffff12345679;
  if (ll != 0)
    printx("*** 06 (05-04) NG ***\n", ll);

  ll = (unsigned long long int)0x7fffffffffffffff/2;
  if (ll != (unsigned long long int)0x3fffffffffffffff)
    printx("*** 06 (05-05) NG ***\n", ll);

  ll = (unsigned long long int)0x7fffffffffffffff/1;
  if (ll != (unsigned long long int)0x7fffffffffffffff)
    printx("*** 06 (05-06) NG ***\n", ll);

  ll = (unsigned long long int)0xffffffffffffffff/0xffff;
  if (ll != (unsigned long long int)0x0001000100010001)
    printx("*** 06 (05-07) NG ***\n", ll);

  ll = (unsigned long long int)18400000000000000000/
       (unsigned long long int)100000000000000000;
  if (ll != 184)
    printx("*** 06 (05-08) NG ***\n", ll);

  ll = (unsigned long long int)18330000000000000000/
       (unsigned long long int)1833;
  if (ll != (unsigned long long int)10000000000000000)
    printx("*** 06 (05-09) NG ***\n", ll);

  ll = 0/(unsigned long long int)0xffffffffffffffff;
  if (ll != 0)
    printx("*** 06 (05-10) NG ***\n", ll);

  ll = 1/(unsigned long long int)0xffffffffffffffff;
  if (ll != 0)
    printx("*** 06 (05-11) NG ***\n", ll);

  ll = (unsigned long long int)12345678901234567890/
       (unsigned long long int)1234567890;
  if (ll != (unsigned long long int)10000000001)
    printx("*** 06 (05-12) NG ***\n", ll);

  ll = (unsigned long long int)0xfedcba9876543210/
       (unsigned long long int)1;
  if (ll != (unsigned long long int)0xfedcba9876543210)
    printx("*** 06 (05-13) NG ***\n", ll);

  ll = (unsigned long long int)0xffffffffffffff55/
       (unsigned long long int)0xffffffffffffff5;
  if (ll != 0x10)
    printx("*** 06 (05-14) NG ***\n", ll);

  ll = (unsigned long long int)0xfffffffffffffffe/
       (unsigned long long int)0xffffffff;
  if (ll != (unsigned long long int)0x0000000100000000)
    printx("*** 06 (05-15) NG ***\n", ll);

  if (status==0)
     printf("****** TEST 0-15  ALL OK. ******\n");
  printf("06 END\n");
}

void printx(char *x, unsigned long long int y)
{
   status++;
   printf(x);
   printf("LL ==> %x \n", y);
}
