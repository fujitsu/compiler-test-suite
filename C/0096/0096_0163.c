
#include <stdio.h>

#define LOOP_CONST 256
#define TRUE_RES 1
#define FALSE_RES 0
#define IF_RES 1
#define ELSE_RES 2

#define INITIALIZE_METHOD(init_type) \
void initialize_##init_type(init_type *data, int num) {\
  int i;\
  for(i=0;i<num;i++) {\
    data[i] = (init_type)FALSE_RES;\
  }\
}

#define TEST_LOOP_NO_ESCAPE(test_type) \
int test_loop_no_escape_##test_type(test_type flag1, test_type flag2, test_type d_val) {\
  int i;\
  test_type d_data[LOOP_CONST];\
  initialize_##test_type(d_data, LOOP_CONST);\
  for(i=0; i<LOOP_CONST; i++) {\
    if (flag1 == flag2) {\
      d_data[i] = (test_type)IF_RES;\
    } else {\
      d_data[i] = (test_type)ELSE_RES;\
    }\
  }\
  for(i=0;i<LOOP_CONST;i++) {\
    if (d_data[i] != d_val) {\
      return FALSE_RES;\
    }\
  }\
  return TRUE_RES;\
}

#define CALL_TEST_LOOP_NO_ESCAPE(test_type,flag_value1, flag_value2, comp_value) \
if (!test_loop_no_escape_##test_type(flag_value1,flag_value2,(test_type)comp_value)) puts("NG");

INITIALIZE_METHOD(float);
TEST_LOOP_NO_ESCAPE(float);

INITIALIZE_METHOD(double);
TEST_LOOP_NO_ESCAPE(double);

typedef long double LD;
INITIALIZE_METHOD(LD);
TEST_LOOP_NO_ESCAPE(LD);

INITIALIZE_METHOD(char);
TEST_LOOP_NO_ESCAPE(char);

typedef short int SI;
INITIALIZE_METHOD(SI);
TEST_LOOP_NO_ESCAPE(SI);

INITIALIZE_METHOD(int);
TEST_LOOP_NO_ESCAPE(int);

typedef long int LI;
INITIALIZE_METHOD(LI);
TEST_LOOP_NO_ESCAPE(LI);

typedef long long int LLI;
INITIALIZE_METHOD(LLI);
TEST_LOOP_NO_ESCAPE(LLI);

typedef unsigned char UC;
INITIALIZE_METHOD(UC);
TEST_LOOP_NO_ESCAPE(UC);

typedef unsigned short int US;
INITIALIZE_METHOD(US);
TEST_LOOP_NO_ESCAPE(US);

typedef unsigned int UI;
INITIALIZE_METHOD(UI);
TEST_LOOP_NO_ESCAPE(UI);

typedef unsigned long int UL;
INITIALIZE_METHOD(UL);
TEST_LOOP_NO_ESCAPE(UL);

typedef unsigned long long int ULL;
INITIALIZE_METHOD(ULL);
TEST_LOOP_NO_ESCAPE(ULL);

int main() {
  CALL_TEST_LOOP_NO_ESCAPE(float, 1, 1, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(float, 2, 3, ELSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(double, 1, 1, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(double, 2, 3, ELSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LD, 1, 1, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LD, 2, 3, ELSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(char, 1, 1, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(char, 2, 3, ELSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(SI, 1, 1, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(SI, 2, 3, ELSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(int, 1, 1, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(int, 2, 3, ELSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LI, 1, 1, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LI, 2, 3, ELSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LLI, 1, 1, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LLI, 2, 3, ELSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UC, 1, 1, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UC, 2, 3, ELSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(US, 1, 1, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(US, 2, 3, ELSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UI, 1, 1, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UI, 2, 3, ELSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UL, 1, 1, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UL, 2, 3, ELSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(ULL, 1, 1, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(ULL, 2, 3, ELSE_RES);

  puts("test finish");
  return 0;
}
