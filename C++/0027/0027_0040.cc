#include <stdio.h>

typedef unsigned int test_t;

void sll_sll_u4_0(const test_t input[], const test_t ans[]) {
  test_t tmp, res;

  for (int i = 0; i < 10; i++) {
    tmp = input[i] >> 1;
    res = tmp >> -1;
    if (res != ans[i]) {
      printf("NG %d\n", __LINE__);
    }
  }
}

void sll_sll_u4_2(const test_t input[], const test_t ans[]) {
  test_t tmp, res;

  for (int i = 0; i < 10; i++) {
    tmp = input[i] >> 1;
    res = tmp >> 1;
    if (res != ans[i]) {
      printf("NG %d\n", __LINE__);
    }
  }
}

void sll_sll_u4_16(const test_t input[], const test_t ans[]) {
  test_t tmp, res;

  for (int i = 0; i < 10; i++) {
    tmp = input[i] >> 7;
    res = tmp >> 9;
    if (res != ans[i]) {
      printf("NG %d\n", __LINE__);
    }
  }
}

void sll_sll_u4_31(const test_t input[], const test_t ans[]) {
  test_t tmp, res;

  for (int i = 0; i < 10; i++) {
    tmp = input[i] >> 20;
    res = tmp >> 11;
    if (res != ans[i]) {
      printf("NG %d\n", __LINE__);
    }
  }
}

void sll_sll_u4_32(const test_t input[], const test_t ans[]) {
  test_t tmp, res;

  for (int i = 0; i < 10; i++) {
    tmp = input[i] >> 20;
    res = tmp >> 12;
    if (res != ans[i]) {
      printf("NG %d\n", __LINE__);
    }
  }
}

void sll_sll_u4_33(const test_t input[], const test_t ans[]) {
  test_t tmp, res;

  for (int i = 0; i < 10; i++) {
    tmp = input[i] >> 20;
    res = tmp >> 13;
    if (res != ans[i]) {
      printf("NG %d\n", __LINE__);
    }
  }
}

const test_t sll_sll_u4_input[10] = {
    0, 1, 2, 0xff, 0xffe, 0xffff, 0xffff1, 0xf0f0f0f0, 0xfffffffe, 0xffffffff};

#ifndef __clang__
#define SHIFT0MAC(x) ((x) >> 1 >> -1)
const test_t sll_sll_u4_0_ans[10] = {
    SHIFT0MAC(0),         SHIFT0MAC(1),          SHIFT0MAC(2),
    SHIFT0MAC(0xff),      SHIFT0MAC(0xffe),      SHIFT0MAC(0xffff),
    SHIFT0MAC(0xffff1),   SHIFT0MAC(0xf0f0f0f0), SHIFT0MAC(0xfffffffe),
    SHIFT0MAC(0xffffffff)};
#endif
#define SHIFT2MAC(x) ((x) >> 1 >> 1)
const test_t sll_sll_u4_2_ans[10] = {
    SHIFT2MAC(0),         SHIFT2MAC(1),          SHIFT2MAC(2),
    SHIFT2MAC(0xff),      SHIFT2MAC(0xffe),      SHIFT2MAC(0xffff),
    SHIFT2MAC(0xffff1),   SHIFT2MAC(0xf0f0f0f0), SHIFT2MAC(0xfffffffe),
    SHIFT2MAC(0xffffffff)};

#define SHIFT16MAC(x) ((x) >> 7 >> 9)
const test_t sll_sll_u4_16_ans[10] = {
    SHIFT16MAC(0),         SHIFT16MAC(1),          SHIFT16MAC(2),
    SHIFT16MAC(0xff),      SHIFT16MAC(0xffe),      SHIFT16MAC(0xffff),
    SHIFT16MAC(0xffff1),   SHIFT16MAC(0xf0f0f0f0), SHIFT16MAC(0xfffffffe),
    SHIFT16MAC(0xffffffff)};

#define SHIFT31MAC(x) ((x) >> 20 >> 11)
const test_t sll_sll_u4_31_ans[10] = {
    SHIFT31MAC(0),         SHIFT31MAC(1),          SHIFT31MAC(2),
    SHIFT31MAC(0xff),      SHIFT31MAC(0xffe),      SHIFT31MAC(0xffff),
    SHIFT31MAC(0xffff1),   SHIFT31MAC(0xf0f0f0f0), SHIFT31MAC(0xfffffffe),
    SHIFT31MAC(0xffffffff)};

#define SHIFT32MAC(x) ((x) >> 20 >> 12)
const test_t sll_sll_u4_32_ans[10] = {
    SHIFT32MAC(0),         SHIFT32MAC(1),          SHIFT32MAC(2),
    SHIFT32MAC(0xff),      SHIFT32MAC(0xffe),      SHIFT32MAC(0xffff),
    SHIFT32MAC(0xffff1),   SHIFT32MAC(0xf0f0f0f0), SHIFT32MAC(0xfffffffe),
    SHIFT32MAC(0xffffffff)};

#define SHIFT33MAC(x) ((x) >> 20 >> 13)
const test_t sll_sll_u4_33_ans[10] = {
    SHIFT33MAC(0),         SHIFT33MAC(1),          SHIFT33MAC(2),
    SHIFT33MAC(0xff),      SHIFT33MAC(0xffe),      SHIFT33MAC(0xffff),
    SHIFT33MAC(0xffff1),   SHIFT33MAC(0xf0f0f0f0), SHIFT33MAC(0xfffffffe),
    SHIFT33MAC(0xffffffff)};

int main(void) {
#ifndef __clang__
  sll_sll_u4_0(sll_sll_u4_input, sll_sll_u4_0_ans);
#endif
  sll_sll_u4_2(sll_sll_u4_input, sll_sll_u4_2_ans);
  sll_sll_u4_16(sll_sll_u4_input, sll_sll_u4_16_ans);
  sll_sll_u4_31(sll_sll_u4_input, sll_sll_u4_31_ans);
  sll_sll_u4_32(sll_sll_u4_input, sll_sll_u4_32_ans);
  sll_sll_u4_33(sll_sll_u4_input, sll_sll_u4_33_ans);

  printf("PASS\n");

  return 0;
}
