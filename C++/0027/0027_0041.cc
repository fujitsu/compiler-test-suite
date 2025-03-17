#include <stdio.h>

#define NN 15
typedef unsigned long long test_t;

void sll_sll_u8_2(const test_t input[], const test_t ans[]) {
  test_t tmp, res;

  for (int i = 0; i < NN; i++) {
    tmp = input[i] >> 1;
    res = tmp >> 1;
    if (res != ans[i]) {
      printf("NG %d %llx >> 2 = %llx %llx\n", __LINE__, input[i], res, ans[i]);
    }
  }
}

void sll_sll_u8_16(const test_t input[], const test_t ans[]) {
  test_t tmp, res;

  for (int i = 0; i < NN; i++) {
    tmp = input[i] >> 7;
    res = tmp >> 9;
    if (res != ans[i]) {
      printf("NG %d\n", __LINE__);
    }
  }
}

void sll_sll_u8_31(const test_t input[], const test_t ans[]) {
  test_t tmp, res;

  for (int i = 0; i < NN; i++) {
    tmp = input[i] >> 20;
    res = tmp >> 11;
    if (res != ans[i]) {
      printf("NG %d\n", __LINE__);
    }
  }
}

void sll_sll_u8_32(const test_t input[], const test_t ans[]) {
  test_t tmp, res;

  for (int i = 0; i < NN; i++) {
    tmp = input[i] >> 20;
    res = tmp >> 12;
    if (res != ans[i]) {
      printf("NG %d\n", __LINE__);
    }
  }
}

void sll_sll_u8_33(const test_t input[], const test_t ans[]) {
  test_t tmp, res;

  for (int i = 0; i < NN; i++) {
    tmp = input[i] >> 20;
    res = tmp >> 13;
    if (res != ans[i]) {
      printf("NG %d\n", __LINE__);
    }
  }
}

const test_t sll_sll_u8_input[15] = {0,
                                     1,
                                     2,
                                     0xff,
                                     0xffe,
                                     0xffff,
                                     0xffff1,
                                     0xf0f0f0f0ULL,
                                     0xfffffffeULL,
                                     0xffffffffULL,
                                     0x100000000ULL,
                                     0x2000000000ULL,
                                     0xf0f0f0f0f0f0f0f0ULL,
                                     0xfffffffffffffffeULL,
                                     0xffffffffffffffffULL};

#define SHIFT2MAC(x) ((x) >> 1 >> 1)
const test_t sll_sll_u8_2_ans[15] = {SHIFT2MAC(0ULL),
                                     SHIFT2MAC(1ULL),
                                     SHIFT2MAC(2ULL),
                                     SHIFT2MAC(0xffULL),
                                     SHIFT2MAC(0xffeULL),
                                     SHIFT2MAC(0xffffULL),
                                     SHIFT2MAC(0xffff1ULL),
                                     SHIFT2MAC(0xf0f0f0f0ULL),
                                     SHIFT2MAC(0xfffffffeULL),
                                     SHIFT2MAC(0xffffffffULL),
                                     SHIFT2MAC(0x100000000ULL),
                                     SHIFT2MAC(0x2000000000ULL),
                                     SHIFT2MAC(0xf0f0f0f0f0f0f0f0ULL),
                                     SHIFT2MAC(0xfffffffffffffffeULL),
                                     SHIFT2MAC(0xffffffffffffffffULL)};

#define SHIFT16MAC(x) ((x) >> 7 >> 9)
const test_t sll_sll_u8_16_ans[15] = {SHIFT16MAC(0ULL),
                                      SHIFT16MAC(1ULL),
                                      SHIFT16MAC(2ULL),
                                      SHIFT16MAC(0xffULL),
                                      SHIFT16MAC(0xffeULL),
                                      SHIFT16MAC(0xffffULL),
                                      SHIFT16MAC(0xffff1ULL),
                                      SHIFT16MAC(0xf0f0f0f0ULL),
                                      SHIFT16MAC(0xfffffffeULL),
                                      SHIFT16MAC(0xffffffffULL),
                                      SHIFT16MAC(0x100000000ULL),
                                      SHIFT16MAC(0x2000000000ULL),
                                      SHIFT16MAC(0xf0f0f0f0f0f0f0f0ULL),
                                      SHIFT16MAC(0xfffffffffffffffeULL),
                                      SHIFT16MAC(0xffffffffffffffffULL)};

#define SHIFT31MAC(x) ((x) >> 20 >> 11)
const test_t sll_sll_u8_31_ans[15] = {SHIFT31MAC(0ULL),
                                      SHIFT31MAC(1ULL),
                                      SHIFT31MAC(2ULL),
                                      SHIFT31MAC(0xffULL),
                                      SHIFT31MAC(0xffeULL),
                                      SHIFT31MAC(0xffffULL),
                                      SHIFT31MAC(0xffff1ULL),
                                      SHIFT31MAC(0xf0f0f0f0ULL),
                                      SHIFT31MAC(0xfffffffeULL),
                                      SHIFT31MAC(0xffffffffULL),
                                      SHIFT31MAC(0x100000000ULL),
                                      SHIFT31MAC(0x2000000000ULL),
                                      SHIFT31MAC(0xf0f0f0f0f0f0f0f0ULL),
                                      SHIFT31MAC(0xfffffffffffffffeULL),
                                      SHIFT31MAC(0xffffffffffffffffULL)};

#define SHIFT32MAC(x) ((x) >> 20 >> 12)
const test_t sll_sll_u8_32_ans[15] = {SHIFT32MAC(0ULL),
                                      SHIFT32MAC(1ULL),
                                      SHIFT32MAC(2ULL),
                                      SHIFT32MAC(0xffULL),
                                      SHIFT32MAC(0xffeULL),
                                      SHIFT32MAC(0xffffULL),
                                      SHIFT32MAC(0xffff1ULL),
                                      SHIFT32MAC(0xf0f0f0f0ULL),
                                      SHIFT32MAC(0xfffffffeULL),
                                      SHIFT32MAC(0xffffffffULL),
                                      SHIFT32MAC(0x100000000ULL),
                                      SHIFT32MAC(0x2000000000ULL),
                                      SHIFT32MAC(0xf0f0f0f0f0f0f0f0ULL),
                                      SHIFT32MAC(0xfffffffffffffffeULL),
                                      SHIFT32MAC(0xffffffffffffffffULL)};

#define SHIFT33MAC(x) ((x) >> 20 >> 13)
const test_t sll_sll_u8_33_ans[15] = {SHIFT33MAC(0ULL),
                                      SHIFT33MAC(1ULL),
                                      SHIFT33MAC(2ULL),
                                      SHIFT33MAC(0xffULL),
                                      SHIFT33MAC(0xffeULL),
                                      SHIFT33MAC(0xffffULL),
                                      SHIFT33MAC(0xffff1ULL),
                                      SHIFT33MAC(0xf0f0f0f0ULL),
                                      SHIFT33MAC(0xfffffffeULL),
                                      SHIFT33MAC(0xffffffffULL),
                                      SHIFT33MAC(0x100000000ULL),
                                      SHIFT33MAC(0x2000000000ULL),
                                      SHIFT33MAC(0xf0f0f0f0f0f0f0f0ULL),
                                      SHIFT33MAC(0xfffffffffffffffeULL),
                                      SHIFT33MAC(0xffffffffffffffffULL)};

int main(void) {
  sll_sll_u8_2(sll_sll_u8_input, sll_sll_u8_2_ans);
  sll_sll_u8_16(sll_sll_u8_input, sll_sll_u8_16_ans);
  sll_sll_u8_31(sll_sll_u8_input, sll_sll_u8_31_ans);
  sll_sll_u8_32(sll_sll_u8_input, sll_sll_u8_32_ans);
  sll_sll_u8_33(sll_sll_u8_input, sll_sll_u8_33_ans);

  printf("PASS\n");

  return 0;
}
