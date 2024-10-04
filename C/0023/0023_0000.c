#include <stdio.h>

#define N 64
#define calc_add(b,c) ((b)+(c))
#define calc_sub(b,c) ((b)-(c))
#define calc_mul(b,c) ((b)*(c))
#define calc_div(b,c) ((b)/(c))
#define calc_mod(b,c) ((b)/(c))
#define max(b,c)      ((b)>(c)?(b):(c))
#define min(b,c)      ((b)>(c)?(c):(b))
int main()
{
  long long int           a1,a2,a3,a4,a5,a6,a7,a8;
  long long int           a9,a10,a11,a12,a13,a14,a15,a16;
  unsigned long long int  ua1,ua2,ua3,ua4,ua5,ua6,ua7,ua8;
  unsigned long long int  ua9,ua10,ua11,ua12,ua13,ua14,ua15,ua16;
  long long int           r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  long long int           r11,r12,r13,r14,r15;
  long long int           add, sub, mul, div, mod, ans;
  unsigned long long int  ur1,ur2,ur3,ur4,ur5,ur6,ur7,ur8,ur9,ur10;
  unsigned long long int  ur11,ur12,ur13,ur14,ur15;
  long long int           uadd, usub, umul, udiv, umod, uans;

  a1  = 0x0000000000000007LL;
  a2  = 0x0000000000000070LL;
  a3  = 0x0000000000000700LL;
  a4  = 0x0000000000007000LL;
  a5  = 0x0000000000070000LL;
  a6  = 0x0000000000700000LL;
  a7  = 0x0000000007000000LL;
  a8  = 0x0000000070000000LL;
  a9  = 0x0000000700000000LL;
  a10 = 0x0000007000000000LL;
  a11 = 0x0000070000000000LL;
  a12 = 0x0000700000000000LL;
  a13 = 0x0007000000000000LL;
  a14 = 0x0070000000000000LL;
  a15 = 0x0700000000000000LL;
  a16 = 0x7000000000000000LL;

  ua1  = 0x000000000000000fULL;
  ua2  = 0x00000000000000f0ULL;
  ua3  = 0x0000000000000f00ULL;
  ua4  = 0x000000000000f000ULL;
  ua5  = 0x00000000000f0000ULL;
  ua6  = 0x0000000000f00000ULL;
  ua7  = 0x000000000f000000ULL;
  ua8  = 0x00000000f0000000ULL;
  ua9  = 0x0000000f00000000ULL;
  ua10 = 0x000000f000000000ULL;
  ua11 = 0x00000f0000000000ULL;
  ua12 = 0x0000f00000000000ULL;
  ua13 = 0x000f000000000000ULL;
  ua14 = 0x00f0000000000000ULL;
  ua15 = 0x0f00000000000000ULL;
  ua16 = 0xf000000000000000ULL;

  r1 = calc_add(a1,a2);
  r2 = calc_add(a1,a3);
  r3 = calc_add(a1,a4);
  r4 = calc_add(a1,a5);
  r5 = calc_add(a1,a6);
  r6 = calc_add(a1,a7);
  r7 = calc_add(a1,a8);
  r8 = calc_add(a1,a9);
  r9 = calc_add(a1,a10);
  r10 = calc_add(a1,a11);
  r11 = calc_add(a1,a12);
  r12 = calc_add(a1,a13);
  r13 = calc_add(a1,a14);
  r14 = calc_add(a1,a15);
  r15 = calc_add(a1,a16);

  r2 = max(r1,calc_add(a2,a3));
  r3 = max(r2,calc_add(a2,a4));
  r4 = max(r3,calc_add(a2,a5));
  r5 = max(r4,calc_add(a2,a6));
  r6 = max(r5,calc_add(a2,a7));
  r7 = max(r6,calc_add(a2,a8));
  r8 = max(r7,calc_add(a2,a9));
  r9 = max(r8,calc_add(a2,a10));
  r10 = max(r9,calc_add(a2,a11));
  r11 = max(r10,calc_add(a2,a12));
  r12 = max(r11,calc_add(a2,a13));
  r13 = max(r12,calc_add(a2,a14));
  r14 = max(r13,calc_add(a2,a15));
  r15 = max(r14,calc_add(a2,a16));

  r3 = max(r2,calc_add(a3,a4));
  r4 = max(r3,calc_add(a3,a5));
  r5 = max(r4,calc_add(a3,a6));
  r6 = max(r5,calc_add(a3,a7));
  r7 = max(r6,calc_add(a3,a8));
  r8 = max(r7,calc_add(a3,a9));
  r9 = max(r8,calc_add(a3,a10));
  r10 = max(r9,calc_add(a3,a11));
  r11 = max(r10,calc_add(a3,a12));
  r12 = max(r11,calc_add(a3,a13));
  r13 = max(r12,calc_add(a3,a14));
  r14 = max(r13,calc_add(a3,a15));
  r15 = max(r14,calc_add(a3,a16));

  r4 = max(r3,calc_add(a4,a5));
  r5 = max(r4,calc_add(a4,a6));
  r6 = max(r5,calc_add(a4,a7));
  r7 = max(r6,calc_add(a4,a8));
  r8 = max(r7,calc_add(a4,a9));
  r9 = max(r8,calc_add(a4,a10));
  r10 = max(r9,calc_add(a4,a11));
  r11 = max(r10,calc_add(a4,a12));
  r12 = max(r11,calc_add(a4,a13));
  r13 = max(r12,calc_add(a4,a14));
  r14 = max(r13,calc_add(a4,a15));
  r15 = max(r14,calc_add(a4,a16));

  r5 = max(r4,calc_add(a5,a6));
  r6 = max(r5,calc_add(a5,a7));
  r7 = max(r6,calc_add(a5,a8));
  r8 = max(r7,calc_add(a5,a9));
  r9 = max(r8,calc_add(a5,a10));
  r10 = max(r9,calc_add(a5,a11));
  r11 = max(r10,calc_add(a5,a12));
  r12 = max(r11,calc_add(a5,a13));
  r13 = max(r12,calc_add(a5,a14));
  r14 = max(r13,calc_add(a5,a15));
  r15 = max(r14,calc_add(a5,a16));

  r6 = max(r5,calc_add(a6,a7));
  r7 = max(r6,calc_add(a6,a8));
  r8 = max(r7,calc_add(a6,a9));
  r9 = max(r8,calc_add(a6,a10));
  r10 = max(r9,calc_add(a6,a11));
  r11 = max(r10,calc_add(a6,a12));
  r12 = max(r11,calc_add(a6,a13));
  r13 = max(r12,calc_add(a6,a14));
  r14 = max(r13,calc_add(a6,a15));
  r15 = max(r14,calc_add(a6,a16));

  r7 = max(r6,calc_add(a7,a8));
  r8 = max(r7,calc_add(a7,a9));
  r9 = max(r8,calc_add(a7,a10));
  r10 = max(r9,calc_add(a7,a11));
  r11 = max(r10,calc_add(a7,a12));
  r12 = max(r11,calc_add(a7,a13));
  r13 = max(r12,calc_add(a7,a14));
  r14 = max(r13,calc_add(a7,a15));
  r15 = max(r14,calc_add(a7,a16));

  r8 = max(r7,calc_add(a8,a9));
  r9 = max(r8,calc_add(a8,a10));
  r10 = max(r9,calc_add(a8,a11));
  r11 = max(r10,calc_add(a8,a12));
  r12 = max(r11,calc_add(a8,a13));
  r13 = max(r12,calc_add(a8,a14));
  r14 = max(r13,calc_add(a8,a15));
  r15 = max(r14,calc_add(a8,a16));

  r9 = max(r8,calc_add(a9,a10));
  r10 = max(r9,calc_add(a9,a11));
  r11 = max(r10,calc_add(a9,a12));
  r12 = max(r11,calc_add(a9,a13));
  r13 = max(r12,calc_add(a9,a14));
  r14 = max(r13,calc_add(a9,a15));
  r15 = max(r14,calc_add(a9,a16));

  r10 = max(r9,calc_add(a10,a11));
  r11 = max(r10,calc_add(a10,a12));
  r12 = max(r11,calc_add(a10,a13));
  r13 = max(r12,calc_add(a10,a14));
  r14 = max(r13,calc_add(a10,a15));
  r15 = max(r14,calc_add(a10,a16));

  r11 = max(r10,calc_add(a11,a12));
  r12 = max(r11,calc_add(a11,a13));
  r13 = max(r12,calc_add(a11,a14));
  r14 = max(r13,calc_add(a11,a15));
  r15 = max(r14,calc_add(a11,a16));

  r12 = max(r11,calc_add(a12,a13));
  r13 = max(r12,calc_add(a12,a14));
  r14 = max(r13,calc_add(a12,a15));
  r15 = max(r14,calc_add(a12,a16));

  r13 = max(r12,calc_add(a13,a14));
  r14 = max(r13,calc_add(a13,a15));
  r15 = max(r14,calc_add(a13,a16));

  r14 = max(r13,calc_add(a14,a15));
  r15 = max(r14,calc_add(a14,a16));

  r15 = max(r14,calc_add(a15,a16));
  
  add = r15;

  r1 = calc_sub(a2,a1);
  r2 = calc_sub(a3,a1);
  r3 = calc_sub(a4,a1);
  r4 = calc_sub(a5,a1);
  r5 = calc_sub(a6,a1);
  r6 = calc_sub(a7,a1);
  r7 = calc_sub(a8,a1);
  r8 = calc_sub(a9,a1);
  r9 = calc_sub(a10,a1);
  r10 = calc_sub(a11,a1);
  r11 = calc_sub(a12,a1);
  r12 = calc_sub(a13,a1);
  r13 = calc_sub(a14,a1);
  r14 = calc_sub(a15,a1);
  r15 = calc_sub(a16,a1);

  r2 = max(r1,calc_sub(a3,a1));
  r3 = max(r2,calc_sub(a4,a1));
  r4 = max(r3,calc_sub(a5,a1));
  r5 = max(r4,calc_sub(a6,a1));
  r6 = max(r5,calc_sub(a7,a1));
  r7 = max(r6,calc_sub(a8,a1));
  r8 = max(r7,calc_sub(a9,a1));
  r9 = max(r8,calc_sub(a10,a1));
  r10 = max(r9,calc_sub(a11,a1));
  r11 = max(r10,calc_sub(a12,a1));
  r12 = max(r11,calc_sub(a13,a1));
  r13 = max(r12,calc_sub(a14,a1));
  r14 = max(r13,calc_sub(a15,a1));
  r15 = max(r14,calc_sub(a16,a1));

  r3 = max(r2,calc_sub(a4,a2));
  r4 = max(r3,calc_sub(a5,a2));
  r5 = max(r4,calc_sub(a6,a2));
  r6 = max(r5,calc_sub(a7,a2));
  r7 = max(r6,calc_sub(a8,a2));
  r8 = max(r7,calc_sub(a9,a2));
  r9 = max(r8,calc_sub(a10,a2));
  r10 = max(r9,calc_sub(a11,a2));
  r11 = max(r10,calc_sub(a12,a2));
  r12 = max(r11,calc_sub(a13,a2));
  r13 = max(r12,calc_sub(a14,a2));
  r14 = max(r13,calc_sub(a15,a2));
  r15 = max(r14,calc_sub(a16,a2));

  r4 = max(r3,calc_sub(a5,a3));
  r5 = max(r4,calc_sub(a6,a3));
  r6 = max(r5,calc_sub(a7,a3));
  r7 = max(r6,calc_sub(a8,a3));
  r8 = max(r7,calc_sub(a9,a3));
  r9 = max(r8,calc_sub(a10,a3));
  r10 = max(r9,calc_sub(a11,a3));
  r11 = max(r10,calc_sub(a12,a3));
  r12 = max(r11,calc_sub(a13,a3));
  r13 = max(r12,calc_sub(a14,a3));
  r14 = max(r13,calc_sub(a15,a3));
  r15 = max(r14,calc_sub(a16,a3));

  r4 = max(r3,calc_sub(a5,a4));
  r5 = max(r4,calc_sub(a6,a4));
  r6 = max(r5,calc_sub(a7,a4));
  r7 = max(r6,calc_sub(a8,a4));
  r8 = max(r7,calc_sub(a9,a4));
  r9 = max(r8,calc_sub(a10,a4));
  r10 = max(r9,calc_sub(a11,a4));
  r11 = max(r10,calc_sub(a12,a4));
  r12 = max(r11,calc_sub(a13,a4));
  r13 = max(r12,calc_sub(a14,a4));
  r14 = max(r13,calc_sub(a15,a4));
  r15 = max(r14,calc_sub(a16,a4));

  r5 = max(r4,calc_sub(a6,a5));
  r6 = max(r5,calc_sub(a7,a5));
  r7 = max(r6,calc_sub(a8,a5));
  r8 = max(r7,calc_sub(a9,a5));
  r9 = max(r8,calc_sub(a10,a5));
  r10 = max(r9,calc_sub(a11,a5));
  r11 = max(r10,calc_sub(a12,a5));
  r12 = max(r11,calc_sub(a13,a5));
  r13 = max(r12,calc_sub(a14,a5));
  r14 = max(r13,calc_sub(a15,a5));
  r15 = max(r14,calc_sub(a16,a5));

  r6 = max(r5,calc_sub(a7,a6));
  r7 = max(r6,calc_sub(a8,a6));
  r8 = max(r7,calc_sub(a9,a6));
  r9 = max(r8,calc_sub(a10,a6));
  r10 = max(r9,calc_sub(a11,a6));
  r11 = max(r10,calc_sub(a12,a6));
  r12 = max(r11,calc_sub(a13,a6));
  r13 = max(r12,calc_sub(a14,a6));
  r14 = max(r13,calc_sub(a15,a6));
  r15 = max(r14,calc_sub(a16,a6));

  r7 = max(r6,calc_sub(a8,a7));
  r8 = max(r7,calc_sub(a9,a7));
  r9 = max(r8,calc_sub(a10,a7));
  r10 = max(r9,calc_sub(a11,a7));
  r11 = max(r10,calc_sub(a12,a7));
  r12 = max(r11,calc_sub(a13,a7));
  r13 = max(r12,calc_sub(a14,a7));
  r14 = max(r13,calc_sub(a15,a7));
  r15 = max(r14,calc_sub(a16,a7));

  r8 = max(r7,calc_sub(a9,a8));
  r9 = max(r8,calc_sub(a10,a8));
  r10 = max(r9,calc_sub(a11,a8));
  r11 = max(r10,calc_sub(a12,a8));
  r12 = max(r11,calc_sub(a13,a8));
  r13 = max(r12,calc_sub(a14,a8));
  r14 = max(r13,calc_sub(a15,a8));
  r15 = max(r14,calc_sub(a16,a8));

  r9 = max(r8,calc_sub(a10,a9));
  r10 = max(r9,calc_sub(a11,a9));
  r11 = max(r10,calc_sub(a12,a9));
  r12 = max(r11,calc_sub(a13,a9));
  r13 = max(r12,calc_sub(a14,a9));
  r14 = max(r13,calc_sub(a15,a9));
  r15 = max(r14,calc_sub(a16,a9));

  r10 = max(r9,calc_sub(a11,a10));
  r11 = max(r10,calc_sub(a12,a10));
  r12 = max(r11,calc_sub(a13,a10));
  r13 = max(r12,calc_sub(a14,a10));
  r14 = max(r13,calc_sub(a15,a10));
  r15 = max(r14,calc_sub(a16,a10));

  r11 = max(r10,calc_sub(a12,a11));
  r12 = max(r11,calc_sub(a13,a11));
  r13 = max(r12,calc_sub(a14,a11));
  r14 = max(r13,calc_sub(a15,a11));
  r15 = max(r14,calc_sub(a16,a11));

  r12 = max(r11,calc_sub(a13,a12));
  r13 = max(r12,calc_sub(a14,a12));
  r14 = max(r13,calc_sub(a15,a12));
  r15 = max(r14,calc_sub(a16,a12));

  r13 = max(r12,calc_sub(a14,a13));
  r14 = max(r13,calc_sub(a15,a13));
  r15 = max(r14,calc_sub(a16,a13));

  r14 = max(r13,calc_sub(a15,a14));
  r15 = max(r14,calc_sub(a16,a14));

  r15 = max(r14,calc_sub(a16,a15));

  sub = r15;

  r1 = calc_mul(a1,a2);
  r2 = calc_mul(a1,a3);
  r3 = calc_mul(a1,a4);
  r4 = calc_mul(a1,a5);
  r5 = calc_mul(a1,a6);
  r6 = calc_mul(a1,a7);
  r7 = calc_mul(a1,a8);
  r8 = calc_mul(a1,a9);
  r9 = calc_mul(a1,a10);
  r10 = calc_mul(a1,a11);
  r11 = calc_mul(a1,a12);
  r12 = calc_mul(a1,a13);
  r13 = calc_mul(a1,a14);
  r14 = calc_mul(a1,a15);
  r15 = calc_mul(a1,a16);

  r2 = min(r1,calc_mul(a2,a3));
  r3 = min(r2,calc_mul(a2,a4));
  r4 = min(r3,calc_mul(a2,a5));
  r5 = min(r4,calc_mul(a2,a6));
  r6 = min(r5,calc_mul(a2,a7));
  r7 = min(r6,calc_mul(a2,a8));
  r8 = min(r7,calc_mul(a2,a9));
  r9 = min(r8,calc_mul(a2,a10));
  r10 = min(r9,calc_mul(a2,a11));
  r11 = min(r10,calc_mul(a2,a12));
  r12 = min(r11,calc_mul(a2,a13));
  r13 = min(r12,calc_mul(a2,a14));
  r14 = min(r13,calc_mul(a2,a15));
  r15 = min(r14,calc_mul(a2,a16));

  r3 = min(r2,calc_mul(a3,a4));
  r4 = min(r3,calc_mul(a3,a5));
  r5 = min(r4,calc_mul(a3,a6));
  r6 = min(r5,calc_mul(a3,a7));
  r7 = min(r6,calc_mul(a3,a8));
  r8 = min(r7,calc_mul(a3,a9));
  r9 = min(r8,calc_mul(a3,a10));
  r10 = min(r9,calc_mul(a3,a11));
  r11 = min(r10,calc_mul(a3,a12));
  r12 = min(r11,calc_mul(a3,a13));
  r13 = min(r12,calc_mul(a3,a14));
  r14 = min(r13,calc_mul(a3,a15));
  r15 = min(r14,calc_mul(a3,a16));

  r4 = min(r3,calc_mul(a4,a5));
  r5 = min(r4,calc_mul(a4,a6));
  r6 = min(r5,calc_mul(a4,a7));
  r7 = min(r6,calc_mul(a4,a8));
  r8 = min(r7,calc_mul(a4,a9));
  r9 = min(r8,calc_mul(a4,a10));
  r10 = min(r9,calc_mul(a4,a11));
  r11 = min(r10,calc_mul(a4,a12));
  r12 = min(r11,calc_mul(a4,a13));
  r13 = min(r12,calc_mul(a4,a14));
  r14 = min(r13,calc_mul(a4,a15));
  r15 = min(r14,calc_mul(a4,a16));

  r5 = min(r4,calc_mul(a5,a6));
  r6 = min(r5,calc_mul(a5,a7));
  r7 = min(r6,calc_mul(a5,a8));
  r8 = min(r7,calc_mul(a5,a9));
  r9 = min(r8,calc_mul(a5,a10));
  r10 = min(r9,calc_mul(a5,a11));
  r11 = min(r10,calc_mul(a5,a12));
  r12 = min(r11,calc_mul(a5,a13));
  r13 = min(r12,calc_mul(a5,a14));
  r14 = min(r13,calc_mul(a5,a15));
  r15 = min(r14,calc_mul(a5,a16));

  r6 = min(r5,calc_mul(a6,a7));
  r7 = min(r6,calc_mul(a6,a8));
  r8 = min(r7,calc_mul(a6,a9));
  r9 = min(r8,calc_mul(a6,a10));
  r10 = min(r9,calc_mul(a6,a11));
  r11 = min(r10,calc_mul(a6,a12));
  r12 = min(r11,calc_mul(a6,a13));
  r13 = min(r12,calc_mul(a6,a14));
  r14 = min(r13,calc_mul(a6,a15));
  r15 = min(r14,calc_mul(a6,a16));

  r7 = min(r6,calc_mul(a7,a8));
  r8 = min(r7,calc_mul(a7,a9));
  r9 = min(r8,calc_mul(a7,a10));
  r10 = min(r9,calc_mul(a7,a11));
  r11 = min(r10,calc_mul(a7,a12));
  r12 = min(r11,calc_mul(a7,a13));
  r13 = min(r12,calc_mul(a7,a14));
  r14 = min(r13,calc_mul(a7,a15));
  r15 = min(r14,calc_mul(a7,a16));

  r8 = min(r7,calc_mul(a8,a9));
  r9 = min(r8,calc_mul(a8,a10));
  r10 = min(r9,calc_mul(a8,a11));
  r11 = min(r10,calc_mul(a8,a12));
  r12 = min(r11,calc_mul(a8,a13));
  r13 = min(r12,calc_mul(a8,a14));
  r14 = min(r13,calc_mul(a8,a15));
  r15 = min(r14,calc_mul(a8,a16));

  r9 = min(r8,calc_mul(a9,a10));
  r10 = min(r9,calc_mul(a9,a11));
  r11 = min(r10,calc_mul(a9,a12));
  r12 = min(r11,calc_mul(a9,a13));
  r13 = min(r12,calc_mul(a9,a14));
  r14 = min(r13,calc_mul(a9,a15));
  r15 = min(r14,calc_mul(a9,a16));

  r10 = min(r9,calc_mul(a10,a11));
  r11 = min(r10,calc_mul(a10,a12));
  r12 = min(r11,calc_mul(a10,a13));
  r13 = min(r12,calc_mul(a10,a14));
  r14 = min(r13,calc_mul(a10,a15));
  r15 = min(r14,calc_mul(a10,a16));

  r11 = min(r10,calc_mul(a11,a12));
  r12 = min(r11,calc_mul(a11,a13));
  r13 = min(r12,calc_mul(a11,a14));
  r14 = min(r13,calc_mul(a11,a15));
  r15 = min(r14,calc_mul(a11,a16));

  r12 = min(r11,calc_mul(a12,a13));
  r13 = min(r12,calc_mul(a12,a14));
  r14 = min(r13,calc_mul(a12,a15));
  r15 = min(r14,calc_mul(a12,a16));

  r13 = min(r12,calc_mul(a13,a14));
  r14 = min(r13,calc_mul(a13,a15));
  r15 = min(r14,calc_mul(a13,a16));

  r14 = min(r13,calc_mul(a14,a15));
  r15 = min(r14,calc_mul(a14,a16));

  r15 = min(r14,calc_mul(a15,a16));

  mul = r15;

  r1 = calc_div(a2,a1);
  r2 = calc_div(a3,a1);
  r3 = calc_div(a4,a1);
  r4 = calc_div(a5,a1);
  r5 = calc_div(a6,a1);
  r6 = calc_div(a7,a1);
  r7 = calc_div(a8,a1);
  r8 = calc_div(a9,a1);
  r9 = calc_div(a10,a1);
  r10 = calc_div(a11,a1);
  r11 = calc_div(a12,a1);
  r12 = calc_div(a13,a1);
  r13 = calc_div(a14,a1);
  r14 = calc_div(a15,a1);
  r15 = calc_div(a16,a1);

  r2 = max(r1,calc_div(a3,a1));
  r3 = max(r2,calc_div(a4,a1));
  r4 = max(r3,calc_div(a5,a1));
  r5 = max(r4,calc_div(a6,a1));
  r6 = max(r5,calc_div(a7,a1));
  r7 = max(r6,calc_div(a8,a1));
  r8 = max(r7,calc_div(a9,a1));
  r9 = max(r8,calc_div(a10,a1));
  r10 = max(r9,calc_div(a11,a1));
  r11 = max(r10,calc_div(a12,a1));
  r12 = max(r11,calc_div(a13,a1));
  r13 = max(r12,calc_div(a14,a1));
  r14 = max(r13,calc_div(a15,a1));
  r15 = max(r14,calc_div(a16,a1));

  r3 = max(r2,calc_div(a4,a2));
  r4 = max(r3,calc_div(a5,a2));
  r5 = max(r4,calc_div(a6,a2));
  r6 = max(r5,calc_div(a7,a2));
  r7 = max(r6,calc_div(a8,a2));
  r8 = max(r7,calc_div(a9,a2));
  r9 = max(r8,calc_div(a10,a2));
  r10 = max(r9,calc_div(a11,a2));
  r11 = max(r10,calc_div(a12,a2));
  r12 = max(r11,calc_div(a13,a2));
  r13 = max(r12,calc_div(a14,a2));
  r14 = max(r13,calc_div(a15,a2));
  r15 = max(r14,calc_div(a16,a2));

  r4 = max(r3,calc_div(a5,a3));
  r5 = max(r4,calc_div(a6,a3));
  r6 = max(r5,calc_div(a7,a3));
  r7 = max(r6,calc_div(a8,a3));
  r8 = max(r7,calc_div(a9,a3));
  r9 = max(r8,calc_div(a10,a3));
  r10 = max(r9,calc_div(a11,a3));
  r11 = max(r10,calc_div(a12,a3));
  r12 = max(r11,calc_div(a13,a3));
  r13 = max(r12,calc_div(a14,a3));
  r14 = max(r13,calc_div(a15,a3));
  r15 = max(r14,calc_div(a16,a3));

  r4 = max(r3,calc_div(a5,a4));
  r5 = max(r4,calc_div(a6,a4));
  r6 = max(r5,calc_div(a7,a4));
  r7 = max(r6,calc_div(a8,a4));
  r8 = max(r7,calc_div(a9,a4));
  r9 = max(r8,calc_div(a10,a4));
  r10 = max(r9,calc_div(a11,a4));
  r11 = max(r10,calc_div(a12,a4));
  r12 = max(r11,calc_div(a13,a4));
  r13 = max(r12,calc_div(a14,a4));
  r14 = max(r13,calc_div(a15,a4));
  r15 = max(r14,calc_div(a16,a4));

  r5 = max(r4,calc_div(a6,a5));
  r6 = max(r5,calc_div(a7,a5));
  r7 = max(r6,calc_div(a8,a5));
  r8 = max(r7,calc_div(a9,a5));
  r9 = max(r8,calc_div(a10,a5));
  r10 = max(r9,calc_div(a11,a5));
  r11 = max(r10,calc_div(a12,a5));
  r12 = max(r11,calc_div(a13,a5));
  r13 = max(r12,calc_div(a14,a5));
  r14 = max(r13,calc_div(a15,a5));
  r15 = max(r14,calc_div(a16,a5));

  r6 = max(r5,calc_div(a7,a6));
  r7 = max(r6,calc_div(a8,a6));
  r8 = max(r7,calc_div(a9,a6));
  r9 = max(r8,calc_div(a10,a6));
  r10 = max(r9,calc_div(a11,a6));
  r11 = max(r10,calc_div(a12,a6));
  r12 = max(r11,calc_div(a13,a6));
  r13 = max(r12,calc_div(a14,a6));
  r14 = max(r13,calc_div(a15,a6));
  r15 = max(r14,calc_div(a16,a6));

  r7 = max(r6,calc_div(a8,a7));
  r8 = max(r7,calc_div(a9,a7));
  r9 = max(r8,calc_div(a10,a7));
  r10 = max(r9,calc_div(a11,a7));
  r11 = max(r10,calc_div(a12,a7));
  r12 = max(r11,calc_div(a13,a7));
  r13 = max(r12,calc_div(a14,a7));
  r14 = max(r13,calc_div(a15,a7));
  r15 = max(r14,calc_div(a16,a7));

  r8 = max(r7,calc_div(a9,a8));
  r9 = max(r8,calc_div(a10,a8));
  r10 = max(r9,calc_div(a11,a8));
  r11 = max(r10,calc_div(a12,a8));
  r12 = max(r11,calc_div(a13,a8));
  r13 = max(r12,calc_div(a14,a8));
  r14 = max(r13,calc_div(a15,a8));
  r15 = max(r14,calc_div(a16,a8));

  r9 = max(r8,calc_div(a10,a9));
  r10 = max(r9,calc_div(a11,a9));
  r11 = max(r10,calc_div(a12,a9));
  r12 = max(r11,calc_div(a13,a9));
  r13 = max(r12,calc_div(a14,a9));
  r14 = max(r13,calc_div(a15,a9));
  r15 = max(r14,calc_div(a16,a9));

  r10 = max(r9,calc_div(a11,a10));
  r11 = max(r10,calc_div(a12,a10));
  r12 = max(r11,calc_div(a13,a10));
  r13 = max(r12,calc_div(a14,a10));
  r14 = max(r13,calc_div(a15,a10));
  r15 = max(r14,calc_div(a16,a10));

  r11 = max(r10,calc_div(a12,a11));
  r12 = max(r11,calc_div(a13,a11));
  r13 = max(r12,calc_div(a14,a11));
  r14 = max(r13,calc_div(a15,a11));
  r15 = max(r14,calc_div(a16,a11));

  r12 = max(r11,calc_div(a13,a12));
  r13 = max(r12,calc_div(a14,a12));
  r14 = max(r13,calc_div(a15,a12));
  r15 = max(r14,calc_div(a16,a12));

  r13 = max(r12,calc_div(a14,a13));
  r14 = max(r13,calc_div(a15,a13));
  r15 = max(r14,calc_div(a16,a13));

  r14 = max(r13,calc_div(a15,a14));
  r15 = max(r14,calc_div(a16,a14));

  r15 = max(r14,calc_div(a16,a15));

  div = r15;

  r1 = calc_mod(a2,a1);
  r2 = calc_mod(a3,a1);
  r3 = calc_mod(a4,a1);
  r4 = calc_mod(a5,a1);
  r5 = calc_mod(a6,a1);
  r6 = calc_mod(a7,a1);
  r7 = calc_mod(a8,a1);
  r8 = calc_mod(a9,a1);
  r9 = calc_mod(a10,a1);
  r10 = calc_mod(a11,a1);
  r11 = calc_mod(a12,a1);
  r12 = calc_mod(a13,a1);
  r13 = calc_mod(a14,a1);
  r14 = calc_mod(a15,a1);
  r15 = calc_mod(a16,a1);

  r2 = max(r1,calc_mod(a3,a1));
  r3 = max(r2,calc_mod(a4,a1));
  r4 = max(r3,calc_mod(a5,a1));
  r5 = max(r4,calc_mod(a6,a1));
  r6 = max(r5,calc_mod(a7,a1));
  r7 = max(r6,calc_mod(a8,a1));
  r8 = max(r7,calc_mod(a9,a1));
  r9 = max(r8,calc_mod(a10,a1));
  r10 = max(r9,calc_mod(a11,a1));
  r11 = max(r10,calc_mod(a12,a1));
  r12 = max(r11,calc_mod(a13,a1));
  r13 = max(r12,calc_mod(a14,a1));
  r14 = max(r13,calc_mod(a15,a1));
  r15 = max(r14,calc_mod(a16,a1));

  r3 = max(r2,calc_mod(a4,a2));
  r4 = max(r3,calc_mod(a5,a2));
  r5 = max(r4,calc_mod(a6,a2));
  r6 = max(r5,calc_mod(a7,a2));
  r7 = max(r6,calc_mod(a8,a2));
  r8 = max(r7,calc_mod(a9,a2));
  r9 = max(r8,calc_mod(a10,a2));
  r10 = max(r9,calc_mod(a11,a2));
  r11 = max(r10,calc_mod(a12,a2));
  r12 = max(r11,calc_mod(a13,a2));
  r13 = max(r12,calc_mod(a14,a2));
  r14 = max(r13,calc_mod(a15,a2));
  r15 = max(r14,calc_mod(a16,a2));

  r4 = max(r3,calc_mod(a5,a3));
  r5 = max(r4,calc_mod(a6,a3));
  r6 = max(r5,calc_mod(a7,a3));
  r7 = max(r6,calc_mod(a8,a3));
  r8 = max(r7,calc_mod(a9,a3));
  r9 = max(r8,calc_mod(a10,a3));
  r10 = max(r9,calc_mod(a11,a3));
  r11 = max(r10,calc_mod(a12,a3));
  r12 = max(r11,calc_mod(a13,a3));
  r13 = max(r12,calc_mod(a14,a3));
  r14 = max(r13,calc_mod(a15,a3));
  r15 = max(r14,calc_mod(a16,a3));

  r4 = max(r3,calc_mod(a5,a4));
  r5 = max(r4,calc_mod(a6,a4));
  r6 = max(r5,calc_mod(a7,a4));
  r7 = max(r6,calc_mod(a8,a4));
  r8 = max(r7,calc_mod(a9,a4));
  r9 = max(r8,calc_mod(a10,a4));
  r10 = max(r9,calc_mod(a11,a4));
  r11 = max(r10,calc_mod(a12,a4));
  r12 = max(r11,calc_mod(a13,a4));
  r13 = max(r12,calc_mod(a14,a4));
  r14 = max(r13,calc_mod(a15,a4));
  r15 = max(r14,calc_mod(a16,a4));

  r5 = max(r4,calc_mod(a6,a5));
  r6 = max(r5,calc_mod(a7,a5));
  r7 = max(r6,calc_mod(a8,a5));
  r8 = max(r7,calc_mod(a9,a5));
  r9 = max(r8,calc_mod(a10,a5));
  r10 = max(r9,calc_mod(a11,a5));
  r11 = max(r10,calc_mod(a12,a5));
  r12 = max(r11,calc_mod(a13,a5));
  r13 = max(r12,calc_mod(a14,a5));
  r14 = max(r13,calc_mod(a15,a5));
  r15 = max(r14,calc_mod(a16,a5));

  r6 = max(r5,calc_mod(a7,a6));
  r7 = max(r6,calc_mod(a8,a6));
  r8 = max(r7,calc_mod(a9,a6));
  r9 = max(r8,calc_mod(a10,a6));
  r10 = max(r9,calc_mod(a11,a6));
  r11 = max(r10,calc_mod(a12,a6));
  r12 = max(r11,calc_mod(a13,a6));
  r13 = max(r12,calc_mod(a14,a6));
  r14 = max(r13,calc_mod(a15,a6));
  r15 = max(r14,calc_mod(a16,a6));

  r7 = max(r6,calc_mod(a8,a7));
  r8 = max(r7,calc_mod(a9,a7));
  r9 = max(r8,calc_mod(a10,a7));
  r10 = max(r9,calc_mod(a11,a7));
  r11 = max(r10,calc_mod(a12,a7));
  r12 = max(r11,calc_mod(a13,a7));
  r13 = max(r12,calc_mod(a14,a7));
  r14 = max(r13,calc_mod(a15,a7));
  r15 = max(r14,calc_mod(a16,a7));

  r8 = max(r7,calc_mod(a9,a8));
  r9 = max(r8,calc_mod(a10,a8));
  r10 = max(r9,calc_mod(a11,a8));
  r11 = max(r10,calc_mod(a12,a8));
  r12 = max(r11,calc_mod(a13,a8));
  r13 = max(r12,calc_mod(a14,a8));
  r14 = max(r13,calc_mod(a15,a8));
  r15 = max(r14,calc_mod(a16,a8));

  r9 = max(r8,calc_mod(a10,a9));
  r10 = max(r9,calc_mod(a11,a9));
  r11 = max(r10,calc_mod(a12,a9));
  r12 = max(r11,calc_mod(a13,a9));
  r13 = max(r12,calc_mod(a14,a9));
  r14 = max(r13,calc_mod(a15,a9));
  r15 = max(r14,calc_mod(a16,a9));

  r10 = max(r9,calc_mod(a11,a10));
  r11 = max(r10,calc_mod(a12,a10));
  r12 = max(r11,calc_mod(a13,a10));
  r13 = max(r12,calc_mod(a14,a10));
  r14 = max(r13,calc_mod(a15,a10));
  r15 = max(r14,calc_mod(a16,a10));

  r11 = max(r10,calc_mod(a12,a11));
  r12 = max(r11,calc_mod(a13,a11));
  r13 = max(r12,calc_mod(a14,a11));
  r14 = max(r13,calc_mod(a15,a11));
  r15 = max(r14,calc_mod(a16,a11));

  r12 = max(r11,calc_mod(a13,a12));
  r13 = max(r12,calc_mod(a14,a12));
  r14 = max(r13,calc_mod(a15,a12));
  r15 = max(r14,calc_mod(a16,a12));

  r13 = max(r12,calc_mod(a14,a13));
  r14 = max(r13,calc_mod(a15,a13));
  r15 = max(r14,calc_mod(a16,a13));

  r14 = max(r13,calc_mod(a15,a14));
  r15 = max(r14,calc_mod(a16,a14));

  r15 = max(r14,calc_mod(a16,a15));

  mod = r15;

  ans = max(max(max(max(add,sub),mul),div),mod);

  ur1 = calc_add(ua1,ua2);
  ur2 = calc_add(ua1,ua3);
  ur3 = calc_add(ua1,ua4);
  ur4 = calc_add(ua1,ua5);
  ur5 = calc_add(ua1,ua6);
  ur6 = calc_add(ua1,ua7);
  ur7 = calc_add(ua1,ua8);
  ur8 = calc_add(ua1,ua9);
  ur9 = calc_add(ua1,ua10);
  ur10 = calc_add(ua1,ua11);
  ur11 = calc_add(ua1,ua12);
  ur12 = calc_add(ua1,ua13);
  ur13 = calc_add(ua1,ua14);
  ur14 = calc_add(ua1,ua15);
  ur15 = calc_add(ua1,ua16);

  ur2 = max(ur1,calc_add(ua2,ua3));
  ur3 = max(ur2,calc_add(ua2,ua4));
  ur4 = max(ur3,calc_add(ua2,ua5));
  ur5 = max(ur4,calc_add(ua2,ua6));
  ur6 = max(ur5,calc_add(ua2,ua7));
  ur7 = max(ur6,calc_add(ua2,ua8));
  ur8 = max(ur7,calc_add(ua2,ua9));
  ur9 = max(ur8,calc_add(ua2,ua10));
  ur10 = max(ur9,calc_add(ua2,ua11));
  ur11 = max(ur10,calc_add(ua2,ua12));
  ur12 = max(ur11,calc_add(ua2,ua13));
  ur13 = max(ur12,calc_add(ua2,ua14));
  ur14 = max(ur13,calc_add(ua2,ua15));
  ur15 = max(ur14,calc_add(ua2,ua16));

  ur3 = max(ur2,calc_add(ua3,ua4));
  ur4 = max(ur3,calc_add(ua3,ua5));
  ur5 = max(ur4,calc_add(ua3,ua6));
  ur6 = max(ur5,calc_add(ua3,ua7));
  ur7 = max(ur6,calc_add(ua3,ua8));
  ur8 = max(ur7,calc_add(ua3,ua9));
  ur9 = max(ur8,calc_add(ua3,ua10));
  ur10 = max(ur9,calc_add(ua3,ua11));
  ur11 = max(ur10,calc_add(ua3,ua12));
  ur12 = max(ur11,calc_add(ua3,ua13));
  ur13 = max(ur12,calc_add(ua3,ua14));
  ur14 = max(ur13,calc_add(ua3,ua15));
  ur15 = max(ur14,calc_add(ua3,ua16));

  ur4 = max(ur3,calc_add(ua4,ua5));
  ur5 = max(ur4,calc_add(ua4,ua6));
  ur6 = max(ur5,calc_add(ua4,ua7));
  ur7 = max(ur6,calc_add(ua4,ua8));
  ur8 = max(ur7,calc_add(ua4,ua9));
  ur9 = max(ur8,calc_add(ua4,ua10));
  ur10 = max(ur9,calc_add(ua4,ua11));
  ur11 = max(ur10,calc_add(ua4,ua12));
  ur12 = max(ur11,calc_add(ua4,ua13));
  ur13 = max(ur12,calc_add(ua4,ua14));
  ur14 = max(ur13,calc_add(ua4,ua15));
  ur15 = max(ur14,calc_add(ua4,ua16));

  ur5 = max(ur4,calc_add(ua5,ua6));
  ur6 = max(ur5,calc_add(ua5,ua7));
  ur7 = max(ur6,calc_add(ua5,ua8));
  ur8 = max(ur7,calc_add(ua5,ua9));
  ur9 = max(ur8,calc_add(ua5,ua10));
  ur10 = max(ur9,calc_add(ua5,ua11));
  ur11 = max(ur10,calc_add(ua5,ua12));
  ur12 = max(ur11,calc_add(ua5,ua13));
  ur13 = max(ur12,calc_add(ua5,ua14));
  ur14 = max(ur13,calc_add(ua5,ua15));
  ur15 = max(ur14,calc_add(ua5,ua16));

  ur6 = max(ur5,calc_add(ua6,ua7));
  ur7 = max(ur6,calc_add(ua6,ua8));
  ur8 = max(ur7,calc_add(ua6,ua9));
  ur9 = max(ur8,calc_add(ua6,ua10));
  ur10 = max(ur9,calc_add(ua6,ua11));
  ur11 = max(ur10,calc_add(ua6,ua12));
  ur12 = max(ur11,calc_add(ua6,ua13));
  ur13 = max(ur12,calc_add(ua6,ua14));
  ur14 = max(ur13,calc_add(ua6,ua15));
  ur15 = max(ur14,calc_add(ua6,ua16));

  ur7 = max(ur6,calc_add(ua7,ua8));
  ur8 = max(ur7,calc_add(ua7,ua9));
  ur9 = max(ur8,calc_add(ua7,ua10));
  ur10 = max(ur9,calc_add(ua7,ua11));
  ur11 = max(ur10,calc_add(ua7,ua12));
  ur12 = max(ur11,calc_add(ua7,ua13));
  ur13 = max(ur12,calc_add(ua7,ua14));
  ur14 = max(ur13,calc_add(ua7,ua15));
  ur15 = max(ur14,calc_add(ua7,ua16));

  ur8 = max(ur7,calc_add(ua8,ua9));
  ur9 = max(ur8,calc_add(ua8,ua10));
  ur10 = max(ur9,calc_add(ua8,ua11));
  ur11 = max(ur10,calc_add(ua8,ua12));
  ur12 = max(ur11,calc_add(ua8,ua13));
  ur13 = max(ur12,calc_add(ua8,ua14));
  ur14 = max(ur13,calc_add(ua8,ua15));
  ur15 = max(ur14,calc_add(ua8,ua16));

  ur9 = max(ur8,calc_add(ua9,ua10));
  ur10 = max(ur9,calc_add(ua9,ua11));
  ur11 = max(ur10,calc_add(ua9,ua12));
  ur12 = max(ur11,calc_add(ua9,ua13));
  ur13 = max(ur12,calc_add(ua9,ua14));
  ur14 = max(ur13,calc_add(ua9,ua15));
  ur15 = max(ur14,calc_add(ua9,ua16));

  ur10 = max(ur9,calc_add(ua10,ua11));
  ur11 = max(ur10,calc_add(ua10,ua12));
  ur12 = max(ur11,calc_add(ua10,ua13));
  ur13 = max(ur12,calc_add(ua10,ua14));
  ur14 = max(ur13,calc_add(ua10,ua15));
  ur15 = max(ur14,calc_add(ua10,ua16));

  ur11 = max(ur10,calc_add(ua11,ua12));
  ur12 = max(ur11,calc_add(ua11,ua13));
  ur13 = max(ur12,calc_add(ua11,ua14));
  ur14 = max(ur13,calc_add(ua11,ua15));
  ur15 = max(ur14,calc_add(ua11,ua16));

  ur12 = max(ur11,calc_add(ua12,ua13));
  ur13 = max(ur12,calc_add(ua12,ua14));
  ur14 = max(ur13,calc_add(ua12,ua15));
  ur15 = max(ur14,calc_add(ua12,ua16));

  ur13 = max(ur12,calc_add(ua13,ua14));
  ur14 = max(ur13,calc_add(ua13,ua15));
  ur15 = max(ur14,calc_add(ua13,ua16));

  ur14 = max(ur13,calc_add(ua14,ua15));
  ur15 = max(ur14,calc_add(ua14,ua16));

  ur15 = max(ur14,calc_add(ua15,ua16));
  
  uadd = ur15;

  ur1 = calc_sub(ua2,ua1);
  ur2 = calc_sub(ua3,ua1);
  ur3 = calc_sub(ua4,ua1);
  ur4 = calc_sub(ua5,ua1);
  ur5 = calc_sub(ua6,ua1);
  ur6 = calc_sub(ua7,ua1);
  ur7 = calc_sub(ua8,ua1);
  ur8 = calc_sub(ua9,ua1);
  ur9 = calc_sub(ua10,ua1);
  ur10 = calc_sub(ua11,ua1);
  ur11 = calc_sub(ua12,ua1);
  ur12 = calc_sub(ua13,ua1);
  ur13 = calc_sub(ua14,ua1);
  ur14 = calc_sub(ua15,ua1);
  ur15 = calc_sub(ua16,ua1);

  ur2 = max(ur1,calc_sub(ua3,ua1));
  ur3 = max(ur2,calc_sub(ua4,ua1));
  ur4 = max(ur3,calc_sub(ua5,ua1));
  ur5 = max(ur4,calc_sub(ua6,ua1));
  ur6 = max(ur5,calc_sub(ua7,ua1));
  ur7 = max(ur6,calc_sub(ua8,ua1));
  ur8 = max(ur7,calc_sub(ua9,ua1));
  ur9 = max(ur8,calc_sub(ua10,ua1));
  ur10 = max(ur9,calc_sub(ua11,ua1));
  ur11 = max(ur10,calc_sub(ua12,ua1));
  ur12 = max(ur11,calc_sub(ua13,ua1));
  ur13 = max(ur12,calc_sub(ua14,ua1));
  ur14 = max(ur13,calc_sub(ua15,ua1));
  ur15 = max(ur14,calc_sub(ua16,ua1));

  ur3 = max(ur2,calc_sub(ua4,ua2));
  ur4 = max(ur3,calc_sub(ua5,ua2));
  ur5 = max(ur4,calc_sub(ua6,ua2));
  ur6 = max(ur5,calc_sub(ua7,ua2));
  ur7 = max(ur6,calc_sub(ua8,ua2));
  ur8 = max(ur7,calc_sub(ua9,ua2));
  ur9 = max(ur8,calc_sub(ua10,ua2));
  ur10 = max(ur9,calc_sub(ua11,ua2));
  ur11 = max(ur10,calc_sub(ua12,ua2));
  ur12 = max(ur11,calc_sub(ua13,ua2));
  ur13 = max(ur12,calc_sub(ua14,ua2));
  ur14 = max(ur13,calc_sub(ua15,ua2));
  ur15 = max(ur14,calc_sub(ua16,ua2));

  ur4 = max(ur3,calc_sub(ua5,ua3));
  ur5 = max(ur4,calc_sub(ua6,ua3));
  ur6 = max(ur5,calc_sub(ua7,ua3));
  ur7 = max(ur6,calc_sub(ua8,ua3));
  ur8 = max(ur7,calc_sub(ua9,ua3));
  ur9 = max(ur8,calc_sub(ua10,ua3));
  ur10 = max(ur9,calc_sub(ua11,ua3));
  ur11 = max(ur10,calc_sub(ua12,ua3));
  ur12 = max(ur11,calc_sub(ua13,ua3));
  ur13 = max(ur12,calc_sub(ua14,ua3));
  ur14 = max(ur13,calc_sub(ua15,ua3));
  ur15 = max(ur14,calc_sub(ua16,ua3));

  ur4 = max(ur3,calc_sub(ua5,ua4));
  ur5 = max(ur4,calc_sub(ua6,ua4));
  ur6 = max(ur5,calc_sub(ua7,ua4));
  ur7 = max(ur6,calc_sub(ua8,ua4));
  ur8 = max(ur7,calc_sub(ua9,ua4));
  ur9 = max(ur8,calc_sub(ua10,ua4));
  ur10 = max(ur9,calc_sub(ua11,ua4));
  ur11 = max(ur10,calc_sub(ua12,ua4));
  ur12 = max(ur11,calc_sub(ua13,ua4));
  ur13 = max(ur12,calc_sub(ua14,ua4));
  ur14 = max(ur13,calc_sub(ua15,ua4));
  ur15 = max(ur14,calc_sub(ua16,ua4));

  ur5 = max(ur4,calc_sub(ua6,ua5));
  ur6 = max(ur5,calc_sub(ua7,ua5));
  ur7 = max(ur6,calc_sub(ua8,ua5));
  ur8 = max(ur7,calc_sub(ua9,ua5));
  ur9 = max(ur8,calc_sub(ua10,ua5));
  ur10 = max(ur9,calc_sub(ua11,ua5));
  ur11 = max(ur10,calc_sub(ua12,ua5));
  ur12 = max(ur11,calc_sub(ua13,ua5));
  ur13 = max(ur12,calc_sub(ua14,ua5));
  ur14 = max(ur13,calc_sub(ua15,ua5));
  ur15 = max(ur14,calc_sub(ua16,ua5));

  ur6 = max(ur5,calc_sub(ua7,ua6));
  ur7 = max(ur6,calc_sub(ua8,ua6));
  ur8 = max(ur7,calc_sub(ua9,ua6));
  ur9 = max(ur8,calc_sub(ua10,ua6));
  ur10 = max(ur9,calc_sub(ua11,ua6));
  ur11 = max(ur10,calc_sub(ua12,ua6));
  ur12 = max(ur11,calc_sub(ua13,ua6));
  ur13 = max(ur12,calc_sub(ua14,ua6));
  ur14 = max(ur13,calc_sub(ua15,ua6));
  ur15 = max(ur14,calc_sub(ua16,ua6));

  ur7 = max(ur6,calc_sub(ua8,ua7));
  ur8 = max(ur7,calc_sub(ua9,ua7));
  ur9 = max(ur8,calc_sub(ua10,ua7));
  ur10 = max(ur9,calc_sub(ua11,ua7));
  ur11 = max(ur10,calc_sub(ua12,ua7));
  ur12 = max(ur11,calc_sub(ua13,ua7));
  ur13 = max(ur12,calc_sub(ua14,ua7));
  ur14 = max(ur13,calc_sub(ua15,ua7));
  ur15 = max(ur14,calc_sub(ua16,ua7));

  ur8 = max(ur7,calc_sub(ua9,ua8));
  ur9 = max(ur8,calc_sub(ua10,ua8));
  ur10 = max(ur9,calc_sub(ua11,ua8));
  ur11 = max(ur10,calc_sub(ua12,ua8));
  ur12 = max(ur11,calc_sub(ua13,ua8));
  ur13 = max(ur12,calc_sub(ua14,ua8));
  ur14 = max(ur13,calc_sub(ua15,ua8));
  ur15 = max(ur14,calc_sub(ua16,ua8));

  ur9 = max(ur8,calc_sub(ua10,ua9));
  ur10 = max(ur9,calc_sub(ua11,ua9));
  ur11 = max(ur10,calc_sub(ua12,ua9));
  ur12 = max(ur11,calc_sub(ua13,ua9));
  ur13 = max(ur12,calc_sub(ua14,ua9));
  ur14 = max(ur13,calc_sub(ua15,ua9));
  ur15 = max(ur14,calc_sub(ua16,ua9));

  ur10 = max(ur9,calc_sub(ua11,ua10));
  ur11 = max(ur10,calc_sub(ua12,ua10));
  ur12 = max(ur11,calc_sub(ua13,ua10));
  ur13 = max(ur12,calc_sub(ua14,ua10));
  ur14 = max(ur13,calc_sub(ua15,ua10));
  ur15 = max(ur14,calc_sub(ua16,ua10));

  ur11 = max(ur10,calc_sub(ua12,ua11));
  ur12 = max(ur11,calc_sub(ua13,ua11));
  ur13 = max(ur12,calc_sub(ua14,ua11));
  ur14 = max(ur13,calc_sub(ua15,ua11));
  ur15 = max(ur14,calc_sub(ua16,ua11));

  ur12 = max(ur11,calc_sub(ua13,ua12));
  ur13 = max(ur12,calc_sub(ua14,ua12));
  ur14 = max(ur13,calc_sub(ua15,ua12));
  ur15 = max(ur14,calc_sub(ua16,ua12));

  ur13 = max(ur12,calc_sub(ua14,ua13));
  ur14 = max(ur13,calc_sub(ua15,ua13));
  ur15 = max(ur14,calc_sub(ua16,ua13));

  ur14 = max(ur13,calc_sub(ua15,ua14));
  ur15 = max(ur14,calc_sub(ua16,ua14));

  ur15 = max(ur14,calc_sub(ua16,ua15));

  usub = ur15;

  ur1 = calc_mul(ua1,ua2);
  ur2 = calc_mul(ua1,ua3);
  ur3 = calc_mul(ua1,ua4);
  ur4 = calc_mul(ua1,ua5);
  ur5 = calc_mul(ua1,ua6);
  ur6 = calc_mul(ua1,ua7);
  ur7 = calc_mul(ua1,ua8);
  ur8 = calc_mul(ua1,ua9);
  ur9 = calc_mul(ua1,ua10);
  ur10 = calc_mul(ua1,ua11);
  ur11 = calc_mul(ua1,ua12);
  ur12 = calc_mul(ua1,ua13);
  ur13 = calc_mul(ua1,ua14);
  ur14 = calc_mul(ua1,ua15);
  ur15 = calc_mul(ua1,ua16);

  ur2 = min(ur1,calc_mul(ua2,ua3));
  ur3 = min(ur2,calc_mul(ua2,ua4));
  ur4 = min(ur3,calc_mul(ua2,ua5));
  ur5 = min(ur4,calc_mul(ua2,ua6));
  ur6 = min(ur5,calc_mul(ua2,ua7));
  ur7 = min(ur6,calc_mul(ua2,ua8));
  ur8 = min(ur7,calc_mul(ua2,ua9));
  ur9 = min(ur8,calc_mul(ua2,ua10));
  ur10 = min(ur9,calc_mul(ua2,ua11));
  ur11 = min(ur10,calc_mul(ua2,ua12));
  ur12 = min(ur11,calc_mul(ua2,ua13));
  ur13 = min(ur12,calc_mul(ua2,ua14));
  ur14 = min(ur13,calc_mul(ua2,ua15));
  ur15 = min(ur14,calc_mul(ua2,ua16));

  ur3 = min(ur2,calc_mul(ua3,ua4));
  ur4 = min(ur3,calc_mul(ua3,ua5));
  ur5 = min(ur4,calc_mul(ua3,ua6));
  ur6 = min(ur5,calc_mul(ua3,ua7));
  ur7 = min(ur6,calc_mul(ua3,ua8));
  ur8 = min(ur7,calc_mul(ua3,ua9));
  ur9 = min(ur8,calc_mul(ua3,ua10));
  ur10 = min(ur9,calc_mul(ua3,ua11));
  ur11 = min(ur10,calc_mul(ua3,ua12));
  ur12 = min(ur11,calc_mul(ua3,ua13));
  ur13 = min(ur12,calc_mul(ua3,ua14));
  ur14 = min(ur13,calc_mul(ua3,ua15));
  ur15 = min(ur14,calc_mul(ua3,ua16));

  ur4 = min(ur3,calc_mul(ua4,ua5));
  ur5 = min(ur4,calc_mul(ua4,ua6));
  ur6 = min(ur5,calc_mul(ua4,ua7));
  ur7 = min(ur6,calc_mul(ua4,ua8));
  ur8 = min(ur7,calc_mul(ua4,ua9));
  ur9 = min(ur8,calc_mul(ua4,ua10));
  ur10 = min(ur9,calc_mul(ua4,ua11));
  ur11 = min(ur10,calc_mul(ua4,ua12));
  ur12 = min(ur11,calc_mul(ua4,ua13));
  ur13 = min(ur12,calc_mul(ua4,ua14));
  ur14 = min(ur13,calc_mul(ua4,ua15));
  ur15 = min(ur14,calc_mul(ua4,ua16));

  ur5 = min(ur4,calc_mul(ua5,ua6));
  ur6 = min(ur5,calc_mul(ua5,ua7));
  ur7 = min(ur6,calc_mul(ua5,ua8));
  ur8 = min(ur7,calc_mul(ua5,ua9));
  ur9 = min(ur8,calc_mul(ua5,ua10));
  ur10 = min(ur9,calc_mul(ua5,ua11));
  ur11 = min(ur10,calc_mul(ua5,ua12));
  ur12 = min(ur11,calc_mul(ua5,ua13));
  ur13 = min(ur12,calc_mul(ua5,ua14));
  ur14 = min(ur13,calc_mul(ua5,ua15));
  ur15 = min(ur14,calc_mul(ua5,ua16));

  ur6 = min(ur5,calc_mul(ua6,ua7));
  ur7 = min(ur6,calc_mul(ua6,ua8));
  ur8 = min(ur7,calc_mul(ua6,ua9));
  ur9 = min(ur8,calc_mul(ua6,ua10));
  ur10 = min(ur9,calc_mul(ua6,ua11));
  ur11 = min(ur10,calc_mul(ua6,ua12));
  ur12 = min(ur11,calc_mul(ua6,ua13));
  ur13 = min(ur12,calc_mul(ua6,ua14));
  ur14 = min(ur13,calc_mul(ua6,ua15));
  ur15 = min(ur14,calc_mul(ua6,ua16));

  ur7 = min(ur6,calc_mul(ua7,ua8));
  ur8 = min(ur7,calc_mul(ua7,ua9));
  ur9 = min(ur8,calc_mul(ua7,ua10));
  ur10 = min(ur9,calc_mul(ua7,ua11));
  ur11 = min(ur10,calc_mul(ua7,ua12));
  ur12 = min(ur11,calc_mul(ua7,ua13));
  ur13 = min(ur12,calc_mul(ua7,ua14));
  ur14 = min(ur13,calc_mul(ua7,ua15));
  ur15 = min(ur14,calc_mul(ua7,ua16));

  ur8 = min(ur7,calc_mul(ua8,ua9));
  ur9 = min(ur8,calc_mul(ua8,ua10));
  ur10 = min(ur9,calc_mul(ua8,ua11));
  ur11 = min(ur10,calc_mul(ua8,ua12));
  ur12 = min(ur11,calc_mul(ua8,ua13));
  ur13 = min(ur12,calc_mul(ua8,ua14));
  ur14 = min(ur13,calc_mul(ua8,ua15));
  ur15 = min(ur14,calc_mul(ua8,ua16));

  ur9 = min(ur8,calc_mul(ua9,ua10));
  ur10 = min(ur9,calc_mul(ua9,ua11));
  ur11 = min(ur10,calc_mul(ua9,ua12));
  ur12 = min(ur11,calc_mul(ua9,ua13));
  ur13 = min(ur12,calc_mul(ua9,ua14));
  ur14 = min(ur13,calc_mul(ua9,ua15));
  ur15 = min(ur14,calc_mul(ua9,ua16));

  ur10 = min(ur9,calc_mul(ua10,ua11));
  ur11 = min(ur10,calc_mul(ua10,ua12));
  ur12 = min(ur11,calc_mul(ua10,ua13));
  ur13 = min(ur12,calc_mul(ua10,ua14));
  ur14 = min(ur13,calc_mul(ua10,ua15));
  ur15 = min(ur14,calc_mul(ua10,ua16));

  ur11 = min(ur10,calc_mul(ua11,ua12));
  ur12 = min(ur11,calc_mul(ua11,ua13));
  ur13 = min(ur12,calc_mul(ua11,ua14));
  ur14 = min(ur13,calc_mul(ua11,ua15));
  ur15 = min(ur14,calc_mul(ua11,ua16));

  ur12 = min(ur11,calc_mul(ua12,ua13));
  ur13 = min(ur12,calc_mul(ua12,ua14));
  ur14 = min(ur13,calc_mul(ua12,ua15));
  ur15 = min(ur14,calc_mul(ua12,ua16));

  ur13 = min(ur12,calc_mul(ua13,ua14));
  ur14 = min(ur13,calc_mul(ua13,ua15));
  ur15 = min(ur14,calc_mul(ua13,ua16));

  ur14 = min(ur13,calc_mul(ua14,ua15));
  ur15 = min(ur14,calc_mul(ua14,ua16));

  ur15 = min(ur14,calc_mul(ua15,ua16));

  umul = ur15;

  ur1 = calc_div(ua2,ua1);
  ur2 = calc_div(ua3,ua1);
  ur3 = calc_div(ua4,ua1);
  ur4 = calc_div(ua5,ua1);
  ur5 = calc_div(ua6,ua1);
  ur6 = calc_div(ua7,ua1);
  ur7 = calc_div(ua8,ua1);
  ur8 = calc_div(ua9,ua1);
  ur9 = calc_div(ua10,ua1);
  ur10 = calc_div(ua11,ua1);
  ur11 = calc_div(ua12,ua1);
  ur12 = calc_div(ua13,ua1);
  ur13 = calc_div(ua14,ua1);
  ur14 = calc_div(ua15,ua1);
  ur15 = calc_div(ua16,ua1);

  ur2 = max(ur1,calc_div(ua3,ua1));
  ur3 = max(ur2,calc_div(ua4,ua1));
  ur4 = max(ur3,calc_div(ua5,ua1));
  ur5 = max(ur4,calc_div(ua6,ua1));
  ur6 = max(ur5,calc_div(ua7,ua1));
  ur7 = max(ur6,calc_div(ua8,ua1));
  ur8 = max(ur7,calc_div(ua9,ua1));
  ur9 = max(ur8,calc_div(ua10,ua1));
  ur10 = max(ur9,calc_div(ua11,ua1));
  ur11 = max(ur10,calc_div(ua12,ua1));
  ur12 = max(ur11,calc_div(ua13,ua1));
  ur13 = max(ur12,calc_div(ua14,ua1));
  ur14 = max(ur13,calc_div(ua15,ua1));
  ur15 = max(ur14,calc_div(ua16,ua1));

  ur3 = max(ur2,calc_div(ua4,ua2));
  ur4 = max(ur3,calc_div(ua5,ua2));
  ur5 = max(ur4,calc_div(ua6,ua2));
  ur6 = max(ur5,calc_div(ua7,ua2));
  ur7 = max(ur6,calc_div(ua8,ua2));
  ur8 = max(ur7,calc_div(ua9,ua2));
  ur9 = max(ur8,calc_div(ua10,ua2));
  ur10 = max(ur9,calc_div(ua11,ua2));
  ur11 = max(ur10,calc_div(ua12,ua2));
  ur12 = max(ur11,calc_div(ua13,ua2));
  ur13 = max(ur12,calc_div(ua14,ua2));
  ur14 = max(ur13,calc_div(ua15,ua2));
  ur15 = max(ur14,calc_div(ua16,ua2));

  ur4 = max(ur3,calc_div(ua5,ua3));
  ur5 = max(ur4,calc_div(ua6,ua3));
  ur6 = max(ur5,calc_div(ua7,ua3));
  ur7 = max(ur6,calc_div(ua8,ua3));
  ur8 = max(ur7,calc_div(ua9,ua3));
  ur9 = max(ur8,calc_div(ua10,ua3));
  ur10 = max(ur9,calc_div(ua11,ua3));
  ur11 = max(ur10,calc_div(ua12,ua3));
  ur12 = max(ur11,calc_div(ua13,ua3));
  ur13 = max(ur12,calc_div(ua14,ua3));
  ur14 = max(ur13,calc_div(ua15,ua3));
  ur15 = max(ur14,calc_div(ua16,ua3));

  ur4 = max(ur3,calc_div(ua5,ua4));
  ur5 = max(ur4,calc_div(ua6,ua4));
  ur6 = max(ur5,calc_div(ua7,ua4));
  ur7 = max(ur6,calc_div(ua8,ua4));
  ur8 = max(ur7,calc_div(ua9,ua4));
  ur9 = max(ur8,calc_div(ua10,ua4));
  ur10 = max(ur9,calc_div(ua11,ua4));
  ur11 = max(ur10,calc_div(ua12,ua4));
  ur12 = max(ur11,calc_div(ua13,ua4));
  ur13 = max(ur12,calc_div(ua14,ua4));
  ur14 = max(ur13,calc_div(ua15,ua4));
  ur15 = max(ur14,calc_div(ua16,ua4));

  ur5 = max(ur4,calc_div(ua6,ua5));
  ur6 = max(ur5,calc_div(ua7,ua5));
  ur7 = max(ur6,calc_div(ua8,ua5));
  ur8 = max(ur7,calc_div(ua9,ua5));
  ur9 = max(ur8,calc_div(ua10,ua5));
  ur10 = max(ur9,calc_div(ua11,ua5));
  ur11 = max(ur10,calc_div(ua12,ua5));
  ur12 = max(ur11,calc_div(ua13,ua5));
  ur13 = max(ur12,calc_div(ua14,ua5));
  ur14 = max(ur13,calc_div(ua15,ua5));
  ur15 = max(ur14,calc_div(ua16,ua5));

  ur6 = max(ur5,calc_div(ua7,ua6));
  ur7 = max(ur6,calc_div(ua8,ua6));
  ur8 = max(ur7,calc_div(ua9,ua6));
  ur9 = max(ur8,calc_div(ua10,ua6));
  ur10 = max(ur9,calc_div(ua11,ua6));
  ur11 = max(ur10,calc_div(ua12,ua6));
  ur12 = max(ur11,calc_div(ua13,ua6));
  ur13 = max(ur12,calc_div(ua14,ua6));
  ur14 = max(ur13,calc_div(ua15,ua6));
  ur15 = max(ur14,calc_div(ua16,ua6));

  ur7 = max(ur6,calc_div(ua8,ua7));
  ur8 = max(ur7,calc_div(ua9,ua7));
  ur9 = max(ur8,calc_div(ua10,ua7));
  ur10 = max(ur9,calc_div(ua11,ua7));
  ur11 = max(ur10,calc_div(ua12,ua7));
  ur12 = max(ur11,calc_div(ua13,ua7));
  ur13 = max(ur12,calc_div(ua14,ua7));
  ur14 = max(ur13,calc_div(ua15,ua7));
  ur15 = max(ur14,calc_div(ua16,ua7));

  ur8 = max(ur7,calc_div(ua9,ua8));
  ur9 = max(ur8,calc_div(ua10,ua8));
  ur10 = max(ur9,calc_div(ua11,ua8));
  ur11 = max(ur10,calc_div(ua12,ua8));
  ur12 = max(ur11,calc_div(ua13,ua8));
  ur13 = max(ur12,calc_div(ua14,ua8));
  ur14 = max(ur13,calc_div(ua15,ua8));
  ur15 = max(ur14,calc_div(ua16,ua8));

  ur9 = max(ur8,calc_div(ua10,ua9));
  ur10 = max(ur9,calc_div(ua11,ua9));
  ur11 = max(ur10,calc_div(ua12,ua9));
  ur12 = max(ur11,calc_div(ua13,ua9));
  ur13 = max(ur12,calc_div(ua14,ua9));
  ur14 = max(ur13,calc_div(ua15,ua9));
  ur15 = max(ur14,calc_div(ua16,ua9));

  ur10 = max(ur9,calc_div(ua11,ua10));
  ur11 = max(ur10,calc_div(ua12,ua10));
  ur12 = max(ur11,calc_div(ua13,ua10));
  ur13 = max(ur12,calc_div(ua14,ua10));
  ur14 = max(ur13,calc_div(ua15,ua10));
  ur15 = max(ur14,calc_div(ua16,ua10));

  ur11 = max(ur10,calc_div(ua12,ua11));
  ur12 = max(ur11,calc_div(ua13,ua11));
  ur13 = max(ur12,calc_div(ua14,ua11));
  ur14 = max(ur13,calc_div(ua15,ua11));
  ur15 = max(ur14,calc_div(ua16,ua11));

  ur12 = max(ur11,calc_div(ua13,ua12));
  ur13 = max(ur12,calc_div(ua14,ua12));
  ur14 = max(ur13,calc_div(ua15,ua12));
  ur15 = max(ur14,calc_div(ua16,ua12));

  ur13 = max(ur12,calc_div(ua14,ua13));
  ur14 = max(ur13,calc_div(ua15,ua13));
  ur15 = max(ur14,calc_div(ua16,ua13));

  ur14 = max(ur13,calc_div(ua15,ua14));
  ur15 = max(ur14,calc_div(ua16,ua14));

  ur15 = max(ur14,calc_div(ua16,ua15));

  udiv = ur15;

  ur1 = calc_mod(ua2,ua1);
  ur2 = calc_mod(ua3,ua1);
  ur3 = calc_mod(ua4,ua1);
  ur4 = calc_mod(ua5,ua1);
  ur5 = calc_mod(ua6,ua1);
  ur6 = calc_mod(ua7,ua1);
  ur7 = calc_mod(ua8,ua1);
  ur8 = calc_mod(ua9,ua1);
  ur9 = calc_mod(ua10,ua1);
  ur10 = calc_mod(ua11,ua1);
  ur11 = calc_mod(ua12,ua1);
  ur12 = calc_mod(ua13,ua1);
  ur13 = calc_mod(ua14,ua1);
  ur14 = calc_mod(ua15,ua1);
  ur15 = calc_mod(ua16,ua1);

  ur2 = max(ur1,calc_mod(ua3,ua1));
  ur3 = max(ur2,calc_mod(ua4,ua1));
  ur4 = max(ur3,calc_mod(ua5,ua1));
  ur5 = max(ur4,calc_mod(ua6,ua1));
  ur6 = max(ur5,calc_mod(ua7,ua1));
  ur7 = max(ur6,calc_mod(ua8,ua1));
  ur8 = max(ur7,calc_mod(ua9,ua1));
  ur9 = max(ur8,calc_mod(ua10,ua1));
  ur10 = max(ur9,calc_mod(ua11,ua1));
  ur11 = max(ur10,calc_mod(ua12,ua1));
  ur12 = max(ur11,calc_mod(ua13,ua1));
  ur13 = max(ur12,calc_mod(ua14,ua1));
  ur14 = max(ur13,calc_mod(ua15,ua1));
  ur15 = max(ur14,calc_mod(ua16,ua1));

  ur3 = max(ur2,calc_mod(ua4,ua2));
  ur4 = max(ur3,calc_mod(ua5,ua2));
  ur5 = max(ur4,calc_mod(ua6,ua2));
  ur6 = max(ur5,calc_mod(ua7,ua2));
  ur7 = max(ur6,calc_mod(ua8,ua2));
  ur8 = max(ur7,calc_mod(ua9,ua2));
  ur9 = max(ur8,calc_mod(ua10,ua2));
  ur10 = max(ur9,calc_mod(ua11,ua2));
  ur11 = max(ur10,calc_mod(ua12,ua2));
  ur12 = max(ur11,calc_mod(ua13,ua2));
  ur13 = max(ur12,calc_mod(ua14,ua2));
  ur14 = max(ur13,calc_mod(ua15,ua2));
  ur15 = max(ur14,calc_mod(ua16,ua2));

  ur4 = max(ur3,calc_mod(ua5,ua3));
  ur5 = max(ur4,calc_mod(ua6,ua3));
  ur6 = max(ur5,calc_mod(ua7,ua3));
  ur7 = max(ur6,calc_mod(ua8,ua3));
  ur8 = max(ur7,calc_mod(ua9,ua3));
  ur9 = max(ur8,calc_mod(ua10,ua3));
  ur10 = max(ur9,calc_mod(ua11,ua3));
  ur11 = max(ur10,calc_mod(ua12,ua3));
  ur12 = max(ur11,calc_mod(ua13,ua3));
  ur13 = max(ur12,calc_mod(ua14,ua3));
  ur14 = max(ur13,calc_mod(ua15,ua3));
  ur15 = max(ur14,calc_mod(ua16,ua3));

  ur4 = max(ur3,calc_mod(ua5,ua4));
  ur5 = max(ur4,calc_mod(ua6,ua4));
  ur6 = max(ur5,calc_mod(ua7,ua4));
  ur7 = max(ur6,calc_mod(ua8,ua4));
  ur8 = max(ur7,calc_mod(ua9,ua4));
  ur9 = max(ur8,calc_mod(ua10,ua4));
  ur10 = max(ur9,calc_mod(ua11,ua4));
  ur11 = max(ur10,calc_mod(ua12,ua4));
  ur12 = max(ur11,calc_mod(ua13,ua4));
  ur13 = max(ur12,calc_mod(ua14,ua4));
  ur14 = max(ur13,calc_mod(ua15,ua4));
  ur15 = max(ur14,calc_mod(ua16,ua4));

  ur5 = max(ur4,calc_mod(ua6,ua5));
  ur6 = max(ur5,calc_mod(ua7,ua5));
  ur7 = max(ur6,calc_mod(ua8,ua5));
  ur8 = max(ur7,calc_mod(ua9,ua5));
  ur9 = max(ur8,calc_mod(ua10,ua5));
  ur10 = max(ur9,calc_mod(ua11,ua5));
  ur11 = max(ur10,calc_mod(ua12,ua5));
  ur12 = max(ur11,calc_mod(ua13,ua5));
  ur13 = max(ur12,calc_mod(ua14,ua5));
  ur14 = max(ur13,calc_mod(ua15,ua5));
  ur15 = max(ur14,calc_mod(ua16,ua5));

  ur6 = max(ur5,calc_mod(ua7,ua6));
  ur7 = max(ur6,calc_mod(ua8,ua6));
  ur8 = max(ur7,calc_mod(ua9,ua6));
  ur9 = max(ur8,calc_mod(ua10,ua6));
  ur10 = max(ur9,calc_mod(ua11,ua6));
  ur11 = max(ur10,calc_mod(ua12,ua6));
  ur12 = max(ur11,calc_mod(ua13,ua6));
  ur13 = max(ur12,calc_mod(ua14,ua6));
  ur14 = max(ur13,calc_mod(ua15,ua6));
  ur15 = max(ur14,calc_mod(ua16,ua6));

  ur7 = max(ur6,calc_mod(ua8,ua7));
  ur8 = max(ur7,calc_mod(ua9,ua7));
  ur9 = max(ur8,calc_mod(ua10,ua7));
  ur10 = max(ur9,calc_mod(ua11,ua7));
  ur11 = max(ur10,calc_mod(ua12,ua7));
  ur12 = max(ur11,calc_mod(ua13,ua7));
  ur13 = max(ur12,calc_mod(ua14,ua7));
  ur14 = max(ur13,calc_mod(ua15,ua7));
  ur15 = max(ur14,calc_mod(ua16,ua7));

  ur8 = max(ur7,calc_mod(ua9,ua8));
  ur9 = max(ur8,calc_mod(ua10,ua8));
  ur10 = max(ur9,calc_mod(ua11,ua8));
  ur11 = max(ur10,calc_mod(ua12,ua8));
  ur12 = max(ur11,calc_mod(ua13,ua8));
  ur13 = max(ur12,calc_mod(ua14,ua8));
  ur14 = max(ur13,calc_mod(ua15,ua8));
  ur15 = max(ur14,calc_mod(ua16,ua8));

  ur9 = max(ur8,calc_mod(ua10,ua9));
  ur10 = max(ur9,calc_mod(ua11,ua9));
  ur11 = max(ur10,calc_mod(ua12,ua9));
  ur12 = max(ur11,calc_mod(ua13,ua9));
  ur13 = max(ur12,calc_mod(ua14,ua9));
  ur14 = max(ur13,calc_mod(ua15,ua9));
  ur15 = max(ur14,calc_mod(ua16,ua9));

  ur10 = max(ur9,calc_mod(ua11,ua10));
  ur11 = max(ur10,calc_mod(ua12,ua10));
  ur12 = max(ur11,calc_mod(ua13,ua10));
  ur13 = max(ur12,calc_mod(ua14,ua10));
  ur14 = max(ur13,calc_mod(ua15,ua10));
  ur15 = max(ur14,calc_mod(ua16,ua10));

  ur11 = max(ur10,calc_mod(ua12,ua11));
  ur12 = max(ur11,calc_mod(ua13,ua11));
  ur13 = max(ur12,calc_mod(ua14,ua11));
  ur14 = max(ur13,calc_mod(ua15,ua11));
  ur15 = max(ur14,calc_mod(ua16,ua11));

  ur12 = max(ur11,calc_mod(ua13,ua12));
  ur13 = max(ur12,calc_mod(ua14,ua12));
  ur14 = max(ur13,calc_mod(ua15,ua12));
  ur15 = max(ur14,calc_mod(ua16,ua12));

  ur13 = max(ur12,calc_mod(ua14,ua13));
  ur14 = max(ur13,calc_mod(ua15,ua13));
  ur15 = max(ur14,calc_mod(ua16,ua13));

  ur14 = max(ur13,calc_mod(ua15,ua14));
  ur15 = max(ur14,calc_mod(ua16,ua14));

  ur15 = max(ur14,calc_mod(ua16,ua15));

  umod = ur15;

  uans = max(max(max(max(add,sub),mul),div),mod);  

  if (ans == uans)
    printf("OK\n");
  else
    printf("NG\n");
}
