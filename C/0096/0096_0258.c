
#include <stdio.h>

#define LOOP_CONST 256
#define TRUE_RES 1
#define FALSE_RES 0

#define INITIALIZE_METHOD(init_type) \
void initialize_##init_type(init_type data[LOOP_CONST][LOOP_CONST]) {\
  int i,j;\
  for(j=0;j<LOOP_CONST;j++) {\
    for(i=0;i<LOOP_CONST;i++) {\
      data[j][i] = (init_type)FALSE_RES;\
    }\
  }\
}

#define TEST_LOOP_NO_ESCAPE_PT1(test_type) \
int test_loop_no_escape_pt1_##test_type(test_type flag1, test_type flag2, int *i_data, int lmax, test_type d_val) {\
  int i,j;\
  test_type d_data[LOOP_CONST][LOOP_CONST];\
  initialize_##test_type(d_data);\
  for(j=0; j<LOOP_CONST; j++) {\
    i_data[j] = j;\
    for(i=0; i<LOOP_CONST; i++) {\
      if (flag1 == flag2) {\
        d_data[j][i] = (test_type)TRUE_RES;\
      }\
    }\
  }\
  for(j=0; j<LOOP_CONST; j++) {\
    for(i=0;i<LOOP_CONST;i++) {\
      if (d_data[j][i] != d_val) {\
        return FALSE_RES;\
      }\
    }\
  }\
  return TRUE_RES;\
}

#define TEST_LOOP_NO_ESCAPE_PT2(test_type) \
int test_loop_no_escape_pt2_##test_type(test_type flag1, test_type flag2, int *i_data, int lmax, test_type d_val) {\
  int i,j;\
  test_type d_data[LOOP_CONST][LOOP_CONST];\
  initialize_##test_type(d_data);\
  for(j=0; j<lmax; j++) {\
    i_data[j] = j;\
    for(i=0; i<lmax; i++) {\
      if (flag1 == flag2) {\
        d_data[j][i] = (test_type)TRUE_RES;\
      }\
    }\
  }\
  for(j=0; j<LOOP_CONST; j++) {\
    for(i=0;i<LOOP_CONST;i++) {\
      if (lmax > 0) {\
        if (d_data[j][i] != d_val) {\
          return FALSE_RES;\
        }\
      } else {\
         if (d_data[j][i] != (test_type)FALSE_RES) {\
           return FALSE_RES;\
         }\
      }\
    }\
  }\
  return TRUE_RES;\
}

#define TEST_LOOP_NO_ESCAPE_PT3(test_type) \
int test_loop_no_escape_pt3_##test_type(test_type flag1, test_type flag2, int *i_data, int lmax, test_type d_val) {\
  int i,j;\
  test_type d_data[LOOP_CONST][LOOP_CONST];\
  initialize_##test_type(d_data);\
  for(j=0; j<lmax; j++) {\
    i_data[j] = j;\
    for(i=0; i<LOOP_CONST; i++) {\
      if (flag1 == flag2) {\
        d_data[j][i] = (test_type)TRUE_RES;\
      }\
    }\
  }\
  for(j=0; j<LOOP_CONST; j++) {\
    for(i=0;i<LOOP_CONST;i++) {\
      if (lmax > 0) {\
        if (d_data[j][i] != d_val) {\
          return FALSE_RES;\
        }\
      } else {\
        if (d_data[j][i] != (test_type)FALSE_RES) {\
          return FALSE_RES;\
        }\
      }\
    }\
  }\
  return TRUE_RES;\
}

#define TEST_LOOP_NO_ESCAPE_PT4(test_type) \
int test_loop_no_escape_pt4_##test_type(test_type flag1, test_type flag2, int *i_data, int lmax, test_type d_val) {\
  int i,j;\
  test_type d_data[LOOP_CONST][LOOP_CONST];\
  initialize_##test_type(d_data);\
  for(j=0; j<LOOP_CONST; j++) {\
    i_data[j] = j;\
    for(i=0; i<lmax; i++) {\
      if (flag1 == flag2) {\
        d_data[j][i] = (test_type)TRUE_RES;\
      }\
    }\
  }\
  for(j=0; j<LOOP_CONST; j++) {\
    for(i=0;i<LOOP_CONST;i++) {\
      if (lmax > 0) {\
        if (d_data[j][i] != d_val) {\
          return FALSE_RES;\
        }\
      } else {\
        if (d_data[j][i] != (test_type)FALSE_RES) {\
          return FALSE_RES;\
        }\
      }\
    }\
  }\
  return TRUE_RES;\
}

#define CALL_TEST_LOOP_NO_ESCAPE(test_type, flag_value1, flag_value2, int_data, loop_max, comp_value) \
if (!test_loop_no_escape_pt1_##test_type(flag_value1,flag_value2,int_data,loop_max,(test_type)comp_value) ||\
    !test_loop_no_escape_pt2_##test_type(flag_value1,flag_value2,int_data,loop_max,(test_type)comp_value) ||\
    !test_loop_no_escape_pt3_##test_type(flag_value1,flag_value2,int_data,loop_max,(test_type)comp_value) ||\
    !test_loop_no_escape_pt4_##test_type(flag_value1,flag_value2,int_data,loop_max,(test_type)comp_value)) puts("NG : "#test_type);

INITIALIZE_METHOD(float);
TEST_LOOP_NO_ESCAPE_PT1(float);
TEST_LOOP_NO_ESCAPE_PT2(float);
TEST_LOOP_NO_ESCAPE_PT3(float);
TEST_LOOP_NO_ESCAPE_PT4(float);

INITIALIZE_METHOD(double);
TEST_LOOP_NO_ESCAPE_PT1(double);
TEST_LOOP_NO_ESCAPE_PT2(double);
TEST_LOOP_NO_ESCAPE_PT3(double);
TEST_LOOP_NO_ESCAPE_PT4(double);

typedef long double LD;
INITIALIZE_METHOD(LD);
TEST_LOOP_NO_ESCAPE_PT1(LD);
TEST_LOOP_NO_ESCAPE_PT2(LD);
TEST_LOOP_NO_ESCAPE_PT3(LD);
TEST_LOOP_NO_ESCAPE_PT4(LD);

INITIALIZE_METHOD(char);
TEST_LOOP_NO_ESCAPE_PT1(char);
TEST_LOOP_NO_ESCAPE_PT2(char);
TEST_LOOP_NO_ESCAPE_PT3(char);
TEST_LOOP_NO_ESCAPE_PT4(char);

typedef short int SI;
INITIALIZE_METHOD(SI);
TEST_LOOP_NO_ESCAPE_PT1(SI);
TEST_LOOP_NO_ESCAPE_PT2(SI);
TEST_LOOP_NO_ESCAPE_PT3(SI);
TEST_LOOP_NO_ESCAPE_PT4(SI);

INITIALIZE_METHOD(int);
TEST_LOOP_NO_ESCAPE_PT1(int);
TEST_LOOP_NO_ESCAPE_PT2(int);
TEST_LOOP_NO_ESCAPE_PT3(int);
TEST_LOOP_NO_ESCAPE_PT4(int);

typedef long int LI;
INITIALIZE_METHOD(LI);
TEST_LOOP_NO_ESCAPE_PT1(LI);
TEST_LOOP_NO_ESCAPE_PT2(LI);
TEST_LOOP_NO_ESCAPE_PT3(LI);
TEST_LOOP_NO_ESCAPE_PT4(LI);

typedef long long int LLI;
INITIALIZE_METHOD(LLI);
TEST_LOOP_NO_ESCAPE_PT1(LLI);
TEST_LOOP_NO_ESCAPE_PT2(LLI);
TEST_LOOP_NO_ESCAPE_PT3(LLI);
TEST_LOOP_NO_ESCAPE_PT4(LLI);

typedef unsigned char UC;
INITIALIZE_METHOD(UC);
TEST_LOOP_NO_ESCAPE_PT1(UC);
TEST_LOOP_NO_ESCAPE_PT2(UC);
TEST_LOOP_NO_ESCAPE_PT3(UC);
TEST_LOOP_NO_ESCAPE_PT4(UC);

typedef unsigned short int US;
INITIALIZE_METHOD(US);
TEST_LOOP_NO_ESCAPE_PT1(US);
TEST_LOOP_NO_ESCAPE_PT2(US);
TEST_LOOP_NO_ESCAPE_PT3(US);
TEST_LOOP_NO_ESCAPE_PT4(US);

typedef unsigned int UI;
INITIALIZE_METHOD(UI);
TEST_LOOP_NO_ESCAPE_PT1(UI);
TEST_LOOP_NO_ESCAPE_PT2(UI);
TEST_LOOP_NO_ESCAPE_PT3(UI);
TEST_LOOP_NO_ESCAPE_PT4(UI);

typedef unsigned long int UL;
INITIALIZE_METHOD(UL);
TEST_LOOP_NO_ESCAPE_PT1(UL);
TEST_LOOP_NO_ESCAPE_PT2(UL);
TEST_LOOP_NO_ESCAPE_PT3(UL);
TEST_LOOP_NO_ESCAPE_PT4(UL);

typedef unsigned long long int ULL;
INITIALIZE_METHOD(ULL);
TEST_LOOP_NO_ESCAPE_PT1(ULL);
TEST_LOOP_NO_ESCAPE_PT2(ULL);
TEST_LOOP_NO_ESCAPE_PT3(ULL);
TEST_LOOP_NO_ESCAPE_PT4(ULL);

int main() {
  int id[LOOP_CONST];
  CALL_TEST_LOOP_NO_ESCAPE(float, 1, 1, id, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(float, 2, 3, id, LOOP_CONST, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(double, 1, 1, id, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(double, 2, 3, id, LOOP_CONST, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LD, 1, 1, id, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LD, 2, 3, id, LOOP_CONST, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(char, 1, 1, id, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(char, 2, 3, id, LOOP_CONST, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(SI, 1, 1, id, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(SI, 2, 3, id, LOOP_CONST, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(int, 1, 1, id, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(int, 2, 3, id, LOOP_CONST, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LI, 1, 1, id, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LI, 2, 3, id, LOOP_CONST, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LLI, 1, 1, id, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LLI, 2, 3, id, LOOP_CONST, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UC, 1, 1, id, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UC, 2, 3, id, LOOP_CONST, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(US, 1, 1, id, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(US, 2, 3, id, LOOP_CONST, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UI, 1, 1, id, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UI, 2, 3, id, LOOP_CONST, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UL, 1, 1, id, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UL, 2, 3, id, LOOP_CONST, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(ULL, 1, 1, id, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(ULL, 2, 3, id, LOOP_CONST, FALSE_RES);

  CALL_TEST_LOOP_NO_ESCAPE(float, 1, 1, id, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(float, 2, 3, id, -1, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(double, 1, 1, id, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(double, 2, 3, id, -1, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LD, 1, 1, id, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LD, 2, 3, id, -1, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(char, 1, 1, id, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(char, 2, 3, id, -1, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(SI, 1, 1, id, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(SI, 2, 3, id, -1, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(int, 1, 1, id, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(int, 2, 3, id, -1, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LI, 1, 1, id, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LI, 2, 3, id, -1, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LLI, 1, 1, id, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LLI, 2, 3, id, -1, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UC, 1, 1, id, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UC, 2, 3, id, -1, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(US, 1, 1, id, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(US, 2, 3, id, -1, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UI, 1, 1, id, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UI, 2, 3, id, -1, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UL, 1, 1, id, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UL, 2, 3, id, -1, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(ULL, 1, 1, id, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(ULL, 2, 3, id, -1, FALSE_RES);

  puts("test finish");
  return 0;
}
