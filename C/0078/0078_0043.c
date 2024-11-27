#include <stdio.h>
typedef long long test_t;

test_t foo1(test_t i)
{
  return i/(-1LL);
}
test_t foo2(test_t i)
{
  return i/(-2LL);
}
test_t foo4(test_t i)
{
  return i/(-4LL);
}
test_t foo8(test_t i)
{
  return i/(-8LL);
}
test_t foo16(test_t i)
{
  return i/(-16LL);
}
test_t foo32(test_t i)
{
  return i/(-32LL);
}
test_t foo64(test_t i)
{
  return i/(-64LL);
}
test_t foo128(test_t i)
{
  return i/(-128LL);
}
test_t foo256(test_t i)
{
  return i/(-256LL);
}
test_t foo512(test_t i)
{
  return i/(-512LL);
}
test_t foo1024(test_t i)
{
  return i/(-1024LL);
}
test_t foo2048(test_t i)
{
  return i/(-2048LL);
}
test_t foo4096(test_t i)
{
  return i/(-4096LL);
}
test_t foo8192(test_t i)
{
  return i/(-8192LL);
}
test_t foo16384(test_t i)
{
  return i/(-16384LL);
}
test_t foo32768(test_t i)
{
  return i/(-32768LL);
}
test_t foo65536(test_t i)
{
  return i/(-65536LL);
}
test_t foo131072(test_t i)
{
  return i/(-131072LL);
}
test_t foo262144(test_t i)
{
  return i/(-262144LL);
}
test_t foo524288(test_t i)
{
  return i/(-524288LL);
}
test_t foo1048576(test_t i)
{
  return i/(-1048576LL);
}
test_t foo2097152(test_t i)
{
  return i/(-2097152LL);
}
test_t foo4194304(test_t i)
{
  return i/(-4194304LL);
}
test_t foo8388608(test_t i)
{
  return i/(-8388608LL);
}
test_t foo16777216(test_t i)
{
  return i/(-16777216LL);
}
test_t foo33554432(test_t i)
{
  return i/(-33554432LL);
}
test_t foo67108864(test_t i)
{
  return i/(-67108864LL);
}
test_t foo134217728(test_t i)
{
  return i/(-134217728LL);
}
test_t foo268435456(test_t i)
{
  return i/(-268435456LL);
}
test_t foo536870912(test_t i)
{
  return i/(-536870912LL);
}
test_t foo1073741824(test_t i)
{
  return i/(-1073741824LL);
}
test_t foo2147483648(test_t i)
{
  return i/(test_t )(-2147483648LL);
}
test_t foo4294967296(test_t i)
{
  return i/(-4294967296LL);
}
test_t foo8589934592(test_t i)
{
  return i/(-8589934592LL);
}
test_t foo17179869184(test_t i)
{
  return i/(-17179869184LL);
}
test_t foo34359738368(test_t i)
{
  return i/(-34359738368LL);
}
test_t foo68719476736(test_t i)
{
  return i/(-68719476736LL);
}
test_t foo137438953472(test_t i)
{
  return i/(-137438953472LL);
}
test_t foo274877906944(test_t i)
{
  return i/(-274877906944LL);
}
test_t foo549755813888(test_t i)
{
  return i/(-549755813888LL);
}
test_t foo1099511627776(test_t i)
{
  return i/(-1099511627776LL);
}
test_t foo2199023255552(test_t i)
{
  return i/(-2199023255552LL);
}
test_t foo4398046511104(test_t i)
{
  return i/(-4398046511104LL);
}
test_t foo8796093022208(test_t i)
{
  return i/(-8796093022208LL);
}
test_t foo17592186044416(test_t i)
{
  return i/(-17592186044416LL);
}
test_t foo35184372088832(test_t i)
{
  return i/(-35184372088832LL);
}
test_t foo70368744177664(test_t i)
{
  return i/(-70368744177664LL);
}
test_t foo140737488355328(test_t i)
{
  return i/(-140737488355328LL);
}
test_t foo281474976710656(test_t i)
{
  return i/(-281474976710656LL);
}
test_t foo562949953421312(test_t i)
{
  return i/(-562949953421312LL);
}
test_t foo1125899906842624(test_t i)
{
  return i/(-1125899906842624LL);
}
test_t foo2251799813685248(test_t i)
{
  return i/(-2251799813685248LL);
}
test_t foo4503599627370496(test_t i)
{
  return i/(-4503599627370496LL);
}
test_t foo9007199254740992(test_t i)
{
  return i/(-9007199254740992LL);
}
test_t foo18014398509481984(test_t i)
{
  return i/(-18014398509481984LL);
}
test_t foo36028797018963968(test_t i)
{
  return i/(-36028797018963968LL);
}
test_t foo72057594037927936(test_t i)
{
  return i/(-72057594037927936LL);
}
test_t foo144115188075855872(test_t i)
{
  return i/(-144115188075855872LL);
}
test_t foo288230376151711744(test_t i)
{
  return i/(-288230376151711744LL);
}
test_t foo576460752303423488(test_t i)
{
  return i/(-576460752303423488LL);
}
test_t foo1152921504606846976(test_t i)
{
  return i/(-1152921504606846976LL);
}
test_t foo2305843009213693952(test_t i)
{
  return i/(-2305843009213693952LL);
}
test_t foo4611686018427387904(test_t i)
{
  return i/(-4611686018427387904LL);
}
test_t foox(test_t i)
{
  return i/(0x8000000000000000LL);
}

const test_t  TEST_N = 10;
int main()
{
  test_t i;
  static test_t a[] = { 
   0x80000000, -10000000, -100,-50,0,1, 50,100 , 1000000 , 0x7fffffff };

  for(i=0;i<TEST_N;i++) {
    printf(
  "input: %lld"
  "1 : %lld %lld %lld %lld %lld %lld %lld %lld "
  "2 : %lld %lld %lld %lld %lld %lld %lld %lld "
  "3 : %lld %lld %lld %lld %lld %lld %lld %lld "
  "4 : %lld %lld %lld %lld %lld %lld %lld %lld "
  "5 : %lld %lld %lld %lld %lld %lld %lld %lld "
  "6 : %lld %lld %lld %lld %lld %lld %lld %lld "
  "7 : %lld %lld %lld %lld %lld %lld %lld %lld "
  "8 : %lld %lld %lld %lld %lld %lld %lld %lld \n",

a[i],
foo1(a[i]),
foo2(a[i]),
foo4(a[i]),
foo8(a[i]),
foo16(a[i]),
foo32(a[i]),
foo64(a[i]),
foo128(a[i]),
foo256(a[i]),
foo512(a[i]),
foo1024(a[i]),
foo2048(a[i]),
foo4096(a[i]),
foo8192(a[i]),
foo16384(a[i]),
foo32768(a[i]),
foo65536(a[i]),
foo131072(a[i]),
foo262144(a[i]),
foo524288(a[i]),
foo1048576(a[i]),
foo2097152(a[i]),
foo4194304(a[i]),
foo8388608(a[i]),
foo16777216(a[i]),
foo33554432(a[i]),
foo67108864(a[i]),
foo134217728(a[i]),
foo268435456(a[i]),
foo536870912(a[i]),
foo1073741824(a[i]),
foo2147483648(a[i]),
foo4294967296(a[i]),
foo8589934592(a[i]),
foo17179869184(a[i]),
foo34359738368(a[i]),
foo68719476736(a[i]),
foo137438953472(a[i]),
foo274877906944(a[i]),
foo549755813888(a[i]),
foo1099511627776(a[i]),
foo2199023255552(a[i]),
foo4398046511104(a[i]),
foo8796093022208(a[i]),
foo17592186044416(a[i]),
foo35184372088832(a[i]),
foo70368744177664(a[i]),
foo140737488355328(a[i]),
foo281474976710656(a[i]),
foo562949953421312(a[i]),
foo1125899906842624(a[i]),
foo2251799813685248(a[i]),
foo4503599627370496(a[i]),
foo9007199254740992(a[i]),
foo18014398509481984(a[i]),
foo36028797018963968(a[i]),
foo72057594037927936(a[i]),
foo144115188075855872(a[i]),
foo288230376151711744(a[i]),
foo576460752303423488(a[i]),
foo1152921504606846976(a[i]),
foo2305843009213693952(a[i]),
foo4611686018427387904(a[i]),
foox(a[i])

);

  }
}

