#include <stdio.h>
#include <complex.h>


float _Complex add_c8_r4(float r4, float _Complex c8) 
{
  return r4 + c8;
}


double _Complex add_c16_r8(double r8, double _Complex c16)
{
  return r8 + c16;
}

double _Complex add_c16_r4(float r4, double _Complex c16)
{
  return  r4 + c16;
}


float _Complex add_c8_r8(double r8, float _Complex c8)
{
  return r8 + c8;
}


double _Complex add5(float r4, float _Complex c8)
{
  return r4 + c8;
}


double _Complex add6(double r8, double _Complex c16)
{
  return r8 + c16;
}

double _Complex add_c16_r4cnt(double _Complex c16)
{
  return 4.0f + c16;
}

double _Complex add_c16_r8cnt(double _Complex c16)
{
  return 4.0 + c16;
}

float _Complex add_c8_r8cnt(float _Complex c8)
{
  return 4.0 + c8;
}

float _Complex add_real_cnt2(float _Complex c8)
{
  return 4.0f + c8;
}

double _Complex add_r8_c8cnt(double r8)
{
  return r8 + (1.0f + 4.0fi);
}

float _Complex add_r8_c8cnt2(double r8)
{
  return r8 + (1.0f + 4.0fi);
}

double _Complex add_sin_c8cnt2(double r8)
{
  return csin(r8) + (1.0f + 4.0fi);
}


float _Complex add_r4_c8cnt2(float r4)
{
  return r4 + (1.0f + 4.0fi);
}


double _Complex add_r8_c16cnt(double r8)
{
  return r8 + (1.0 + 4.0i);
}


double _Complex add_r4_c16cnt(float r4)
{
  return r4 + (1.0 + 4.0i);
}

float _Complex add_sin_c8cnt(float r4)
{
  return csinf(r4) + (1.0f + 4.0fi);
}


double _Complex add_sin_c8cnt3(float r4)
{
  return csinf(r4) + (1.0f + 4.0fi);
}

double _Complex add_sin_c16cnt(float r4)
{
  return csinf(r4) + (1.0 + 4.0i);
}

double _Complex libfunc_add_complex_cnt22(float r4)
{
  return csinf(csinf(r4)) + (1.0 + 4.0i);
}

double _Complex libfunc_add_complex_cnt2_1(float r4)
{
  return csinf(r4) + (1.0 + 4.0i);
}

double _Complex libfunc_add_complex_cnt2(float r4)
{
  return csinf(r4) + (1.0 + 4.0i);
}

double _Complex add_r4_cmplx(float r4)
{
  return r4 + (1.0 + 4.0i); 
}

double _Complex add_r4_cmplx2(float r4)
{
  return r4 + (1.0 + 4.0i);
}

double _Complex add_r4_cmplx3()
{
  float r4 = 30.0f;
  return r4 + (1.0f + 4.0fi);
}

double _Complex  add_r4_cmplx4()
{
  float r4 = 30.0f;
  return r4 + (double _Complex)(1.0f + 4.0fi);
}

double _Complex add_r4_cmplx5(float r4)
{
  return r4 + (1.0f + 4.0fi) + (1.0 + 4.0i);
}

double _Complex add_r4_cmplx6(float r4)
{
  r4=30.0f;
  return r4 + (csinf(r4) + 4.0fi);
}

double _Complex add_cnt_cnt()
{
  return 4.0 + (1.0f + 4.0fi);
}
int main()
{
  float  _Complex a8,c8;
  double _Complex a16,c16,t16;
  float r4,dist;
  double r8;

  c8  = (1.0f + 2.0fi);
  c16 = (2.0 + 3.0i);
  r4 = 2.0f;
  r8 = 3.0;

  a8 = add_c8_r4(r4,c8);
  if((crealf(a8) == 3.0) && (cimagf(a8) == 2.0)) {
    printf (" add_c8_r4 : OK\n");
  } else{
    printf (" add_c8_r4 : NG a8=(%f,%f)\n",crealf(a8),cimagf(a8));
  }
  
  a16 = add_c16_r8(r8,c16);
  if((creal(a16) == 5.0) && (cimag(a16) == 3.0)) {
    printf (" add_c16_r8 : OK\n");
  } else{
    printf (" add_c16_r8 : NG a16=(%f,%f)\n",creal(a16),cimagf(a16));
  }

  a16 = add_c16_r4(r4,c16);
  if((creal(a16) == 4.0) && (cimag(a16) == 3.0)) {
    printf (" add_c16_r4 : OK\n");
  } else{
    printf (" add_c16_r4 : NG a16=(%f,%f)\n",creal(a16),cimagf(a16));
  }

  a8 = add_c8_r8(r8,c8);
  if((crealf(a8) == 4.0) && (cimagf(a8) == 2.0)) {
    printf (" add_c8_r8 : OK\n");
  } else{
    printf (" add_c8_r8 : NG a8=(%f,%f)\n",crealf(a8),cimagf(a8));
  }

  a16 = add5(r4,c8);
  if((creal(a16) == 3.0) && (cimag(a16) == 2.0)) {
    printf (" add5 : OK\n");
  } else{
    printf (" add5 : NG a16=(%f,%f)\n",creal(a16),cimagf(a16));
  }

  a8 = add6(r8,c16);
  if((crealf(a8) == 5.0) && (cimagf(a8) == 3.0)) {
    printf (" add6 : OK\n");
  } else{
    printf (" add6 : NG a8=(%f,%f)\n",crealf(a8),cimagf(a8));
  }

  a16 = add_c16_r4cnt(c16);
  if((creal(a16) == 6.0) && (cimag(a16) == 3.0)) {
    printf (" add_c16_r4cnt : OK\n");
  } else{
    printf (" add_c16_r4cnt : NG a16=(%f,%f)\n",creal(a16),cimagf(a16));
  }

  a16 = add_c16_r8cnt(c16);
  if((creal(a16) == 6.0) && (cimag(a16) == 3.0)) {
    printf (" add_c16_r8cnt : OK\n");
  } else{
    printf (" add_c16_r8cnt : NG a16=(%f,%f)\n",creal(a16),cimagf(a16));
  }

  a8 = add_c8_r8cnt(c8);
  if((crealf(a8) == 5.0) && (cimagf(a8) == 2.0)) {
    printf (" add_c8_r8cnt : OK\n");
  } else{
    printf (" add_c8_r8cnt : NG a8=(%f,%f)\n",crealf(a8),cimagf(a8));
  }

  a8 = add_real_cnt2(c8);
  if((crealf(a8) == 5.0) && (cimagf(a8) == 2.0)) {
    printf (" add_real_cnt2 : OK\n");
  } else{
    printf (" add_real_cnt2 : NG a8=(%f,%f)\n",crealf(a8),cimagf(a8));
  }

  a16 = add_r8_c8cnt(r8);
  if((creal(a16) == 4.0) && (cimag(a16) == 4.0)) {
    printf (" add_r8_c8cnt : OK\n");
  } else{
    printf (" add_r8_c8cnt : NG a16=(%f,%f)\n",creal(a16),cimagf(a16));
  }

  a8 = add_r8_c8cnt2(r8);
  if((crealf(a8) == 4.0) && (cimagf(a8) == 4.0)) {
    printf (" add_r8_c8cnt2 : OK\n");
  } else{
    printf (" add_r8_c8cnt2 : NG a8=(%f,%f)\n",crealf(a8),cimagf(a8));
  }

  a16 = add_sin_c8cnt2(r8);
  t16 = (1.141 + 4.0i);
  dist = creal(a16 - t16);
  if((dist < 0.01) && (cimag(a16) == 4.0)) {
    printf (" add_sin_c8cnt2 : OK\n");
  }else{
    printf (" add_sin_c8cnt2 : NG a16=(%f,%f)\n",creal(a16),cimagf(a16));
  }

  a8 = add_r4_c8cnt2(r4);
  if((crealf(a8) == 3.0) && (cimagf(a8) == 4.0)) {
    printf (" add_r4_c8cnt2 : OK\n");
  } else{
    printf (" add_r4_c8cnt2 : NG a8=(%f,%f)\n",crealf(a8),cimagf(a8));
  }

  a16 = add_r8_c16cnt(r8);
  if((creal(a16) == 4.0) && (cimag(a16) == 4.0)) {
    printf (" add_r8_c16cnt : OK\n");
  } else{
    printf (" add_r8_c16cnt : NG a16=(%f,%f)\n",creal(a16),cimagf(a16));
  }

  a16 = add_r4_c16cnt(r4);
  if((creal(a16) == 3.0) && (cimag(a16) == 4.0)) {
    printf (" add_r4_c16cnt : OK\n");
  } else{
    printf (" add_r4_c16cnt : NG a16=(%f,%f)\n",creal(a16),cimagf(a16));
  }

  a8 = add_sin_c8cnt(r4);
  dist = crealf(a8) - 1.909;
  if((dist < 0.01) && (cimagf(a8) == 4.0)) {
    printf (" add_sin_c8cnt : OK\n");
  } else{
    printf (" add_sin_c8cnt : NG a8=(%f,%f)\n",crealf(a8),cimagf(a8));
  }

  a16 = add_sin_c8cnt3(r4);
  dist = creal(a16) - 1.909;
  if((dist < 0.01) && cimag(a16) == 4.0) {
    printf (" add_sin_c8cnt3 : OK\n");
  }else{
    printf (" add_sin_c8cnt3 : NG a16=(%f,%f)\n",creal(a16),cimagf(a16));
  }

  a16 = add_sin_c16cnt(r4);
  dist = creal(a16) - 1.909;
  if((dist < 0.01) && cimag(a16) == 4.0) {
    printf (" add_sin_c16cnt : OK\n");
  }else{
    printf (" add_sin_c16cnt : NG a16=(%f,%f)\n",creal(a16),cimagf(a16));
  }

  a16 = libfunc_add_complex_cnt22(r4);
  dist = creal(a16) - 1.789;
  if((dist < 0.01) && cimag(a16) == 4.0) {
    printf (" libfunc_add_complex_cnt22 : OK\n");
  }else{
    printf (" libfunc_add_complex_cnt22 : NG a16=(%f,%f)\n",creal(a16),cimagf(a16));
  }

  a16 = libfunc_add_complex_cnt2_1(r4);
  dist = creal(a16) - 1.909;
  if((dist < 0.01) && (cimag(a16) == 4.0)) {
    printf (" libfunc_add_complex_cnt2_1 : OK\n");
  }else{
    printf (" libfunc_add_complex_cnt2_1 : NG a16=(%f,%f)\n",creal(a16),cimagf(a16));
  }

  a16 = libfunc_add_complex_cnt2(r4);
  dist = creal(a16) - 1.909;
  if((dist < 0.01) && (cimag(a16) == 4.0)) {
    printf (" libfunc_add_complex_cnt2 : OK\n");
  }else{
    printf (" libfunc_add_complex_cnt2 : NG a16=(%f,%f)\n",creal(a16),cimagf(a16));
  }

  a16 = add_r4_cmplx(r4);
  if((creal(a16) == 3.0) && (cimag(a16) == 4.0)) {
    printf (" add_r4_cmplx : OK\n");
  } else{
    printf (" add_r4_cmplx : NG a16=(%f,%f)\n",creal(a16),cimagf(a16));
  }

  a16 = add_r4_cmplx2(r4);
  if((creal(a16) == 3.0) && (cimag(a16) == 4.0)) {
    printf (" add_r4_cmplx2 : OK\n");
  } else{
    printf (" add_r4_cmplx2 : NG a16=(%f,%f)\n",creal(a16),cimagf(a16));
  }

  a16 = add_r4_cmplx3();
  if((creal(a16) == 31.0) && (cimag(a16) == 4.0)) {
    printf (" add_r4_cmplx3 : OK\n");
  } else{
    printf (" add_r4_cmplx3 : NG a16=(%f,%f)\n",creal(a16),cimagf(a16));
  }

  a16 = add_r4_cmplx4();
  if((creal(a16) == 31.0) && (cimag(a16) == 4.0)) {
    printf (" add_r4_cmplx4 : OK\n");
  } else{
    printf (" add_r4_cmplx4 : NG a16=(%f,%f)\n",creal(a16),cimagf(a16));
  }

  a16 = add_r4_cmplx5(r4);
  if((creal(a16) == 4.0) && (cimag(a16) == 8.0)) {
    printf (" add_r4_cmplx5 : OK\n");
  } else{
    printf (" add_r4_cmplx5 : NG a16=(%f,%f)\n",creal(a16),cimagf(a16));
  }

  a16 = add_r4_cmplx6(r4);
  dist = creal(a16) - 29.01;
  if((dist < 0.01) && (cimag(a16) == 4.0)) {
    printf (" add_r4_cmplx6 : OK\n");
  } else{
    printf (" add_r4_cmplx6 : NG a16=(%f,%f)\n",creal(a16),cimagf(a16));
  }

  a16 = add_cnt_cnt();
  if((creal(a16) == 5.0) && (cimag(a16) == 4.0)) {
    printf (" add_cnt_cnt : OK\n");
  } else{
    printf (" add_cnt_cnt : NG a16=(%f,%f)\n",creal(a16),cimagf(a16));
  }
}
