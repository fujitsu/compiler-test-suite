
#include <stdio.h>

#define LOOP_CONST 64 
#define TRUE_RES 1
#define FALSE_RES 0

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
int test_loop_no_escape_pt1_##test_type(test_type flag, int lmax, test_type d_val) {\
  int i,j,k;\
  test_type d_data1[LOOP_CONST][LOOP_CONST][LOOP_CONST];\
  test_type d_data2[LOOP_CONST][LOOP_CONST][LOOP_CONST];\
  initialize_##test_type(d_data1);\
  initialize_##test_type(d_data2);\
  for(k=0; k<LOOP_CONST; k++) {\
    for(j=0; j<LOOP_CONST; j++) {\
      for(i=0; i<LOOP_CONST; i++) {\
        if (flag == i) {\
          d_data1[k][j][i] = (test_type)TRUE_RES;\
        }\
        d_data2[k][j][i] = (test_type)TRUE_RES;\
      }\
    }\
  }\
  for(k=0; k<LOOP_CONST; k++) {\
    for(j=0; j<LOOP_CONST; j++) {\
      for(i=0;i<LOOP_CONST; i++) {\
        if (lmax >= 0){\
          if (flag != i) {\
            if (d_data1[k][j][i] != (test_type)FALSE_RES) {\
              return FALSE_RES;\
            }\
          } else {\
            if (d_data1[k][j][i] != (test_type)TRUE_RES) {\
                return FALSE_RES;\
            }\
          }\
          if(d_data2[k][j][i] != (test_type)TRUE_RES){\
	    return FALSE_RES;\
          }\
	}\
      }\
    }\
  }\
  return TRUE_RES;\
}

#define TEST_LOOP_NO_ESCAPE_PT2(test_type) \
int test_loop_no_escape_pt2_##test_type(test_type flag, int lmax, test_type d_val) {\
  int i,j,k;\
  test_type d_data1[LOOP_CONST][LOOP_CONST][LOOP_CONST];\
  test_type d_data2[LOOP_CONST][LOOP_CONST][LOOP_CONST];\
  initialize_##test_type(d_data1);\
  initialize_##test_type(d_data2);\
  for(k=0; k<lmax; k++) {\
    for(j=0; j<lmax; j++) {\
      for(i=0; i<lmax; i++) {\
        if (flag == k) {\
          d_data1[k][j][i] = (test_type)TRUE_RES;\
        }\
        d_data2[k][j][i] = (test_type)TRUE_RES;\
      }\
    }\
  }\
  for(k=0; k<LOOP_CONST; k++) {\
    for(j=0; j<LOOP_CONST; j++) {\
      for(i=0;i<LOOP_CONST; i++) {\
        if (lmax >= 0){\
          if (flag != k) {\
            if (d_data1[k][j][i] != (test_type)FALSE_RES) {\
              return FALSE_RES;\
            }\
          } else {\
            if (d_data1[k][j][i] != (test_type)TRUE_RES) {\
                return FALSE_RES;\
            }\
          }\
          if(d_data2[k][j][i] != (test_type)TRUE_RES){\
	    return FALSE_RES;\
          }\
        } else {\
          if (d_data1[k][j][i] != (test_type)FALSE_RES || d_data2[k][j][i] != (test_type)FALSE_RES){\
            return FALSE_RES;\
          }\
        }\
      }\
    }\
  }\
  return TRUE_RES;\
}

#define CALL_TEST_LOOP_NO_ESCAPE(test_type,flag_value, loop_max, comp_value) \
if (!test_loop_no_escape_pt1_##test_type(flag_value,loop_max,(test_type)comp_value) ||\
    !test_loop_no_escape_pt2_##test_type(flag_value,loop_max,(test_type)comp_value)) puts("NG : "#test_type);

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
  CALL_TEST_LOOP_NO_ESCAPE(float, 8, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(float, 128, LOOP_CONST, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(double, 8, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(double, 128, LOOP_CONST, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LD, 8, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LD, 128, LOOP_CONST, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(char, 8, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(char, 128, LOOP_CONST, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(SI, 8, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(SI, 128, LOOP_CONST, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(int, 8, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(int, 128, LOOP_CONST, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LI, 8, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LI, 128, LOOP_CONST, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LLI, 8, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LLI, 128, LOOP_CONST, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UC, 8, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UC, 128, LOOP_CONST, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(US, 8, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(US, 128, LOOP_CONST, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UI, 8, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UI, 128, LOOP_CONST, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UL, 8, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UL, 128, LOOP_CONST, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(ULL, 8, LOOP_CONST, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(ULL, 128, LOOP_CONST, FALSE_RES);

  CALL_TEST_LOOP_NO_ESCAPE(float, 8, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(float, 128, -1, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(double, 8, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(double, 128, -1, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LD, 8, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LD, 128, -1, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(char, 8, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(char, 128, -1, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(SI, 8, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(SI, 128, -1, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(int, 8, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(int, 128, -1, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LI, 8, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LI, 128, -1, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LLI, 8, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(LLI, 128, -1, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UC, 8, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UC, 128, -1, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(US, 8, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(US, 128, -1, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UI, 8, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UI, 128, -1, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UL, 8, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(UL, 128, -1, FALSE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(ULL, 8, -1, TRUE_RES);
  CALL_TEST_LOOP_NO_ESCAPE(ULL, 128, -1, FALSE_RES);

  puts("test finish");
  return 0;
}
