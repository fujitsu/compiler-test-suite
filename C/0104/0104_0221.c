
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#define MAINF main

#if defined(ROLL_TIMES)
#define N ((ROLL_TIMES>137)?ROLL_TIMES:137)
#elif defined(MOD)
#define N 197
#else
#define N 196
#endif

#ifndef SAME_CHECK

#define equal_check(val1, val2) (fabs(val1 - val2)/fabs(val1) >= 1.0e-7)
#define equal_check6(val1, val2) (fabs(val1 - val2)/fabs(val1) >= 1.0e-6)
#define same_check(val1, val2) ((val1 != val2) && !(isnan(val1) && isnan(val2)))
#else
#define equal_check(val1, val2) ((val1 != val2) && !(isnan(val1) && isnan(val2)))
#define equal_check6(val1, val2) ((val1 != val2) && !(isnan(val1) && isnan(val2)))
#define same_check(val1, val2) ((val1 != val2) && !(isnan(val1) && isnan(val2)))
#endif

void init(float * res, float * src1, float * src2) {
  int i;
  typedef union if32 {
    unsigned int ui;
    float f;
  } uif32;
  static const uif32 pzero = {0x0U};
  static const uif32 mzero = {0x80000000U};
  static const uif32 pinf  = {0x7f800000U};
  static const uif32 minf  = {0xff800000U};
  static const uif32 pnan  = {0x7fc00000U};
  static const uif32 mnan  = {0xffc00000U};

#define SET_REAL_VAL(indx, val1, val2, res1) src1[indx] = val1; src2[indx] = val2; res[indx] = res1
  SET_REAL_VAL(0,  1.001f,             1.0f,                     1.001000047e+00f);
  SET_REAL_VAL(1,  1.01f,              1.0f,                     1.009999990e+00f);
  SET_REAL_VAL(2,  2.0f,               1.0f,                     2.000000000e+00f);
  SET_REAL_VAL(3,  2.0f,               2.0f,                     4.000000000e+00f);
  SET_REAL_VAL(4,  0.1f,               1.1f,                     7.943282276e-02f);
  SET_REAL_VAL(5,  2.1f,               1.1f,                     2.261732340e+00f);
  SET_REAL_VAL(6,  2.1f,               100.1f,                   1.795349235e+32f);
  SET_REAL_VAL(7,  100.1f,             10.1f,                    1.600976187e+20f);
  SET_REAL_VAL(8,  1.1e30f,            1.000001f,                1.100072552e+30f);
  SET_REAL_VAL(9,  1.1e10f,            3.001f,                   1.362130722e+30f);
  SET_REAL_VAL(10,  1.0f,     0.0f,      1.0f);
  SET_REAL_VAL(11, 1.1234e2f,          12.3456f,                 2.065750565e+25f);
  SET_REAL_VAL(12, 1.1e-10f,          -3.228f,                   1.400824224e+32f);
  SET_REAL_VAL(13, 1.1e-10f,          -3.001f,                   7.687405904e+29f);
  SET_REAL_VAL(14, 1.1e-30f,          -1.00001f,                 9.097190971e+29f);
  SET_REAL_VAL(15, 1.1f,               7272.54f,                           pinf.f);
  SET_REAL_VAL(16, 1.00001f,           6.2e17f,                            pinf.f);
  SET_REAL_VAL(17, 1.00001f,           100.1f,                   1.001002908e+00f);
  SET_REAL_VAL(18, 1.1e30f,            1.000001f,                1.100072552e+30f);
						              
  SET_REAL_VAL(19, 1.1f,               1.1f,                     1.110534310e+00f);
  SET_REAL_VAL(20, 0.0f,               1.1f,                     0.000000000e+00f);
  SET_REAL_VAL(21, -1.1f,              1.1f,                               pnan.f);
						              
  SET_REAL_VAL(22, 1.1f,               2.0f,                     1.210000038e+00f);
  SET_REAL_VAL(23, 0.0f,               2.0f,                     0.000000000e+00f);
  SET_REAL_VAL(24, -1.1f,              2.0f,                     1.210000038e+00f);
			          		              
  SET_REAL_VAL(25, 1.1f,               3.0f,                     1.331000090e+00f);
  SET_REAL_VAL(26, 0.0f,               3.0f,                     0.000000000e+00f);
  SET_REAL_VAL(27, -1.1f,              3.0f,                    -1.331000090e+00f);
			          		              
  SET_REAL_VAL(28, 1.1f,               0.0f,                     1.000000000e+00f);
  SET_REAL_VAL(29, 0.0f,               0.0f,                     1.000000000e+00f);
  SET_REAL_VAL(30, -1.1f,              0.0f,                     1.000000000e+00f);
			          		              
  SET_REAL_VAL(31, 1.1f,              -1.1f,                     9.004674554e-01f);
  
  SET_REAL_VAL(32, 0.0f,              -1.1f,                               pinf.f);
  SET_REAL_VAL(33, -1.1f,             -1.1f,                               pnan.f);
			          		              
  SET_REAL_VAL(34, 1.1f,              -2.0f,                     8.264462352e-01f);
  SET_REAL_VAL(35, 0.0f,              -2.0f,                               pinf.f);
  SET_REAL_VAL(36, -1.1f,             -2.0f,                     8.264462352e-01f);
			          		              
  SET_REAL_VAL(37, 1.1f,              -3.0f,                     7.513147593e-01f);
  SET_REAL_VAL(38, 0.0f,              -3.0f,                               pinf.f);
  SET_REAL_VAL(39, -1.1f,             -3.0f,                    -7.513147593e-01f);
			          			      
  SET_REAL_VAL(40, -2.1f,              1.f,                     -2.099999905e+00f);
  SET_REAL_VAL(41, -2.1f,              2.f,                      4.409999371e+00f);
  SET_REAL_VAL(42, -2.1f,              50.f,                     1.291111515e+16f);
  SET_REAL_VAL(43, -2.1f,              51.f,                    -2.711334041e+16f);
  SET_REAL_VAL(44, -2.1f,             -1.f,                     -4.761904776e-01f);
  SET_REAL_VAL(45, -2.1f,             -2.f,                      2.267573923e-01f);
  SET_REAL_VAL(46, -2.1f,             -50.f,                     7.745264637e-17f);
  SET_REAL_VAL(47, -2.1f,             -51.f,                    -3.688221335e-17f);
  SET_REAL_VAL(48, -1.0f,              9007199254740992.f-1.f,   1.000000000e+00f);
  SET_REAL_VAL(49, -1.0f,             -9007199254740992.f+1.f,   1.000000000e+00f);
  SET_REAL_VAL(50, -1.0f,              9007199254740992.f,       1.000000000e+00f);
  SET_REAL_VAL(51, -1.0f,             -9007199254740992.f,       1.000000000e+00f);
  SET_REAL_VAL(52, -1.0f,              9007199254740992.f*2.f,   1.000000000e+00f);
  SET_REAL_VAL(53, -1.0f,             -9007199254740992.f*2.f,   1.000000000e+00f);
  SET_REAL_VAL(54, -1.0f,              1e20f,                    1.000000000e+00f);
  SET_REAL_VAL(55, -1.0f,             -1e20f,                    1.000000000e+00f);
			          
  SET_REAL_VAL(56, -1.0f,              9007199254740992.f/2.f-1.5f, 1.000000000e+00f);
  SET_REAL_VAL(57, -1.0f,             -9007199254740992.f/2.f+1.5f, 1.000000000e+00f);
			          
  SET_REAL_VAL(58, -1.0f,              9007199254740992.f/2.f,      1.000000000e+00f);
  SET_REAL_VAL(59, -1.0f,             -9007199254740992.f/2.f,      1.000000000e+00f);
			          			       
  SET_REAL_VAL(60, +1.1f,              1.e38f,                             pinf.f);
  SET_REAL_VAL(61, -1.1f,              1.e38f,                             minf.f);
  SET_REAL_VAL(62, -1.1f,              2.0f,                     1.210000038e+00f);
  SET_REAL_VAL(63, -1.1f,              1e10f,                              minf.f);
  SET_REAL_VAL(64, -1.1f,              1e20f,                              minf.f);
  SET_REAL_VAL(65, -1.1f,              1e30f,                              minf.f);

  SET_REAL_VAL(66, -1.00000000000001f, 9007199254740992.f*2.f,   1.000000000e+00f);
  SET_REAL_VAL(67, -1.00000000000001f, 1e19f,                    1.000000000e+00f);
  SET_REAL_VAL(68, -1.00000000000001f, 1e20f,                    1.000000000e+00f);

  SET_REAL_VAL(69,  1.0f,     0.0f,     1.0f);
  SET_REAL_VAL(70,  1.0f,     0.0f,     1.0f);
  SET_REAL_VAL(71,  1.0f,     0.0f,     1.0f);
  SET_REAL_VAL(72,  1.0f,     0.0f,     1.0f);
  SET_REAL_VAL(73,  1.0f,     0.0f,     1.0f);
  SET_REAL_VAL(74,  1.0f,     0.0f,     1.0f);
  SET_REAL_VAL(75,  1.0f,     0.0f,     1.0f);
  SET_REAL_VAL(76,  1.0f,     0.0f,     1.0f);
  SET_REAL_VAL(77,  1.0f,     0.0f,     1.0f);
  SET_REAL_VAL(78,  1.0f,     0.0f,     1.0f);
  SET_REAL_VAL(79,  1.0f,     0.0f,     1.0f);
  SET_REAL_VAL(80,  1.0f,     0.0f,     1.0f);
  SET_REAL_VAL(81,  1.0f,     0.0f,     1.0f);
  SET_REAL_VAL(82,  1.0f,     0.0f,     1.0f);
  SET_REAL_VAL(83,  1.0f,     0.0f,     1.0f);

  SET_REAL_VAL(84,  pzero.f, -3.0f,    pinf.f);
  SET_REAL_VAL(85,  1.0f,     0.0f,      1.0f);
  SET_REAL_VAL(86,  pzero.f, -4.0f,    pinf.f);
  SET_REAL_VAL(87,  mzero.f, -4.0f,    pinf.f);
  SET_REAL_VAL(88,  pzero.f, 5.0f,    pzero.f);
  SET_REAL_VAL(89,  mzero.f, 5.0f,    mzero.f);
  SET_REAL_VAL(90,  pzero.f, 6.0f,    pzero.f);
  SET_REAL_VAL(91,  mzero.f, 6.0f,    pzero.f);
  SET_REAL_VAL(92,  1.0f,     0.0f,     1.0f);
  SET_REAL_VAL(93,  1.0f,     0.0f,     1.0f);
  SET_REAL_VAL(94,  1.0f,     -1.0f,    1.0f);
  SET_REAL_VAL(95,  1.0f,     10.2f,    1.0f);
  SET_REAL_VAL(96,  1.0f,     0.0f,     1.0f);
  SET_REAL_VAL(97,  1.0f,     0.0f,     1.0f);
  SET_REAL_VAL(98,  1.0f,     0.0,      1.0f);
  SET_REAL_VAL(99,  1.0f,     0.0f,     1.0f);
  SET_REAL_VAL(100, 2.1f,     pzero.f,  1.0f);
  SET_REAL_VAL(101, -4.3f,    pzero.f,  1.0f);
  SET_REAL_VAL(102, pzero.f,  pzero.f,  1.0f);
  SET_REAL_VAL(103, mzero.f,  pzero.f,  1.0f);
  SET_REAL_VAL(104, pinf.f,   pzero.f,  1.0f);
  SET_REAL_VAL(105, minf.f,   pzero.f,  1.0f);
  SET_REAL_VAL(106, pnan.f,   pzero.f,  1.0f);
  SET_REAL_VAL(107, mnan.f,   pzero.f,  1.0f);
  SET_REAL_VAL(108, 2.1f,     mzero.f,  1.0f);
  SET_REAL_VAL(109, -4.3f,    mzero.f,  1.0f);
  SET_REAL_VAL(110, pzero.f,  mzero.f,  1.0f);
  SET_REAL_VAL(111, mzero.f,  mzero.f,  1.0f);
  SET_REAL_VAL(112, pinf.f,   mzero.f,  1.0f);
  SET_REAL_VAL(113, minf.f,   mzero.f,  1.0f);
  SET_REAL_VAL(114, pnan.f,   mzero.f,  1.0f);
  SET_REAL_VAL(115, mnan.f,   mzero.f,  1.0f);
  SET_REAL_VAL(116, -1.0f,    2.1f,     pnan.f);
  SET_REAL_VAL(117, -1.1f,    -1000.1f, pnan.f);
  SET_REAL_VAL(118, -1000.0f, -4.3f,    pnan.f);
  SET_REAL_VAL(119, -0.999f,  minf.f,   pinf.f);
  SET_REAL_VAL(120, 0.999f,   minf.f,   pinf.f);
  SET_REAL_VAL(121, -1.0001f, minf.f,   pzero.f);
  SET_REAL_VAL(122, 1.0001f,  minf.f,   pzero.f);
  SET_REAL_VAL(123, -0.999f,  pinf.f,   pzero.f);
  SET_REAL_VAL(124, 0.999f,   pinf.f,   pzero.f);
  SET_REAL_VAL(125, -1.0001f, pinf.f,   pinf.f);
  SET_REAL_VAL(126, 1.0001f,  pinf.f,   pinf.f);
  SET_REAL_VAL(127, minf.f,   -7.0f,    mzero.f);
  SET_REAL_VAL(128, minf.f,   -8.0f,    pzero.f);
  SET_REAL_VAL(129, minf.f,   9.0f,     minf.f);
  SET_REAL_VAL(130, minf.f,   10.0f,    pinf.f);
  SET_REAL_VAL(131,  1.0f,     0.0f,      1.0f);
  SET_REAL_VAL(132, pinf.f,  -1.0f,    pzero.f);
  SET_REAL_VAL(133, pinf.f,  -1000.9f, pzero.f);
  SET_REAL_VAL(134,  1.0f,     0.0f,      1.0f);
  SET_REAL_VAL(135, pinf.f,  1.0f,      pinf.f);
  SET_REAL_VAL(136, pinf.f,  1000.9f,   pinf.f);

#pragma clang loop vectorize(disable)
  for (i = 137; i < N; i++) {
    src1[i] = 1.0;
    src2[i] = 1.0;
    res[i] = 1.0;
  }
}

void test(float * restrict dest, float * restrict src1, float * restrict src2) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = powf(src1[i], src2[i]);
  }
}

int MAINF() {
  float dest[N], src1[N], src2[N], res[N];
  int i;
  init (res, src1, src2);
  for (i = 0;i < 2;i++ ) {
    test (dest, src1, src2);
  }
  for (i = 0;i < N;i++) {
    if ( i==7 || i==9 || i == 11 || i == 31 || i == 44 || i == 46 || i == 6 || i == 10) {
      if (equal_check6(dest[i], res[i])) {
      	printf("%d:",i);
      	PRINT_NG;
      }
    } else if ( i >= 84 ) {
      if (same_check(dest[i], res[i])) {
	printf("%d:",i);
	PRINT_NG;
      }
    } else {
      if (equal_check(dest[i], res[i])) {
	printf("%d:",i);
	PRINT_NG;
      }
    }
  }
  PRINT_OK;
  return 0;
}
