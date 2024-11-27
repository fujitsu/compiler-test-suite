
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
#define equal_check(val1, val2) (fabs(val1 - val2)/fabs(val1) >= 1.0e-15)
#define equal_check12(val1, val2) (fabs(val1 - val2)/fabs(val1) >= 1.0e-12)
#define equal_check13(val1, val2) (fabs(val1 - val2)/fabs(val1) >= 1.0e-13)
#define equal_check14(val1, val2) (fabs(val1 - val2)/fabs(val1) >= 1.0e-14)
#define same_check(val1, val2) ((val1 != val2) && !(isnan(val1) && isnan(val2)))
#else
#define equal_check(val1, val2) ((val1 != val2) && !(isnan(val1) && isnan(val2)))
#define equal_check12(val1, val2) ((val1 != val2) && !(isnan(val1) && isnan(val2)))
#define equal_check13(val1, val2) ((val1 != val2) && !(isnan(val1) && isnan(val2)))
#define equal_check14(val1, val2) ((val1 != val2) && !(isnan(val1) && isnan(val2)))
#define same_check(val1, val2) ((val1 != val2) && !(isnan(val1) && isnan(val2)))
#endif

void init(double * res, double * src1, double * src2) {
  int i;
  typedef union ld64 {
    unsigned long long ull;
    double d;
  } uld64;
  static const uld64 pzero = {0x0ULL};
  static const uld64 mzero = {0x8000000000000000ULL};
  static const uld64 pinf = {0x7ff0000000000000ULL};
  static const uld64 minf = {0xfff0000000000000ULL};
  static const uld64 pnan = {0x7ff8000000000000ULL};
  static const uld64 mnan = {0xfff8000000000000ULL};

#define SET_REAL_VAL(indx, val1, val2, res1) src1[indx] = val1; src2[indx] = val2; res[indx] = res1
  SET_REAL_VAL(0,  1.001,    	      1.0,   		    	1.00099999999999989e+00);
  SET_REAL_VAL(1,  1.01,     	      1.0,   		    	1.01000000000000001e+00);
  SET_REAL_VAL(2,  2.0,      	      1.0,   		    	2.00000000000000000e+00);
  SET_REAL_VAL(3,  2.0,      	      2.0,   		    	4.00000000000000000e+00);
  SET_REAL_VAL(4,  0.1,      	      1.1,   		    	7.94328234724281379e-02);
  SET_REAL_VAL(5,  2.1,      	      1.1,   		    	2.26173242463916280e+00);
  SET_REAL_VAL(6,  2.1,      	      100.1, 		    	1.79535941231914077e+32);
  SET_REAL_VAL(7,  100.1,    	      10.1,  		    	1.60097364447227871e+20);
  SET_REAL_VAL(8,  1.1e300,  	      1.000001, 	    	1.10076022049867194e+300);
  SET_REAL_VAL(9,  1.1e100,  	      3.001,    	    	1.67578943527916565e+300);
  SET_REAL_VAL(10, 1.1e10,   	      29.888,   	    	1.30961781430034723e+300);
  SET_REAL_VAL(11, 1.1234e2, 	      123.456,  	    	1.41506796317377440e+253);
  SET_REAL_VAL(12, 1.1e-10,  	      -30.228,  	    	1.06851817334168471e+301);
  SET_REAL_VAL(13, 1.1e-100, 	      -3.001,   	    	9.45759150341588108e+299);
  SET_REAL_VAL(14, 1.1e-300, 	      -1.00001, 	    	9.15391553767202741e+299);
  SET_REAL_VAL(15, 1.1,               7272.54,  	    	1.07141696947417245e+301);
  SET_REAL_VAL(16, 1.000000000000001, 6.2e17,   	    	8.74006437648668332e+298);
  SET_REAL_VAL(17, 1.000000000000001, 100.1,    	    	1.00000000000011124e+00);
  SET_REAL_VAL(18, 1.1e300,	      1.000001, 	    	1.10076022049867194e+300);
  SET_REAL_VAL(19, 1.1,    	      1.1,      	    	1.11053424105457577e+00);
  SET_REAL_VAL(20, 0.0,    	      1.1,      	    	0.00000000000000000e+00);
  SET_REAL_VAL(21, -1.1,   	      1.1,      	    	pnan.d);
  SET_REAL_VAL(22, 1.1,    	      2.0,      	    	1.21000000000000019e+00);
  SET_REAL_VAL(23, 0.0,    	      2.0,      	    	0.00000000000000000e+00);
  SET_REAL_VAL(24, -1.1,   	      2.0,      	    	1.21000000000000019e+00);
  SET_REAL_VAL(25, 1.1,    	      3.0,      	    	1.33100000000000041e+00);
  SET_REAL_VAL(26, 0.0,    	      3.0,      	    	0.00000000000000000e+00);
  SET_REAL_VAL(27, -1.1,   	      3.0,      	    	-1.33100000000000041e+00);
  SET_REAL_VAL(28, 1.1,    	      0.0,      	    	1.00000000000000000e+00);
  SET_REAL_VAL(29, 0.0,    	      0.0,      	    	1.00000000000000000e+00);
  SET_REAL_VAL(30, -1.1,   	      0.0,      	    	1.00000000000000000e+00);
  SET_REAL_VAL(31, 1.1,    	      -1.1,     	    	9.00467507467746953e-01);
  SET_REAL_VAL(32, 0.0,    	      -1.1,     	    	pinf.d);
  SET_REAL_VAL(33, -1.1,   	      -1.1,     	    	pnan.d);
  SET_REAL_VAL(34, 1.1,    	      -2.0,     	    	8.26446280991735449e-01);
  SET_REAL_VAL(35, 0.0,    	      -2.0,     	    	pinf.d);
  SET_REAL_VAL(36, -1.1,   	      -2.0,     	    	8.26446280991735449e-01);
  SET_REAL_VAL(37, 1.1,    	      -3.0,     	    	7.51314800901577540e-01);
  SET_REAL_VAL(38, 0.0,    	      -3.0,     	    	pinf.d);
  SET_REAL_VAL(39, -1.1,   	      -3.0,     	    	-7.51314800901577540e-01);
  SET_REAL_VAL(40, -2.1,   	      1.,       	    	-2.10000000000000009e+00);
  SET_REAL_VAL(41, -2.1,   	      2.,       	    	4.41000000000000014e+00);
  SET_REAL_VAL(42, -2.1,   	      50.,      	    	1.29111443505072180e+16);
  SET_REAL_VAL(43, -2.1,   	      51.,      	    	-2.71134031360651600e+16);
  SET_REAL_VAL(44, -2.1,   	      -1.,      	    	-4.76190476190476164e-01);
  SET_REAL_VAL(45, -2.1,   	      -2.,      	    	2.26757369614512455e-01);
  SET_REAL_VAL(46, -2.1,   	      -50.,     	    	7.74524684142900783e-17);
  SET_REAL_VAL(47, -2.1,   	      -51.,     	    	-3.68821278163286070e-17);
  SET_REAL_VAL(48, -1.0,   	       9007199254740992.-1, 	-1.00000000000000000e+00);
  SET_REAL_VAL(49, -1.0,   	      -9007199254740992.+1, 	-1.00000000000000000e+00);
  SET_REAL_VAL(50, -1.0,   	       9007199254740992.,   	1.00000000000000000e+00);
  SET_REAL_VAL(51, -1.0,   	      -9007199254740992.,   	1.00000000000000000e+00);
  SET_REAL_VAL(52, -1.0,   	       9007199254740992.*2, 	1.00000000000000000e+00);
  SET_REAL_VAL(53, -1.0,   	      -9007199254740992.*2, 	1.00000000000000000e+00);
  SET_REAL_VAL(54, -1.0,   	       1e100,               	1.00000000000000000e+00);
  SET_REAL_VAL(55, -1.0,   	      -1e100,               	1.00000000000000000e+00);
  SET_REAL_VAL(56, -1.0,   	       9007199254740992./2-1.5, pnan.d);
  SET_REAL_VAL(57, -1.0,   	      -9007199254740992./2+1.5, pnan.d);
  SET_REAL_VAL(58, -1.0,   	       9007199254740992./2, 	1.00000000000000000e+00);
  SET_REAL_VAL(59, -1.0,   	      -9007199254740992./2, 	1.00000000000000000e+00);
  SET_REAL_VAL(60, +1.1,   	      1e38,                 	pinf.d);
  SET_REAL_VAL(61, -1.1,   	      1e38,                 	pinf.d);
  SET_REAL_VAL(62, -1.1,   	      2.0,                  	1.21000000000000019e+00);
  SET_REAL_VAL(63, -1.1,   	      1e10,                 	pinf.d);
  SET_REAL_VAL(64, -1.1,   	      1e20,                 	pinf.d);
  SET_REAL_VAL(65, -1.1,   	      1e30,                 	pinf.d);
  SET_REAL_VAL(66, -1.00000000000001, 9007199254740992.*2,  	1.48938420078049906e+78);
  SET_REAL_VAL(67, -1.00000000000001, 1e19,                 	pinf.d);
  SET_REAL_VAL(68, -1.00000000000001, 1e20,                 	pinf.d);
  SET_REAL_VAL(69, 2.1,	       	      pnan.d,               	pnan.d);
  SET_REAL_VAL(70, 2.1,	       	      mnan.d,               	pnan.d);
  SET_REAL_VAL(71, 2.1,	       	      pinf.d,               	pnan.d);
  SET_REAL_VAL(72, 2.1,	       	      minf.d,               	pnan.d);
  SET_REAL_VAL(73, 2.1,	       	      mzero.d,              	1.00000000000000000e+00);
  SET_REAL_VAL(74, pnan.d, 	      2.1,                  	pnan.d);
  SET_REAL_VAL(75, mnan.d, 	      2.1,                  	pnan.d);
  SET_REAL_VAL(76, pinf.d, 	      2.1,                  	pnan.d);
  SET_REAL_VAL(77, minf.d, 	      2.1,                  	pnan.d);
  SET_REAL_VAL(78, mzero.d,	      2.1,                  	0.00000000000000000e+00);
  SET_REAL_VAL(79, pnan.d, 	      pnan.d,               	pnan.d);
  SET_REAL_VAL(80, mnan.d, 	      mnan.d,               	pnan.d);
  SET_REAL_VAL(81, pinf.d, 	      pinf.d,               	pnan.d);
  SET_REAL_VAL(82, minf.d, 	      minf.d,               	pnan.d);
  SET_REAL_VAL(83, mzero.d,	      mzero.d,              	1.00000000000000000e+00);

  SET_REAL_VAL(84,  pzero.d, -3.0,    pinf.d);
  SET_REAL_VAL(85,  1.0,     0.0,     1.0);
  SET_REAL_VAL(86,  pzero.d, -4.0,    pinf.d);
  SET_REAL_VAL(87,  mzero.d, -4.0,    pinf.d);
  SET_REAL_VAL(88,  pzero.d, 5.0,     pzero.d);
  SET_REAL_VAL(89,  mzero.d, 5.0,     mzero.d);
  SET_REAL_VAL(90,  pzero.d, 6.0,     pzero.d);
  SET_REAL_VAL(91,  mzero.d, 6.0,     pzero.d);
  SET_REAL_VAL(92,  1.0,     0.0,     1.0);
  SET_REAL_VAL(93,  1.0,     0.0,     1.0);
  SET_REAL_VAL(94,  1.0,     -1.0,    1.0);
  SET_REAL_VAL(95,  1.0,     10.2,    1.0);
  SET_REAL_VAL(96,  1.0,     0.0,     1.0);
  SET_REAL_VAL(97,  1.0,     0.0,     1.0);
  SET_REAL_VAL(98,  1.0,     0.0,     1.0);
  SET_REAL_VAL(99,  1.0,     0.0,     1.0);
  SET_REAL_VAL(100, 2.1,     pzero.d, 1.0);
  SET_REAL_VAL(101, -4.3,    pzero.d, 1.0);
  SET_REAL_VAL(102, pzero.d, pzero.d, 1.0);
  SET_REAL_VAL(103, mzero.d, pzero.d, 1.0);
  SET_REAL_VAL(104, pinf.d,  pzero.d, 1.0);
  SET_REAL_VAL(105, minf.d,  pzero.d, 1.0);
  SET_REAL_VAL(106, pnan.d,  pzero.d, 1.0);
  SET_REAL_VAL(107, mnan.d,  pzero.d, 1.0);
  SET_REAL_VAL(108, 2.1,     mzero.d, 1.0);
  SET_REAL_VAL(109, -4.3,    mzero.d, 1.0);
  SET_REAL_VAL(110, pzero.d, mzero.d, 1.0);
  SET_REAL_VAL(111, mzero.d, mzero.d, 1.0);
  SET_REAL_VAL(112, pinf.d,  mzero.d, 1.0);
  SET_REAL_VAL(113, minf.d,  mzero.d, 1.0);
  SET_REAL_VAL(114, pnan.d,  mzero.d, 1.0);
  SET_REAL_VAL(115, mnan.d,  mzero.d, 1.0);
  SET_REAL_VAL(116, -1.0,    2.1,     pnan.d);
  SET_REAL_VAL(117, -1.1,    -1000.1, pnan.d);
  SET_REAL_VAL(118, -1000.0, -4.3,    pnan.d);
  SET_REAL_VAL(119, -0.999,  minf.d,  pinf.d);
  SET_REAL_VAL(120, 0.999,   minf.d,  pinf.d);
  SET_REAL_VAL(121, -1.0001, minf.d,  pzero.d);
  SET_REAL_VAL(122, 1.0001,  minf.d,  pzero.d);
  SET_REAL_VAL(123, -0.999,  pinf.d,  pzero.d);
  SET_REAL_VAL(124, 0.999,   pinf.d,  pzero.d);
  SET_REAL_VAL(125, -1.0001, pinf.d,  pinf.d);
  SET_REAL_VAL(126, 1.0001,  pinf.d,  pinf.d);
  SET_REAL_VAL(127, minf.d,  -7.0,    mzero.d);
  SET_REAL_VAL(128, minf.d,  -8.0,    pzero.d);
  SET_REAL_VAL(129, minf.d,  9.0,     minf.d);
  SET_REAL_VAL(130, minf.d,  10.0,    pinf.d);
  SET_REAL_VAL(131,  1.0,     0.0,     1.0);
  SET_REAL_VAL(132, pinf.d,  -1.0,    pzero.d);
  SET_REAL_VAL(133, pinf.d,  -1000.9, pzero.d);
  SET_REAL_VAL(134,  1.0,     0.0,     1.0);
  SET_REAL_VAL(135, pinf.d,  1.0,     pinf.d);
  SET_REAL_VAL(136, pinf.d,  1000.9,  pinf.d);

#pragma clang loop vectorize(disable)
  for (i = 137; i < N; i++) {
    src1[i] = 1.0;
    src2[i] = 1.0;
    res[i] = 1.0;
  }
}

void test(double * restrict dest, double * restrict src1, double * restrict src2) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = pow(src1[i], src2[i]);
  }
}

int MAINF() {
  double dest[N], src1[N], src2[N], res[N];
  int i;
  init (res, src1, src2);
  for (i = 0;i < 2;i++ ) {
    test (dest, src1, src2);
  }
  for (i = 0;i < N;i++) {
    if ( i == 6|| i == 7|| i == 10|| i == 12|| i == 42|| i == 43|| i == 46|| i == 47 ) {
      if (equal_check14(dest[i], res[i])) {
	PRINT_NG;
      }
    } else if ( i==11) {
      if (equal_check13(dest[i], res[i])) {
	PRINT_NG;
      }
    } else if ( i==15 || i == 16 || i == 66 ) {
      if (equal_check12(dest[i], res[i])) {
	PRINT_NG;
      }
    } else if ( i >= 84 ) {
      if (same_check(dest[i], res[i])) {
	PRINT_NG;
      }
    } else {
      if (equal_check(dest[i], res[i])) {
	PRINT_NG;
      }
    }
  }
  PRINT_OK;
  return 0;
}
