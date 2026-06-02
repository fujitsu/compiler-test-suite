#include <stdio.h>

char   i1;
short  i2;
int    i4;
long long int i8;
unsigned char   u1;
unsigned short  u2;
unsigned int u4;
unsigned long long int u8;
float  f4;
double f8;
long double f16;
int *ip;
long long int *lp;
float *fp;
double *dp;
int main() {

  static char   si1;
  static short  si2;
  static int    si4;
  static long long int si8;
  static unsigned char   su1;
  static unsigned short  su2;
  static unsigned int    su4;
  static unsigned long long int su8;
  static float  sf4;
  static double sf8;
  static long double sf16;
  static int *sip;
  static long long int *slp;
  static float *sfp;
  static double *sdp;

  if (ip == sip &&
      lp == slp &&
      fp == sfp &&
      dp == sdp &&
      (int)(i1+i2+i4+i8+u1+u2+u4+u8
	    +si1+si2+si4+si8+su1+su2+su4+su8
	    +f4+f8+f16+sf4+sf8+sf16) == 0) {
    printf("ok\n");
  }
  else {
    printf("ng\n");
  }
}
