
#include <stdio.h>

#define LOOP_CONST 64 
#define TRUE_RES 1
#define FALSE_RES 0
#define IF_RES 1
#define ELSEIF1_RES 2
#define ELSEIF2_RES 3

#define INITIALIZE_METHOD(init_type) \
void initialize_##init_type(init_type data[LOOP_CONST][LOOP_CONST][LOOP_CONST]) {\
  int i,j,k;\
  for(k=0;k<LOOP_CONST;k++) {\
    for(j=0;j<LOOP_CONST;j++) {\
      for(i=0;i<LOOP_CONST;i++) {\
        data[k][j][i] = (init_type)FALSE_RES;\
      }\
    }\
  }\
}

#define TEST_LOOP_NO_ESCAPE_PT1(test_type) \
int test_loop_no_escape_pt1_##test_type(test_type flag1, test_type flag2, int lmax, test_type d_val) {\
  int i,j,k;\
  test_type d_data1[LOOP_CONST][LOOP_CONST][LOOP_CONST];\
  test_type d_data2[LOOP_CONST][LOOP_CONST][LOOP_CONST];\
  initialize_##test_type(d_data1);\
  initialize_##test_type(d_data2);\
  for(k=0; k<LOOP_CONST; k++) {\
    for(j=0; j<LOOP_CONST; j++) {\
      for(i=0; i<LOOP_CONST; i++) {\
        if (flag1 > flag2) {\
          d_data1[k][j][i] = (test_type)IF_RES;\
        } else if (flag1 < flag2) {\
          d_data1[k][j][i] = (test_type)ELSEIF1_RES;\
        } else if (flag1 == flag2) {\
          d_data1[k][j][i] = (test_type)ELSEIF2_RES;\
        }\
        d_data2[k][j][i] = (test_type)IF_RES;\
      }\
    }\
  }\
  for(k=0; k<LOOP_CONST; k++) {\
    for(j=0;j<LOOP_CONST;j++) {\
      for(i=0;i<LOOP_CONST;i++) {\
        if (d_data1[k][j][i] != d_val || d_data2[k][j][i] != (test_type)IF_RES) {\
          return FALSE_RES;\
        }\
      }\
    }\
  }\
  return TRUE_RES;\
}

#define TEST_LOOP_NO_ESCAPE_PT2(test_type) \
int test_loop_no_escape_pt2_##test_type(test_type flag1, test_type flag2, int lmax, test_type d_val) {\
  int i,j,k;\
  test_type d_data1[LOOP_CONST][LOOP_CONST][LOOP_CONST];\
  test_type d_data2[LOOP_CONST][LOOP_CONST][LOOP_CONST];\
  initialize_##test_type(d_data1);\
  initialize_##test_type(d_data2);\
  for(k=0; k<lmax; k++) {\
    for(j=0; j<lmax; j++) {\
      for(i=0; i<lmax; i++) {\
        if (flag1 > flag2) {\
          d_data1[k][j][i] = (test_type)IF_RES;\
        } else if (flag1 < flag2) {\
          d_data1[k][j][i] = (test_type)ELSEIF1_RES;\
        } else if (flag1 == flag2) {\
          d_data1[k][j][i] = (test_type)ELSEIF2_RES;\
        }\
        d_data2[k][j][i] = (test_type)IF_RES;\
      }\
    }\
  }\
  for(k=0; k<LOOP_CONST; k++) {\
    for(j=0;j<LOOP_CONST;j++) {\
      for(i=0;i<LOOP_CONST;i++) {\
        if (lmax > 0) {\
          if (d_data1[k][j][i] != d_val || d_data2[k][j][i] != (test_type)IF_RES) {\
            return FALSE_RES;\
          }\
        } else {\
          if (d_data1[k][j][i] != (test_type)FALSE_RES || d_data2[k][j][i] != (test_type)FALSE_RES) {\
            return FALSE_RES;\
          }\
        }\
      }\
    }\
  }\
  return TRUE_RES;\
}

#define CALL_TEST_LOOP_NO_ESCAPE(test_type,flag_value1, flag_value2, loop_max, comp_value) \
if (!test_loop_no_escape_pt1_##test_type(flag_value1,flag_value2,loop_max,(test_type)comp_value) ||\
    !test_loop_no_escape_pt2_##test_type(flag_value1,flag_value2,loop_max,(test_type)comp_value)) puts("NG : "#test_type);

INITIALIZE_METHOD(float);
TEST_LOOP_NO_ESCAPE_PT1(float);
TEST_LOOP_NO_ESCAPE_PT2(float);

INITIALIZE_METHOD(double);
TEST_LOOP_NO_ESCAPE_PT1(double);
TEST_LOOP_NO_ESCAPE_PT2(double);

typedef long double LD;
INITIALIZE_METHOD(LD);
TEST_LOOP_NO_ESCAPE_PT1(LD);
TEST_LOOP_NO_ESCAPE_PT2(LD);

INITIALIZE_METHOD(char);
TEST_LOOP_NO_ESCAPE_PT1(char);
TEST_LOOP_NO_ESCAPE_PT2(char);

typedef short int SI;
INITIALIZE_METHOD(SI);
TEST_LOOP_NO_ESCAPE_PT1(SI);
TEST_LOOP_NO_ESCAPE_PT2(SI);

INITIALIZE_METHOD(int);
TEST_LOOP_NO_ESCAPE_PT1(int);
TEST_LOOP_NO_ESCAPE_PT2(int);

typedef long int LI;
INITIALIZE_METHOD(LI);
TEST_LOOP_NO_ESCAPE_PT1(LI);
TEST_LOOP_NO_ESCAPE_PT2(LI);

typedef long long int LLI;
INITIALIZE_METHOD(LLI);
TEST_LOOP_NO_ESCAPE_PT1(LLI);
TEST_LOOP_NO_ESCAPE_PT2(LLI);

typedef unsigned char UC;
INITIALIZE_METHOD(UC);
TEST_LOOP_NO_ESCAPE_PT1(UC);
TEST_LOOP_NO_ESCAPE_PT2(UC);

typedef unsigned short int US;
INITIALIZE_METHOD(US);
TEST_LOOP_NO_ESCAPE_PT1(US);
TEST_LOOP_NO_ESCAPE_PT2(US);

typedef unsigned int UI;
INITIALIZE_METHOD(UI);
TEST_LOOP_NO_ESCAPE_PT1(UI);
TEST_LOOP_NO_ESCAPE_PT2(UI);

typedef unsigned long int UL;
INITIALIZE_METHOD(UL);
TEST_LOOP_NO_ESCAPE_PT1(UL);
TEST_LOOP_NO_ESCAPE_PT2(UL);

typedef unsigned long long int ULL;
INITIALIZE_METHOD(ULL);
TEST_LOOP_NO_ESCAPE_PT1(ULL);
TEST_LOOP_NO_ESCAPE_PT2(ULL);

int main() {
  CALL_TEST_LOOP_NO_ESCAPE(float, 1, 1, LOOP_CONST, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(float, 2, 3, LOOP_CONST, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(float, 5, 4, LOOP_CONST, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(double, 1, 1, LOOP_CONST, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(double, 2, 3, LOOP_CONST, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(double, 5, 4, LOOP_CONST, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LD, 1, 1, LOOP_CONST, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LD, 2, 3, LOOP_CONST, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LD, 5, 4, LOOP_CONST, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(char, 1, 1, LOOP_CONST, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(char, 2, 3, LOOP_CONST, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(char, 5, 4, LOOP_CONST, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(SI, 1, 1, LOOP_CONST, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(SI, 2, 3, LOOP_CONST, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(SI, 5, 4, LOOP_CONST, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(int, 1, 1, LOOP_CONST, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(int, 2, 3, LOOP_CONST, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(int, 5, 4, LOOP_CONST, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LI, 1, 1, LOOP_CONST, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LI, 2, 3, LOOP_CONST, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LI, 5, 4, LOOP_CONST, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LLI, 1, 1, LOOP_CONST, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LLI, 2, 3, LOOP_CONST, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LLI, 5, 4, LOOP_CONST, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UC, 1, 1, LOOP_CONST, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UC, 2, 3, LOOP_CONST, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UC, 5, 4, LOOP_CONST, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(US, 1, 1, LOOP_CONST, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(US, 2, 3, LOOP_CONST, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(US, 5, 4, LOOP_CONST, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UI, 1, 1, LOOP_CONST, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UI, 2, 3, LOOP_CONST, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UI, 5, 4, LOOP_CONST, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UL, 1, 1, LOOP_CONST, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UL, 2, 3, LOOP_CONST, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UL, 5, 4, LOOP_CONST, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(ULL, 1, 1, LOOP_CONST, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(ULL, 2, 3, LOOP_CONST, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(ULL, 5, 4, LOOP_CONST, IF_RES);

  CALL_TEST_LOOP_NO_ESCAPE(float, 1, 1, -1, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(float, 2, 3, -1, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(float, 5, 4, -1, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(double, 1, 1, -1, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(double, 2, 3, -1, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(double, 5, 4, -1, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LD, 1, 1, -1, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LD, 2, 3, -1, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LD, 5, 4, -1, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(char, 1, 1, -1, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(char, 2, 3, -1, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(char, 5, 4, -1, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(SI, 1, 1, -1, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(SI, 2, 3, -1, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(SI, 5, 4, -1, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(int, 1, 1, -1, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(int, 2, 3, -1, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(int, 5, 4, -1, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LI, 1, 1, -1, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LI, 2, 3, -1, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LI, 5, 4, -1, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LLI, 1, 1, -1, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LLI, 2, 3, -1, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LLI, 5, 4, -1, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UC, 1, 1, -1, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UC, 2, 3, -1, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UC, 5, 4, -1, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(US, 1, 1, -1, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(US, 2, 3, -1, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(US, 5, 4, -1, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UI, 1, 1, -1, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UI, 2, 3, -1, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UI, 5, 4, -1, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UL, 1, 1, -1, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UL, 2, 3, -1, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UL, 5, 4, -1, IF_RES);
  CALL_TEST_LOOP_NO_ESCAPE(ULL, 1, 1, -1, ELSEIF2_RES);
  CALL_TEST_LOOP_NO_ESCAPE(ULL, 2, 3, -1, ELSEIF1_RES);
  CALL_TEST_LOOP_NO_ESCAPE(ULL, 5, 4, -1, IF_RES);

  puts("test finish");
  return 0;
}
