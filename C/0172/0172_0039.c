#include <complex.h>
#include <stdio.h>
#include <stdarg.h>

struct i1 {
  char  c1;
};

struct i4 {
  int   i1;
};
struct r4 {
  float f1;
};
struct i4i4 {
  int   i1;
  int   i2;
};
struct i4r4 {
  int   i1;
  float f2;
};
struct r4r4 {
  float f1;
  float f2;
};
struct r4i4 {
  float f1;
  int   i2;
};

struct i8 {
  long long int ll1;
};
struct r8 {
  double    d1;
};
struct i8i8 {
  long long int ll1;
  long long int ll2;
};
struct i8r8 {
  long long int ll1;
  double    d2;
};
struct r8r8 {
  double    d1;
  double    d2;
};
struct r8i8 {
  double    d1;
  long long int ll2;
};

struct i4i8 {
  int i1;
  long long int ll2;
};
struct i8i4 {
  long long int ll1;
  int i2;
};

struct r4r8 {
  float  f1;
  double d2;
};
struct r8r4 {
  float  d1;
  double f2;
};

struct r10 {
  long double ld1;
};

struct c8 {
  float _Complex cf1;
};
struct c16 {
  double _Complex cd1;
};
struct c20 {
  long double _Complex cld1;
};
struct c8c8 {
  float _Complex cf1;
  float _Complex cf2;
};

void test_r4i4(int i, float f, ...) {
  struct i4   i4;
  struct r4   r4;
  struct i4i4 i4i4;
  struct i4r4 i4r4;
  struct r4r4 r4r4;
  struct r4i4 r4i4;
  va_list ap;
  
  va_start(ap, f);
  
  i4 = va_arg(ap, struct i4);
  printf("i4   : %d\n", i4.i1);
  r4 = va_arg(ap, struct r4);
  printf("r4   : %f\n", r4.f1);
  i4i4 = va_arg(ap, struct i4i4);
  printf("i4i4 : %d, %d\n", i4i4.i1, i4i4.i2);
  i4r4 = va_arg(ap, struct i4r4);
  printf("i4r4 : %d, %f\n", i4r4.i1, i4r4.f2);
  r4r4 = va_arg(ap, struct r4r4);
  printf("r4r4 : %f, %f\n", r4r4.f1, r4r4.f2);
  r4i4 = va_arg(ap, struct r4i4);
  printf("r4i4 : %f, %d\n", r4i4.f1, r4i4.i2);
  
  va_end(ap);
  
  return;
}

void test_r8i8(int i, float f, ...) {
  struct i8   i8;
  struct r8   r8;
  struct i8i8 i8i8;
  struct i8r8 i8r8;
  struct r8r8 r8r8;
  struct r8i8 r8i8;
  va_list ap;
  
  va_start(ap, f);
  
  i8 = va_arg(ap, struct i8);
  printf("i8   : %ld\n", i8.ll1);
  r8 = va_arg(ap, struct r8);
  printf("r8   : %f\n", r8.d1);
  i8i8 = va_arg(ap, struct i8i8);
  printf("i8i8 : %ld, %ld\n", i8i8.ll1, i8i8.ll2);
  i8r8 = va_arg(ap, struct i8r8);
  printf("i8r8 : %ld, %f\n", i8r8.ll1, i8r8.d2);
  r8r8 = va_arg(ap, struct r8r8);
  printf("r8r8 : %f, %f\n", r8r8.d1, r8r8.d2);
  r8i8 = va_arg(ap, struct r8i8);
  printf("r8i8 : %f, %ld\n", r8i8.d1, r8i8.ll2);
  
  va_end(ap);
  
  return;
}

void test_c(int i, float f, ...) {
  struct c8   c8;
  struct c16  c16;
  struct c8c8 c8c8;
  va_list ap;
  
  va_start(ap, f);
  
  c8 = va_arg(ap, struct c8);
  printf("c8   : (%f, %f)\n", crealf(c8.cf1), cimagf(c8.cf1));
  c16 = va_arg(ap, struct c16);
  printf("c16  : (%f, %f)\n", creal(c16.cd1), cimag(c16.cd1));
  c8c8 = va_arg(ap, struct c8c8);
  printf("c8c8 : (%f, %f), (%f, %f)\n", 
	 crealf(c8c8.cf1), cimagf(c8c8.cf1), crealf(c8c8.cf2), cimagf(c8c8.cf2));
  
  va_end(ap);
  
  return;
}

void test_i4i8(int i, float f, ...) {
  struct i4i8 i4i8;
  struct i8i4 i8i4;
  va_list ap;
  
  va_start(ap, f);
  
  i4i8 = va_arg(ap, struct i4i8);
  printf("i4i8 : %d, %Ld\n", i4i8.i1, i4i8.ll2);
  i8i4 = va_arg(ap, struct i8i4);
  printf("i8i4 : %d, %Ld\n", i8i4.ll1, i8i4.i2);

  va_end(ap);
  
  return;
}

void test_r4r8(int i, float f, ...) {
  struct r4r8 r4r8;
  struct r8r4 r8r4;
  va_list ap;
  
  va_start(ap, f);
  
  r4r8 = va_arg(ap, struct r4r8);
  printf("r4r8 : %f, %f\n", r4r8.f1, r4r8.d2);
  r8r4 = va_arg(ap, struct r8r4);
  printf("r8r4 : %f, %f\n", r8r4.d1, r8r4.f2);

  va_end(ap);
  
  return;
}

void test_on_mem_r4i4(int i01, int i02, int i03, int i04, int i05, int i06, 
		      float f01, float f02, float f03, float f04, 
		      float f05, float f06, float f07, float f08, ...) {
  struct i4   i4;
  struct r4   r4;
  struct i4i4 i4i4;
  struct i4r4 i4r4;
  struct r4r4 r4r4;
  struct r4i4 r4i4;
  va_list ap;
  
  va_start(ap, f08);
  
  i4 = va_arg(ap, struct i4);
  printf("[mem]i4   : %d\n", i4.i1);
  r4 = va_arg(ap, struct r4);
  printf("[mem]r4   : %f\n", r4.f1);
  i4i4 = va_arg(ap, struct i4i4);
  printf("[mem]i4i4 : %d, %d\n", i4i4.i1, i4i4.i2);
  i4r4 = va_arg(ap, struct i4r4);
  printf("[mem]i4r4 : %d, %f\n", i4r4.i1, i4r4.f2);
  r4r4 = va_arg(ap, struct r4r4);
  printf("[mem]r4r4 : %f, %f\n", r4r4.f1, r4r4.f2);
  r4i4 = va_arg(ap, struct r4i4);
  printf("[mem]r4i4 : %f, %d\n", r4i4.f1, r4i4.i2);
  
  va_end(ap);
  
  return;
}

void test_on_mem_r8i8(int i01, int i02, int i03, int i04, int i05, int i06, 
		      float f01, float f02, float f03, float f04, 
		      float f05, float f06, float f07, float f08, ...) {
  struct i8   i8;
  struct r8   r8;
  struct i8i8 i8i8;
  struct i8r8 i8r8;
  struct r8r8 r8r8;
  struct r8i8 r8i8;
  va_list ap;
  
  va_start(ap, f08);
  
  i8 = va_arg(ap, struct i8);
  printf("[mem]i8   : %ld\n", i8.ll1);
  r8 = va_arg(ap, struct r8);
  printf("[mem]r8   : %f\n", r8.d1);
  i8i8 = va_arg(ap, struct i8i8);
  printf("[mem]i8i8 : %ld, %ld\n", i8i8.ll1, i8i8.ll2);
  i8r8 = va_arg(ap, struct i8r8);
  printf("[mem]i8r8 : %ld, %f\n", i8r8.ll1, i8r8.d2);
  r8r8 = va_arg(ap, struct r8r8);
  printf("[mem]r8r8 : %f, %f\n", r8r8.d1, r8r8.d2);
  r8i8 = va_arg(ap, struct r8i8);
  printf("[mem]r8i8 : %f, %ld\n", r8i8.d1, r8i8.ll2);
  
  va_end(ap);
  
  return;
}

void test_on_mem_c(int i01, int i02, int i03, int i04, int i05, int i06, 
		   float f01, float f02, float f03, float f04, 
		   float f05, float f06, float f07, float f08, ...) {
  struct c8   c8;
  struct c16  c16;
  struct c8c8 c8c8;
  va_list ap;
  
  va_start(ap, f08);
  
  c8 = va_arg(ap, struct c8);
  printf("[mem]c8   : (%f, %f)\n", crealf(c8.cf1), cimagf(c8.cf1));
  c16 = va_arg(ap, struct c16);
  printf("[mem]c16  : (%f, %f)\n", creal(c16.cd1), cimag(c16.cd1));
  c8c8 = va_arg(ap, struct c8c8);
  printf("[mem]c8c8 : (%f, %f), (%f, %f)\n", 
	 crealf(c8c8.cf1), cimagf(c8c8.cf1), crealf(c8c8.cf2), cimagf(c8c8.cf2));
  
  va_end(ap);
  
  return;
}

void test_on_mem_i4i8(int i01, int i02, int i03, int i04, int i05, int i06, 
		      float f01, float f02, float f03, float f04, 
 		      float f05, float f06, float f07, float f08, ...) {
  struct i4i8 i4i8;
  struct i8i4 i8i4;
  va_list ap;
  
  va_start(ap, f08);
  
  i4i8 = va_arg(ap, struct i4i8);
  printf("[mem]i4i8 : %d, %Ld\n", i4i8.i1, i4i8.ll2);
  i8i4 = va_arg(ap, struct i8i4);
  printf("[mem]i8i4 : %d, %Ld\n", i8i4.ll1, i8i4.i2);

  va_end(ap);
  
  return;
}

void test_on_mem_r4r8(int i01, int i02, int i03, int i04, int i05, int i06, 
		      float f01, float f02, float f03, float f04, 
 		      float f05, float f06, float f07, float f08, ...) {
  struct r4r8 r4r8;
  struct r8r4 r8r4;
  va_list ap;
  
  va_start(ap, f08);
  
  r4r8 = va_arg(ap, struct r4r8);
  printf("[mem]r4r8 : %f, %f\n", r4r8.f1, r4r8.d2);
  r8r4 = va_arg(ap, struct r8r4);
  printf("[mem]r8r4 : %f, %f\n", r8r4.d1, r8r4.f2);

  va_end(ap);
  
  return;
}

void test_on_mem_r10(int i, float f, ...) {
  struct r10 r10;
  va_list ap;
  
  va_start(ap, f);
  
  r10 = va_arg(ap, struct r10);
  printf("[mem]r10  : %Lf\n", r10.ld1);
  
  va_end(ap);
  
  return;
}

void test_on_mem_c20(int i, float f, ...) {
  struct c20 c20;
  va_list ap;
  
  va_start(ap, f);
  
  c20 = va_arg(ap, struct c20);
  printf("[mem]c20  : (%Lf, %Lf)\n", creall(c20.cld1), cimagl(c20.cld1));
  
  va_end(ap);
  
  return;
}

void test_misalign_r4i4(int i01, int i02, int i03, int i04, int i05, int i06, 
			float f01, float f02, float f03, float f04, 
			float f05, float f06, float f07, float f08, float f09, ...) {
  struct i4   i4;
  struct r4   r4;
  struct i4i4 i4i4;
  struct i4r4 i4r4;
  struct r4r4 r4r4;
  struct r4i4 r4i4;
  va_list ap;
  
  va_start(ap, f09);
  
  i4 = va_arg(ap, struct i4);
  printf("[mis]i4   : %d\n", i4.i1);
  r4 = va_arg(ap, struct r4);
  printf("[mis]r4   : %f\n", r4.f1);
  i4i4 = va_arg(ap, struct i4i4);
  printf("[mis]i4i4 : %d, %d\n", i4i4.i1, i4i4.i2);
  i4r4 = va_arg(ap, struct i4r4);
  printf("[mis]i4r4 : %d, %f\n", i4r4.i1, i4r4.f2);
  r4r4 = va_arg(ap, struct r4r4);
  printf("[mis]r4r4 : %f, %f\n", r4r4.f1, r4r4.f2);
  r4i4 = va_arg(ap, struct r4i4);
  printf("[mis]r4i4 : %f, %d\n", r4i4.f1, r4i4.i2);
  
  va_end(ap);
  
  return;
}

void test_misalign_r8i8(int i01, int i02, int i03, int i04, int i05, int i06, 
			float f01, float f02, float f03, float f04, 
			float f05, float f06, float f07, float f08, float f09, ...) {
  struct i8   i8;
  struct r8   r8;
  struct i8i8 i8i8;
  struct i8r8 i8r8;
  struct r8r8 r8r8;
  struct r8i8 r8i8;
  va_list ap;
  
  va_start(ap, f09);
  
  i8 = va_arg(ap, struct i8);
  printf("[mis]i8   : %ld\n", i8.ll1);
  r8 = va_arg(ap, struct r8);
  printf("[mis]r8   : %f\n", r8.d1);
  i8i8 = va_arg(ap, struct i8i8);
  printf("[mis]i8i8 : %ld, %ld\n", i8i8.ll1, i8i8.ll2);
  i8r8 = va_arg(ap, struct i8r8);
  printf("[mis]i8r8 : %ld, %f\n", i8r8.ll1, i8r8.d2);
  r8r8 = va_arg(ap, struct r8r8);
  printf("[mis]r8r8 : %f, %f\n", r8r8.d1, r8r8.d2);
  r8i8 = va_arg(ap, struct r8i8);
  printf("[mis]r8i8 : %f, %ld\n", r8i8.d1, r8i8.ll2);
  
  va_end(ap);
  
  return;
}

void test_misalign_c(int i01, int i02, int i03, int i04, int i05, int i06, 
		     float f01, float f02, float f03, float f04, 
		     float f05, float f06, float f07, float f08, float f09, ...) {
  struct c8   c8;
  struct c16  c16;
  struct c8c8 c8c8;
  va_list ap;
  
  va_start(ap, f09);
  
  c8 = va_arg(ap, struct c8);
  printf("[mis]c8   : (%f, %f)\n", crealf(c8.cf1), cimagf(c8.cf1));
  c16 = va_arg(ap, struct c16);
  printf("[mis]c16  : (%f, %f)\n", creal(c16.cd1), cimag(c16.cd1));
  c8c8 = va_arg(ap, struct c8c8);
  printf("[mis]c8c8 : (%f, %f), (%f, %f)\n", 
	 crealf(c8c8.cf1), cimagf(c8c8.cf1), crealf(c8c8.cf2), cimagf(c8c8.cf2));
  
  va_end(ap);
  
  return;
}

void test_misalign_i4i8(int i01, int i02, int i03, int i04, int i05, int i06, 
			float f01, float f02, float f03, float f04, 
			float f05, float f06, float f07, float f08, float f09, ...) {
  struct i4i8 i4i8;
  struct i8i4 i8i4;
  va_list ap;
  
  va_start(ap, f09);
  
  i4i8 = va_arg(ap, struct i4i8);
  printf("[mis]i4i8 : %d, %Ld\n", i4i8.i1, i4i8.ll2);
  i8i4 = va_arg(ap, struct i8i4);
  printf("[mis]i8i4 : %d, %Ld\n", i8i4.ll1, i8i4.i2);

  va_end(ap);
  
  return;
}

void test_misalign_r4r8(int i01, int i02, int i03, int i04, int i05, int i06, 
			float f01, float f02, float f03, float f04, 
			float f05, float f06, float f07, float f08, float f09, ...) {
  struct r4r8 r4r8;
  struct r8r4 r8r4;
  va_list ap;
  
  va_start(ap, f09);
  
  r4r8 = va_arg(ap, struct r4r8);
  printf("[mis]r4r8 : %f, %f\n", r4r8.f1, r4r8.d2);
  r8r4 = va_arg(ap, struct r8r4);
  printf("[mis]r8r4 : %f, %f\n", r8r4.d1, r8r4.f2);

  va_end(ap);
  
  return;
}

void test_misalign_r10(int i01, int i02, int i03, int i04, int i05, int i06, 
		       float f01, float f02, float f03, float f04, 
		       float f05, float f06, float f07, float f08, float f09, ...) {
  struct r10 r10;
  va_list ap;
  
  va_start(ap, f09);
  
  r10 = va_arg(ap, struct r10);
  printf("[mis]r10  : %Lf\n", r10.ld1);
  
  va_end(ap);
  
  return;
}

void test_misalign_c20(int i01, int i02, int i03, int i04, int i05, int i06, 
		       float f01, float f02, float f03, float f04, 
		       float f05, float f06, float f07, float f08, float f09, ...) {
  struct c20 c20;
  va_list ap;
  
  va_start(ap, f09);
  
  c20 = va_arg(ap, struct c20);
  printf("[mis]c20  : (%Lf, %Lf)\n", creall(c20.cld1), cimagl(c20.cld1));
  
  va_end(ap);
  
  return;
}

void test_byte_misalign_r4i4(int i01, int i02, int i03, int i04, int i05, int i06, 
			float f01, float f02, float f03, float f04, 
			float f05, float f06, float f07, float f08, float f09, ...) {
  struct i1   i1;
  struct i4   i4;
  struct r4   r4;
  struct i4i4 i4i4;
  struct i4r4 i4r4;
  struct r4r4 r4r4;
  struct r4i4 r4i4;
  va_list ap;
  
  va_start(ap, f09);
  
  i1 = va_arg(ap, struct i1);
  i4 = va_arg(ap, struct i4);
  printf("[bmis]i4   : %d\n", i4.i1);
  r4 = va_arg(ap, struct r4);
  printf("[bmis]r4   : %f\n", r4.f1);
  i4i4 = va_arg(ap, struct i4i4);
  printf("[bmis]i4i4 : %d, %d\n", i4i4.i1, i4i4.i2);
  i4r4 = va_arg(ap, struct i4r4);
  printf("[bmis]i4r4 : %d, %f\n", i4r4.i1, i4r4.f2);
  r4r4 = va_arg(ap, struct r4r4);
  printf("[bmis]r4r4 : %f, %f\n", r4r4.f1, r4r4.f2);
  r4i4 = va_arg(ap, struct r4i4);
  printf("[bmis]r4i4 : %f, %d\n", r4i4.f1, r4i4.i2);
  
  va_end(ap);
  
  return;
}

void test_byte_misalign_r8i8(int i01, int i02, int i03, int i04, int i05, int i06, 
			float f01, float f02, float f03, float f04, 
			float f05, float f06, float f07, float f08, float f09, ...) {
  struct i1   i1;
  struct i8   i8;
  struct r8   r8;
  struct i8i8 i8i8;
  struct i8r8 i8r8;
  struct r8r8 r8r8;
  struct r8i8 r8i8;
  va_list ap;
  
  va_start(ap, f09);
  
  i1 = va_arg(ap, struct i1);
  i8 = va_arg(ap, struct i8);
  printf("[bmis]i8   : %ld\n", i8.ll1);
  r8 = va_arg(ap, struct r8);
  printf("[bmis]r8   : %f\n", r8.d1);
  i8i8 = va_arg(ap, struct i8i8);
  printf("[bmis]i8i8 : %ld, %ld\n", i8i8.ll1, i8i8.ll2);
  i8r8 = va_arg(ap, struct i8r8);
  printf("[bmis]i8r8 : %ld, %f\n", i8r8.ll1, i8r8.d2);
  r8r8 = va_arg(ap, struct r8r8);
  printf("[bmis]r8r8 : %f, %f\n", r8r8.d1, r8r8.d2);
  r8i8 = va_arg(ap, struct r8i8);
  printf("[bmis]r8i8 : %f, %ld\n", r8i8.d1, r8i8.ll2);
  
  va_end(ap);
  
  return;
}

void test_byte_misalign_c(int i01, int i02, int i03, int i04, int i05, int i06, 
		     float f01, float f02, float f03, float f04, 
		     float f05, float f06, float f07, float f08, float f09, ...) {
  struct i1   i1;
  struct c8   c8;
  struct c16  c16;
  struct c8c8 c8c8;
  va_list ap;
  
  va_start(ap, f09);
  
  i1 = va_arg(ap, struct i1);
  c8 = va_arg(ap, struct c8);
  printf("[bmis]c8   : (%f, %f)\n", crealf(c8.cf1), cimagf(c8.cf1));
  c16 = va_arg(ap, struct c16);
  printf("[bmis]c16  : (%f, %f)\n", creal(c16.cd1), cimag(c16.cd1));
  c8c8 = va_arg(ap, struct c8c8);
  printf("[bmis]c8c8 : (%f, %f), (%f, %f)\n", 
	 crealf(c8c8.cf1), cimagf(c8c8.cf1), crealf(c8c8.cf2), cimagf(c8c8.cf2));
  
  va_end(ap);
  
  return;
}

void test_byte_misalign_i4i8(int i01, int i02, int i03, int i04, int i05, int i06, 
			float f01, float f02, float f03, float f04, 
			float f05, float f06, float f07, float f08, float f09, ...) {
  struct i1   i1;
  struct i4i8 i4i8;
  struct i8i4 i8i4;
  va_list ap;
  
  va_start(ap, f09);
  
  i1 = va_arg(ap, struct i1);
  i4i8 = va_arg(ap, struct i4i8);
  printf("[bmis]i4i8 : %d, %Ld\n", i4i8.i1, i4i8.ll2);
  i8i4 = va_arg(ap, struct i8i4);
  printf("[bmis]i8i4 : %d, %Ld\n", i8i4.ll1, i8i4.i2);

  va_end(ap);
  
  return;
}

void test_byte_misalign_r4r8(int i01, int i02, int i03, int i04, int i05, int i06, 
			float f01, float f02, float f03, float f04, 
			float f05, float f06, float f07, float f08, float f09, ...) {
  struct i1   i1;
  struct r4r8 r4r8;
  struct r8r4 r8r4;
  va_list ap;
  
  va_start(ap, f09);
  
  i1 = va_arg(ap, struct i1);
  r4r8 = va_arg(ap, struct r4r8);
  printf("[bmis]r4r8 : %f, %f\n", r4r8.f1, r4r8.d2);
  r8r4 = va_arg(ap, struct r8r4);
  printf("[bmis]r8r4 : %f, %f\n", r8r4.d1, r8r4.f2);

  va_end(ap);
  
  return;
}

void test_byte_misalign_r10(int i01, int i02, int i03, int i04, int i05, int i06, 
		       float f01, float f02, float f03, float f04, 
		       float f05, float f06, float f07, float f08, float f09, ...) {
  struct i1  i1;
  struct r10 r10;
  va_list ap;
  
  va_start(ap, f09);
  
  i1 = va_arg(ap, struct i1);
  r10 = va_arg(ap, struct r10);
  printf("[bmis]r10  : %Lf\n", r10.ld1);
  
  va_end(ap);
  
  return;
}

void test_byte_misalign_c20(int i01, int i02, int i03, int i04, int i05, int i06, 
		       float f01, float f02, float f03, float f04, 
		       float f05, float f06, float f07, float f08, float f09, ...) {
  struct i1  i1;
  struct c20 c20;
  va_list ap;
  
  va_start(ap, f09);
  
  i1 = va_arg(ap, struct i1);
  c20 = va_arg(ap, struct c20);
  printf("[bmis]c20  : (%Lf, %Lf)\n", creall(c20.cld1), cimagl(c20.cld1));
  
  va_end(ap);
  
  return;
}

int main(void) {
  struct i1   i1   = {'a'};
  struct i4   i4   = {1};
  struct r4   r4   = {2.0f};
  struct i4i4 i4i4 = {3,    4};
  struct i4r4 i4r4 = {5,    6.0f};
  struct r4r4 r4r4 = {7.0f, 8.0f};
  struct r4i4 r4i4 = {9.0f, 10};
  struct i8   i8   = {11LL};
  struct r8   r8   = {12.0};
  struct i8i8 i8i8 = {13LL, 14LL};
  struct i8r8 i8r8 = {15LL, 16.0};
  struct r8r8 r8r8 = {17.0, 18.0};
  struct r8i8 r8i8 = {19.0, 20LL};
  struct c8   c8   = {21.0f + 22.0fi};
  struct c16  c16  = {23.0  + 24.0i};
  struct c8c8 c8c8 = {25.0f + 26.0fi, 27.0 + 28.0fi};
  struct i4i8 i4i8 = {29, 30LL};
  struct i8i4 i8i4 = {31LL, 32};
  struct r4r8 r4r8 = {33.0f, 34.0};
  struct r8r4 r8r4 = {35.0, 36.0f};
  
  struct r10  r10  = {37.0L};
  struct c20  c20  = {38.0L + 39.0Li};
  
  test_r4i4 (0, 0.0f, i4, r4, i4i4, i4r4, r4r4, r4i4);
  test_r8i8 (0, 0.0f, i8, r8, i8i8, i8r8, r8r8, r8i8);
  test_c    (0, 0.0f, c8, c16, c8c8);
  test_i4i8 (0, 0.0f, i4i8, i8i4);
  test_r4r8 (0, 0.0f, r4r8, r8r4);
  
  test_on_mem_r4i4 (0, 0, 0, 0, 0, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 
		    i4, r4, i4i4, i4r4, r4r4, r4i4);
  test_on_mem_r8i8 (0, 0, 0, 0, 0, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 
		    i8, r8, i8i8, i8r8, r8r8, r8i8);
  test_on_mem_c    (0, 0, 0, 0, 0, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 
		    c8, c16, c8c8);
  test_on_mem_i4i8 (0, 0, 0, 0, 0, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 
		    i4i8, i8i4);
  test_on_mem_r4r8 (0, 0, 0, 0, 0, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 
		    r4r8, r8r4);
  test_on_mem_r10  (0, 0.0f, r10);
  test_on_mem_c20  (0, 0.0f, c20);
  
  test_misalign_r4i4 (0, 0, 0, 0, 0, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 
		      i4, r4, i4i4, i4r4, r4r4, r4i4);
  test_misalign_r8i8 (0, 0, 0, 0, 0, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 
		      i8, r8, i8i8, i8r8, r8r8, r8i8);
  test_misalign_c    (0, 0, 0, 0, 0, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 
		      c8, c16, c8c8);
  test_misalign_i4i8 (0, 0, 0, 0, 0, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 
		      i4i8, i8i4);
  test_misalign_r4r8 (0, 0, 0, 0, 0, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 
		      r4r8, r8r4);
  test_misalign_r10  (0, 0, 0, 0, 0, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 
		      r10);
  test_misalign_c20  (0, 0, 0, 0, 0, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 
		      c20);
  
  test_byte_misalign_r4i4 (0, 0, 0, 0, 0, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 
			   i1, i4, r4, i4i4, i4r4, r4r4, r4i4);
  test_byte_misalign_r8i8 (0, 0, 0, 0, 0, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 
			   i1, i8, r8, i8i8, i8r8, r8r8, r8i8);
  test_byte_misalign_c    (0, 0, 0, 0, 0, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 
			   i1, c8, c16, c8c8);
  test_byte_misalign_i4i8 (0, 0, 0, 0, 0, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 
			   i1, i4i8, i8i4);
  test_byte_misalign_r4r8 (0, 0, 0, 0, 0, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 
			   i1, r4r8, r8r4);
  test_byte_misalign_r10  (0, 0, 0, 0, 0, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 
			   i1, r10);
  test_byte_misalign_c20  (0, 0, 0, 0, 0, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 
			   i1, c20);
  
  return 0;
}
