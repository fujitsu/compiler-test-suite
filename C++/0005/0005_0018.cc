#if defined(__cplusplus) 
# include <cstdio>
#else
# include <stdio.h>
#endif

#if defined(__AVX__)
#include <emmintrin.h>
#include <immintrin.h>
#include <stdarg.h>

#define MAX_ARG 10
#define UNUSED_VARIABLE(x) (void)(x)

struct str_m128d {
  __m128d ymm1;
};
struct str_m128dx2 {
  __m128d ymm1;
  __m128d ymm2;
};
struct str_m128dx2_2 {
  __m128d ymm1[2];
};
struct str_m128d_f {
  __m128d ymm1;
  float   xmm1;
};
struct str_m128d_i {
  __m128d ymm1;
  int     i1;
};
union unn_m128d {
  __m128d ymm1;
};
union unn_m128d_f {
  __m128d ymm1;
  float   xmm1;
};
union unn_m128d_fx2 {
  __m128d ymm1;
  float   xmm[2];
};
union unn_m128d_d {
  __m128d ymm1;
  double  xmm1;
};
union unn_m128d_dx2 {
  __m128d ymm1;
  double  xmm[2];
};
union unn_m128d_fc {
  __m128d ymm1;
  float _Complex fc1;
};
union unn_m128d_dc {
  __m128d ymm1;
  double _Complex dc1;
};
union unn_m128d_i {
  __m128d ymm1;
  int     i1;
};
union unn_m128d_str_1 {
  struct str_m128d ymm1;
  union  unn_m128d_f ymm2;
  union  unn_m128d_fx2 ymm3;
  union  unn_m128d_d ymm4;
  union  unn_m128d_fc ymm5;
};
union unn_m128d_str_2 {
  union unn_m128d_str_1 ymm1;
  union unn_m128d_i     ymm2;
};

struct str_m256d {
  __m256d ymm1;
};
struct str_m256dx2 {
  __m256d ymm1;
  __m256d ymm2;
};
struct str_m256dx2_2 {
  __m256d ymm1[2];
};
struct str_m256d_f {
  __m256d ymm1;
  float   xmm1;
};
struct str_m256d_i {
  __m256d ymm1;
  int     i1;
};
union unn_m256d {
  __m256d ymm1;
};
union unn_m256d_f {
  __m256d ymm1;
  float   xmm1;
};
union unn_m256d_fx2 {
  __m256d ymm1;
  float   xmm[2];
};
union unn_m256d_d {
  __m256d ymm1;
  double  xmm1;
};
union unn_m256d_dx2 {
  __m256d ymm1;
  double  xmm[2];
};
union unn_m256d_fc {
  __m256d ymm1;
  float _Complex fc1;
};
union unn_m256d_dc {
  __m256d ymm1;
  double _Complex dc1;
};
union unn_m256d_i {
  __m256d ymm1;
  int     i1;
};
union unn_m256d_str_1 {
  struct str_m256d ymm1;
  union  unn_m256d_f ymm2;
  union  unn_m256d_fx2 ymm3;
  union  unn_m256d_d ymm4;
  union  unn_m256d_fc ymm5;
};
union unn_m256d_str_2 {
  union unn_m256d_str_1 ymm1;
  union unn_m256d_i     ymm2;
};

static void init(float   arg_float[],
		 double  arg_double[],
		 __m128d arg_m128d[],
		 struct str_m128d       arg_struct_m128dx1[],
		 struct str_m128dx2     arg_struct_m128dx2[],
		 struct str_m128dx2_2   arg_struct_m128dx2_2[],
		 struct str_m128d_f     arg_struct_m128d_f[],
		 struct str_m128d_i     arg_struct_m128d_i[],
		 union  unn_m128d       arg_union_m128d[],
		 union  unn_m128d_f     arg_union_m128d_f[],
		 union  unn_m128d_fx2   arg_union_m128d_fx2[],
		 union  unn_m128d_d     arg_union_m128d_d[],
		 union  unn_m128d_dx2   arg_union_m128d_dx2[],
		 union  unn_m128d_fc    arg_union_m128d_fc[],
		 union  unn_m128d_dc    arg_union_m128d_dc[],
		 union  unn_m128d_i     arg_union_m128d_i[],
		 union  unn_m128d_str_1 arg_union_m128d_str_1[],
		 union  unn_m128d_str_2 arg_union_m128d_str_2[],
		 __m256d arg_m256d[],
		 struct str_m256d       arg_struct_m256dx1[],
		 struct str_m256dx2     arg_struct_m256dx2[],
		 struct str_m256dx2_2   arg_struct_m256dx2_2[],
		 struct str_m256d_f     arg_struct_m256d_f[],
		 struct str_m256d_i     arg_struct_m256d_i[],
		 union  unn_m256d       arg_union_m256d[],
		 union  unn_m256d_f     arg_union_m256d_f[],
		 union  unn_m256d_fx2   arg_union_m256d_fx2[],
		 union  unn_m256d_d     arg_union_m256d_d[],
		 union  unn_m256d_dx2   arg_union_m256d_dx2[],
		 union  unn_m256d_fc    arg_union_m256d_fc[],
		 union  unn_m256d_dc    arg_union_m256d_dc[],
		 union  unn_m256d_i     arg_union_m256d_i[],
		 union  unn_m256d_str_1 arg_union_m256d_str_1[],
		 union  unn_m256d_str_2 arg_union_m256d_str_2[],
		 const int n) {
  int i;
  
  for(i=0; i<n; i++) {
    arg_float[i] = (float)i;
    arg_double[i] = (double)i;
    arg_m128d[i] = _mm_set_pd((double)i+0.1, (double)i+0.2);
    arg_struct_m128dx1[i].ymm1              = _mm_set_pd((double)i+0.1,(double)i+0.2);
    arg_struct_m128dx2[i].ymm1              = _mm_set_pd((double)i+0.1,(double)i+0.2);
    arg_struct_m128dx2[i].ymm2              = _mm_set_pd((double)i+0.5,(double)i+0.6);
    arg_struct_m128dx2_2[i].ymm1[0]         = _mm_set_pd((double)i+0.1,(double)i+0.2);
    arg_struct_m128dx2_2[i].ymm1[1]         = _mm_set_pd((double)i+0.5,(double)i+0.6);
    arg_struct_m128d_f[i].ymm1              = _mm_set_pd((double)i+0.1,(double)i+0.2);
    arg_struct_m128d_i[i].ymm1              = _mm_set_pd((double)i+0.1,(double)i+0.2);
    arg_union_m128d[i].ymm1                 = _mm_set_pd((double)i+0.1,(double)i+0.2);
    arg_union_m128d_f[i].ymm1               = _mm_set_pd((double)i+0.1,(double)i+0.2);
    arg_union_m128d_fx2[i].ymm1             = _mm_set_pd((double)i+0.1,(double)i+0.2);
    arg_union_m128d_d[i].ymm1               = _mm_set_pd((double)i+0.1,(double)i+0.2);
    arg_union_m128d_dx2[i].ymm1             = _mm_set_pd((double)i+0.1,(double)i+0.2);
    arg_union_m128d_fc[i].ymm1              = _mm_set_pd((double)i+0.1,(double)i+0.2);
    arg_union_m128d_dc[i].ymm1              = _mm_set_pd((double)i+0.1,(double)i+0.2);
    arg_union_m128d_i[i].ymm1               = _mm_set_pd((double)i+0.1,(double)i+0.2);
    arg_union_m128d_str_1[i].ymm1.ymm1      = _mm_set_pd((double)i+0.1,(double)i+0.2);
    arg_union_m128d_str_2[i].ymm1.ymm1.ymm1 = _mm_set_pd((double)i+0.1,(double)i+0.2);
    arg_m256d[i] = _mm256_set_pd((double)i+0.1, (double)i+0.2, (double)i+0.3, (double)i+0.4);
    arg_struct_m256dx1[i].ymm1 = _mm256_set_pd((double)i+0.1,(double)i+0.2,(double)i+0.3,(double)i+0.4);
    arg_struct_m256dx2[i].ymm1 = _mm256_set_pd((double)i+0.1,(double)i+0.2,(double)i+0.3,(double)i+0.4);
    arg_struct_m256dx2[i].ymm2 = _mm256_set_pd((double)i+0.5,(double)i+0.6,(double)i+0.7,(double)i+0.8);
    arg_struct_m256dx2_2[i].ymm1[0] = _mm256_set_pd((double)i+0.1,(double)i+0.2,(double)i+0.3,(double)i+0.4);
    arg_struct_m256dx2_2[i].ymm1[1] = _mm256_set_pd((double)i+0.5,(double)i+0.6,(double)i+0.7,(double)i+0.8);
    arg_struct_m256d_f[i].ymm1 = _mm256_set_pd((double)i+0.1,(double)i+0.2,(double)i+0.3,(double)i+0.4);
    arg_struct_m256d_i[i].ymm1 = _mm256_set_pd((double)i+0.1,(double)i+0.2,(double)i+0.3,(double)i+0.4);
    arg_union_m256d[i].ymm1
      = _mm256_set_pd((double)i+0.1,(double)i+0.2,(double)i+0.3,(double)i+0.4);
    arg_union_m256d_f[i].ymm1
      = _mm256_set_pd((double)i+0.1,(double)i+0.2,(double)i+0.3,(double)i+0.4);
    arg_union_m256d_fx2[i].ymm1
      = _mm256_set_pd((double)i+0.1,(double)i+0.2,(double)i+0.3,(double)i+0.4);
    arg_union_m256d_d[i].ymm1
      = _mm256_set_pd((double)i+0.1,(double)i+0.2,(double)i+0.3,(double)i+0.4);
    arg_union_m256d_dx2[i].ymm1
      = _mm256_set_pd((double)i+0.1,(double)i+0.2,(double)i+0.3,(double)i+0.4);
    arg_union_m256d_fc[i].ymm1
      = _mm256_set_pd((double)i+0.1,(double)i+0.2,(double)i+0.3,(double)i+0.4);
    arg_union_m256d_dc[i].ymm1
      = _mm256_set_pd((double)i+0.1,(double)i+0.2,(double)i+0.3,(double)i+0.4);
    arg_union_m256d_i[i].ymm1
      = _mm256_set_pd((double)i+0.1,(double)i+0.2,(double)i+0.3,(double)i+0.4);
    arg_union_m256d_str_1[i].ymm1.ymm1
      = _mm256_set_pd((double)i+0.1,(double)i+0.2,(double)i+0.3,(double)i+0.4);
    arg_union_m256d_str_2[i].ymm1.ymm1.ymm1
      = _mm256_set_pd((double)i+0.1,(double)i+0.2,(double)i+0.3,(double)i+0.4);
  }
  
  return;
}

static void print_result_m128(char *title, __m128d result) {
  union xmm{
    __m128d m128d; 
    double d[2];
  };
  union xmm a;
  
  a.m128d = result;
  printf("%s : %f, %f\n", title, a.d[1], a.d[0]);
  
  return;
}

static void print_result_m256(char *title, __m256d result) {
  union avx{
    __m256d m256d; 
    double d[4];
  };
  union avx a;
  
  a.m256d = result;
  printf("%s : %f, %f, %f, %f\n", title, a.d[3], a.d[2], a.d[1], a.d[0]);
  
  return;
}

static __m128d test_abi_aligned_m128d_001(__m128d arg_m128d_1) {
  return arg_m128d_1;
}
static __m128d test_abi_aligned_m128d_002(__m128d arg_m128d_1,
					  __m128d arg_m128d_2) {
  return arg_m128d_2;
}
static __m128d test_abi_aligned_m128d_003(__m128d arg_m128d_1,
					  __m128d arg_m128d_2,
					  __m128d arg_m128d_3) {
  return arg_m128d_3;
}
static __m128d test_abi_aligned_m128d_004(__m128d arg_m128d_1,
					  __m128d arg_m128d_2,
					  __m128d arg_m128d_3,
					  __m128d arg_m128d_4) {
  return arg_m128d_4;
}
static __m128d test_abi_aligned_m128d_005(__m128d arg_m128d_1,
					  __m128d arg_m128d_2,
					  __m128d arg_m128d_3,
					  __m128d arg_m128d_4,
					  __m128d arg_m128d_5) {
  return arg_m128d_5;
}
static __m128d test_abi_aligned_m128d_006(__m128d arg_m128d_1,
					  __m128d arg_m128d_2,
					  __m128d arg_m128d_3,
					  __m128d arg_m128d_4,
					  __m128d arg_m128d_5,
					  __m128d arg_m128d_6) {
  return arg_m128d_6;
}
static __m128d test_abi_aligned_m128d_007(__m128d arg_m128d_1,
					  __m128d arg_m128d_2,
					  __m128d arg_m128d_3,
					  __m128d arg_m128d_4,
					  __m128d arg_m128d_5,
					  __m128d arg_m128d_6,
					  __m128d arg_m128d_7) {
  return arg_m128d_7;
}
static __m128d test_abi_aligned_m128d_008(__m128d arg_m128d_1,
					  __m128d arg_m128d_2,
					  __m128d arg_m128d_3,
					  __m128d arg_m128d_4,
					  __m128d arg_m128d_5,
					  __m128d arg_m128d_6,
					  __m128d arg_m128d_7,
					  __m128d arg_m128d_8) {
  return arg_m128d_8;
}
static __m128d test_abi_aligned_m128d_009(__m128d arg_m128d_1,
					  __m128d arg_m128d_2,
					  __m128d arg_m128d_3,
					  __m128d arg_m128d_4,
					  __m128d arg_m128d_5,
					  __m128d arg_m128d_6,
					  __m128d arg_m128d_7,
					  __m128d arg_m128d_8,
					  __m128d arg_m128d_9) {
  return arg_m128d_9;
}
static __m128d test_abi_unaligned_m128d_001(__m128d arg_m128d_1,
					    __m128d arg_m128d_2,
					    __m128d arg_m128d_3,
					    __m128d arg_m128d_4,
					    __m128d arg_m128d_5,
					    __m128d arg_m128d_6,
					    __m128d arg_m128d_7,
					    __m128d arg_m128d_8,
					    float   arg_float_1,
					    __m128d arg_m128d_9) {
  return arg_m128d_9;
}
static __m128d test_abi_mix_m128d_001(float   arg_float_1,
				      double  arg_double_1,
				      __m128d arg_m128d_1,
				      __m256d arg_m256d_1,
				      float   arg_float_2,
				      double  arg_double_2,
				      __m128d arg_m128d_2,
				      __m256d arg_m256d_2) {
  return arg_m128d_2;
}
static struct str_m128d struct_return_m128_001(struct str_m128d x) {
  return x;
}
static __m128d test_abi_struct_m128d_001(struct str_m128d arg_struct_m128dx1_1) {
  return arg_struct_m128dx1_1.ymm1;
}
static struct str_m128dx2 struct_return_m128_002(struct str_m128dx2 x) {
  return x;
}
static __m128d test_abi_struct_m128d_002(struct str_m128dx2 arg_struct_m128dx2_1) {
  return arg_struct_m128dx2_1.ymm2;
}
static struct str_m128dx2_2 struct_return_m128_003(struct str_m128dx2_2 x) {
  return x;
}
static __m128d test_abi_struct_m128d_003(struct str_m128dx2_2 arg_struct_m128dx2_2_1) {
  return arg_struct_m128dx2_2_1.ymm1[1];
}
static struct str_m128d_f struct_return_m128_004(struct str_m128d_f x) {
  return x;
}
static __m128d test_abi_struct_m128d_004(struct str_m128d_f arg_struct_m128d_f_1) {
  return arg_struct_m128d_f_1.ymm1;
}
static struct str_m128d_i struct_return_m128_005(struct str_m128d_i x) {
  return x;
}
static __m128d test_abi_struct_m128d_005(struct str_m128d_i arg_struct_m128d_i_1) {
  return arg_struct_m128d_i_1.ymm1;
}
static __m128d test_abi_struct_m128d_006(struct str_m128d arg_struct_m128dx1_1,
					 struct str_m128d arg_struct_m128dx1_2,
					 struct str_m128d arg_struct_m128dx1_3,
					 struct str_m128d arg_struct_m128dx1_4,
					 struct str_m128d arg_struct_m128dx1_5,
					 struct str_m128d arg_struct_m128dx1_6,
					 struct str_m128d arg_struct_m128dx1_7,
					 struct str_m128d arg_struct_m128dx1_8,
					 struct str_m128d arg_struct_m128dx1_9) {
  return arg_struct_m128dx1_9.ymm1;
}
static __m128d test_abi_struct_m128d_007(struct str_m128d arg_struct_m128dx1_1,
					 struct str_m128d arg_struct_m128dx1_2,
					 struct str_m128d arg_struct_m128dx1_3,
					 struct str_m128d arg_struct_m128dx1_4,
					 struct str_m128d arg_struct_m128dx1_5,
					 struct str_m128d arg_struct_m128dx1_6,
					 struct str_m128d arg_struct_m128dx1_7,
					 struct str_m128d arg_struct_m128dx1_8,
					 float arg_float_1,
					 struct str_m128d arg_struct_m128dx1_9) {
  return arg_struct_m128dx1_9.ymm1;
}
static union unn_m128d union_return_m128_001(union unn_m128d x) {
  return x;
}
static __m128d test_abi_union_m128d_001(union unn_m128d arg_union_m128d_1) {
  return arg_union_m128d_1.ymm1;
}
static union unn_m128d_f union_return_m128_002(union unn_m128d_f x) {
  return x;
}
static __m128d test_abi_union_m128d_002(union unn_m128d_f arg_union_m128d_f_1) {
  return arg_union_m128d_f_1.ymm1;
}
static union unn_m128d_fx2 union_return_m128_003(union unn_m128d_fx2 x) {
  return x;
}
static __m128d test_abi_union_m128d_003(union unn_m128d_fx2 arg_union_m128d_fx2_1) {
  return arg_union_m128d_fx2_1.ymm1;
}
static union unn_m128d_d union_return_m128_004(union unn_m128d_d x) {
  return x;
}
static __m128d test_abi_union_m128d_004(union unn_m128d_d arg_union_m128d_d_1) {
  return arg_union_m128d_d_1.ymm1;
}
static union unn_m128d_dx2 union_return_m128_005(union unn_m128d_dx2 x) {
  return x;
}
static __m128d test_abi_union_m128d_005(union unn_m128d_dx2 arg_union_m128d_dx2_1) {
  return arg_union_m128d_dx2_1.ymm1;
}
static union unn_m128d_fc union_return_m128_006(union unn_m128d_fc x) {
  return x;
}
static __m128d test_abi_union_m128d_006(union unn_m128d_fc arg_union_m128d_fc_1) {
  return arg_union_m128d_fc_1.ymm1;
}
static union unn_m128d_dc union_return_m128_007(union unn_m128d_dc x) {
  return x;
}
static __m128d test_abi_union_m128d_007(union unn_m128d_dc arg_union_m128d_dc_1) {
  return arg_union_m128d_dc_1.ymm1;
}
static union unn_m128d_i union_return_m128_008(union unn_m128d_i x) {
  return x;
}
static __m128d test_abi_union_m128d_008(union unn_m128d_i arg_union_m128d_i_1) {
  return arg_union_m128d_i_1.ymm1;
}
static union unn_m128d_str_1 union_return_m128_009(union unn_m128d_str_1 x) {
  return x;
}
static __m128d test_abi_union_m128d_009(union unn_m128d_str_1 arg_union_m128d_str_1_1) {
  return arg_union_m128d_str_1_1.ymm1.ymm1;
}
static union unn_m128d_str_2 union_return_m128_010(union unn_m128d_str_2 x) {
  return x;
}
static __m128d test_abi_union_m128d_010(union unn_m128d_str_2 arg_union_m128d_str_2_1) {
  return arg_union_m128d_str_2_1.ymm1.ymm1.ymm1;
}
static __m128d test_abi_union_m128d_011(union unn_m128d arg_union_m128d_1,
					union unn_m128d arg_union_m128d_2,
					union unn_m128d arg_union_m128d_3,
					union unn_m128d arg_union_m128d_4,
					union unn_m128d arg_union_m128d_5,
					union unn_m128d arg_union_m128d_6,
					union unn_m128d arg_union_m128d_7,
					union unn_m128d arg_union_m128d_8,
					union unn_m128d arg_union_m128d_9) {
  return arg_union_m128d_9.ymm1;
}
static __m128d test_abi_union_m128d_012(union unn_m128d arg_union_m128d_1,
					union unn_m128d arg_union_m128d_2,
					union unn_m128d arg_union_m128d_3,
					union unn_m128d arg_union_m128d_4,
					union unn_m128d arg_union_m128d_5,
					union unn_m128d arg_union_m128d_6,
					union unn_m128d arg_union_m128d_7,
					union unn_m128d arg_union_m128d_8,
					float arg_float_1,
					union unn_m128d arg_union_m128d_9) {
  return arg_union_m128d_9.ymm1;
}
static __m128d test_abi_va_arg_m128d001(__m128d arg_m128d_1, ...) {
  __m128d arg_m128d_2;
  va_list ap;
  
  va_start(ap, arg_m128d_1);
  arg_m128d_2 = va_arg(ap, __m128d);
  va_end(ap);
  
  return arg_m128d_2;
}
static __m128d test_abi_va_arg_m128d002(__m128d arg_m128d_1, ...) {
  struct str_m128d arg_struct_m128dx1_1;
  va_list ap;
  
  va_start(ap, arg_m128d_1);
  arg_struct_m128dx1_1 = va_arg(ap, struct str_m128d);
  va_end(ap);
  
  return arg_struct_m128dx1_1.ymm1;
}
static __m128d test_abi_va_arg_m128d003(__m128d arg_m128d_1, ...) {
  union unn_m128d arg_union_m128dx1_1;
  va_list ap;
  
  va_start(ap, arg_m128d_1);
  arg_union_m128dx1_1 = va_arg(ap, union unn_m128d);
  va_end(ap);
  
  return arg_union_m128dx1_1.ymm1;
}
static __m128d test_abi_va_arg_m128d004(__m128d arg_m128d_1, ...) {
  double  arg_double_1;
  __m128d arg_m128d_2;
  va_list ap;
  
  va_start(ap, arg_m128d_1);
  arg_double_1 = va_arg(ap, double);
  UNUSED_VARIABLE(arg_double_1);
  arg_m128d_2 = va_arg(ap, __m128d);
  va_end(ap);
  
  return arg_m128d_2;
}
static __m128d test_abi_va_arg_m128d005(__m128d arg_m128d_1, ...) {
  double  arg_double_1;
  struct str_m128d arg_struct_m128dx1_1;
  va_list ap;
  
  va_start(ap, arg_m128d_1);
  arg_double_1 = va_arg(ap, double);
  UNUSED_VARIABLE(arg_double_1);
  arg_struct_m128dx1_1 = va_arg(ap, struct str_m128d);
  va_end(ap);
  
  return arg_struct_m128dx1_1.ymm1; 
}
static __m128d test_abi_va_arg_m128d006(__m128d arg_m128d_1, ...) {
  double  arg_double_1;
  union unn_m128d arg_union_m128dx1_1;
  va_list ap;
  
  va_start(ap, arg_m128d_1);
  arg_double_1 = va_arg(ap, double);
  UNUSED_VARIABLE(arg_double_1);
  arg_union_m128dx1_1 = va_arg(ap, union unn_m128d);
  va_end(ap);
  
  return arg_union_m128dx1_1.ymm1;
}

static __m256d test_abi_aligned_m256d_001(__m256d arg_m256d_1) {
  return arg_m256d_1;
}
static __m256d test_abi_aligned_m256d_002(__m256d arg_m256d_1,
					  __m256d arg_m256d_2) {
  return arg_m256d_2;
}
static __m256d test_abi_aligned_m256d_003(__m256d arg_m256d_1,
					  __m256d arg_m256d_2,
					  __m256d arg_m256d_3) {
  return arg_m256d_3;
}
static __m256d test_abi_aligned_m256d_004(__m256d arg_m256d_1,
					  __m256d arg_m256d_2,
					  __m256d arg_m256d_3,
					  __m256d arg_m256d_4) {
  return arg_m256d_4;
}
static __m256d test_abi_aligned_m256d_005(__m256d arg_m256d_1,
					  __m256d arg_m256d_2,
					  __m256d arg_m256d_3,
					  __m256d arg_m256d_4,
					  __m256d arg_m256d_5) {
  return arg_m256d_5;
}
static __m256d test_abi_aligned_m256d_006(__m256d arg_m256d_1,
					  __m256d arg_m256d_2,
					  __m256d arg_m256d_3,
					  __m256d arg_m256d_4,
					  __m256d arg_m256d_5,
					  __m256d arg_m256d_6) {
  return arg_m256d_6;
}
static __m256d test_abi_aligned_m256d_007(__m256d arg_m256d_1,
					  __m256d arg_m256d_2,
					  __m256d arg_m256d_3,
					  __m256d arg_m256d_4,
					  __m256d arg_m256d_5,
					  __m256d arg_m256d_6,
					  __m256d arg_m256d_7) {
  return arg_m256d_7;
}
static __m256d test_abi_aligned_m256d_008(__m256d arg_m256d_1,
					  __m256d arg_m256d_2,
					  __m256d arg_m256d_3,
					  __m256d arg_m256d_4,
					  __m256d arg_m256d_5,
					  __m256d arg_m256d_6,
					  __m256d arg_m256d_7,
					  __m256d arg_m256d_8) {
  return arg_m256d_8;
}
static __m256d test_abi_aligned_m256d_009(__m256d arg_m256d_1,
					  __m256d arg_m256d_2,
					  __m256d arg_m256d_3,
					  __m256d arg_m256d_4,
					  __m256d arg_m256d_5,
					  __m256d arg_m256d_6,
					  __m256d arg_m256d_7,
					  __m256d arg_m256d_8,
					  __m256d arg_m256d_9) {
  return arg_m256d_9;
}
static __m256d test_abi_unaligned_m256d_001(__m256d arg_m256d_1,
					    __m256d arg_m256d_2,
					    __m256d arg_m256d_3,
					    __m256d arg_m256d_4,
					    __m256d arg_m256d_5,
					    __m256d arg_m256d_6,
					    __m256d arg_m256d_7,
					    __m256d arg_m256d_8,
					    float   arg_float_1,
					    __m256d arg_m256d_9) {
  return arg_m256d_9;
}
static __m256d test_abi_mix_m256d_001(float   arg_float_1,
				      double  arg_double_1,
				      __m128d arg_m128d_1,
				      __m256d arg_m256d_1,
				      float   arg_float_2,
				      double  arg_double_2,
				      __m128d arg_m128d_2,
				      __m256d arg_m256d_2) {
  return arg_m256d_2;
}
static struct str_m256d struct_return_m256_001(struct str_m256d x) {
  return x;
}
static __m256d test_abi_struct_m256d_001(struct str_m256d arg_struct_m256dx1_1) {
  return arg_struct_m256dx1_1.ymm1;
}
static struct str_m256dx2 struct_return_m256_002(struct str_m256dx2 x) {
  return x;
}
static __m256d test_abi_struct_m256d_002(struct str_m256dx2 arg_struct_m256dx2_1) {
  return arg_struct_m256dx2_1.ymm2;
}
static struct str_m256dx2_2 struct_return_m256_003(struct str_m256dx2_2 x) {
  return x;
}
static __m256d test_abi_struct_m256d_003(struct str_m256dx2_2 arg_struct_m256dx2_2_1) {
  return arg_struct_m256dx2_2_1.ymm1[1];
}
static struct str_m256d_f struct_return_m256_004(struct str_m256d_f x) {
  return x;
}
static __m256d test_abi_struct_m256d_004(struct str_m256d_f arg_struct_m256d_f_1) {
  return arg_struct_m256d_f_1.ymm1;
}
static struct str_m256d_i struct_return_m256_005(struct str_m256d_i x) {
  return x;
}
static __m256d test_abi_struct_m256d_005(struct str_m256d_i arg_struct_m256d_i_1) {
  return arg_struct_m256d_i_1.ymm1;
}
static __m256d test_abi_struct_m256d_006(struct str_m256d arg_struct_m256dx1_1,
					 struct str_m256d arg_struct_m256dx1_2,
					 struct str_m256d arg_struct_m256dx1_3,
					 struct str_m256d arg_struct_m256dx1_4,
					 struct str_m256d arg_struct_m256dx1_5,
					 struct str_m256d arg_struct_m256dx1_6,
					 struct str_m256d arg_struct_m256dx1_7,
					 struct str_m256d arg_struct_m256dx1_8,
					 struct str_m256d arg_struct_m256dx1_9) {
  return arg_struct_m256dx1_9.ymm1;
}
static __m256d test_abi_struct_m256d_007(struct str_m256d arg_struct_m256dx1_1,
					 struct str_m256d arg_struct_m256dx1_2,
					 struct str_m256d arg_struct_m256dx1_3,
					 struct str_m256d arg_struct_m256dx1_4,
					 struct str_m256d arg_struct_m256dx1_5,
					 struct str_m256d arg_struct_m256dx1_6,
					 struct str_m256d arg_struct_m256dx1_7,
					 struct str_m256d arg_struct_m256dx1_8,
					 float arg_float_1,
					 struct str_m256d arg_struct_m256dx1_9) {
  return arg_struct_m256dx1_9.ymm1;
}
static union unn_m256d union_return_m256_001(union unn_m256d x) {
  return x;
}
static __m256d test_abi_union_m256d_001(union unn_m256d arg_union_m256d_1) {
  return arg_union_m256d_1.ymm1;
}
static union unn_m256d_f union_return_m256_002(union unn_m256d_f x) {
  return x;
}
static __m256d test_abi_union_m256d_002(union unn_m256d_f arg_union_m256d_f_1) {
  return arg_union_m256d_f_1.ymm1;
}
static union unn_m256d_fx2 union_return_m256_003(union unn_m256d_fx2 x) {
  return x;
}
static __m256d test_abi_union_m256d_003(union unn_m256d_fx2 arg_union_m256d_fx2_1) {
  return arg_union_m256d_fx2_1.ymm1;
}
static union unn_m256d_d union_return_m256_004(union unn_m256d_d x) {
  return x;
}
static __m256d test_abi_union_m256d_004(union unn_m256d_d arg_union_m256d_d_1) {
  return arg_union_m256d_d_1.ymm1;
}
static union unn_m256d_dx2 union_return_m256_005(union unn_m256d_dx2 x) {
  return x;
}
static __m256d test_abi_union_m256d_005(union unn_m256d_dx2 arg_union_m256d_dx2_1) {
  return arg_union_m256d_dx2_1.ymm1;
}
static union unn_m256d_fc union_return_m256_006(union unn_m256d_fc x) {
  return x;
}
static __m256d test_abi_union_m256d_006(union unn_m256d_fc arg_union_m256d_fc_1) {
  return arg_union_m256d_fc_1.ymm1;
}
static union unn_m256d_dc union_return_m256_007(union unn_m256d_dc x) {
  return x;
}
static __m256d test_abi_union_m256d_007(union unn_m256d_dc arg_union_m256d_dc_1) {
  return arg_union_m256d_dc_1.ymm1;
}
static union unn_m256d_i union_return_m256_008(union unn_m256d_i x) {
  return x;
}
static __m256d test_abi_union_m256d_008(union unn_m256d_i arg_union_m256d_i_1) {
  return arg_union_m256d_i_1.ymm1;
}
static union unn_m256d_str_1 union_return_m256_009(union unn_m256d_str_1 x) {
  return x;
}
static __m256d test_abi_union_m256d_009(union unn_m256d_str_1 arg_union_m256d_str_1_1) {
  return arg_union_m256d_str_1_1.ymm1.ymm1;
}
static union unn_m256d_str_2 union_return_m256_010(union unn_m256d_str_2 x) {
  return x;
}
static __m256d test_abi_union_m256d_010(union unn_m256d_str_2 arg_union_m256d_str_2_1) {
  return arg_union_m256d_str_2_1.ymm1.ymm1.ymm1;
}
static __m256d test_abi_union_m256d_011(union unn_m256d arg_union_m256d_1,
					union unn_m256d arg_union_m256d_2,
					union unn_m256d arg_union_m256d_3,
					union unn_m256d arg_union_m256d_4,
					union unn_m256d arg_union_m256d_5,
					union unn_m256d arg_union_m256d_6,
					union unn_m256d arg_union_m256d_7,
					union unn_m256d arg_union_m256d_8,
					union unn_m256d arg_union_m256d_9) {
  return arg_union_m256d_9.ymm1;
}
static __m256d test_abi_union_m256d_012(union unn_m256d arg_union_m256d_1,
					union unn_m256d arg_union_m256d_2,
					union unn_m256d arg_union_m256d_3,
					union unn_m256d arg_union_m256d_4,
					union unn_m256d arg_union_m256d_5,
					union unn_m256d arg_union_m256d_6,
					union unn_m256d arg_union_m256d_7,
					union unn_m256d arg_union_m256d_8,
					float arg_float_1,
					union unn_m256d arg_union_m256d_9) {
  return arg_union_m256d_9.ymm1;
}
static __m256d test_abi_va_arg_m256d001(__m256d arg_m256d_1, ...) {
  __m256d arg_m256d_2;
  va_list ap;
  
  va_start(ap, arg_m256d_1);
  arg_m256d_2 = va_arg(ap, __m256d);
  va_end(ap);
  
  return arg_m256d_2;
}
static __m256d test_abi_va_arg_m256d002(__m256d arg_m256d_1, ...) {
  struct str_m256d arg_struct_m256dx1_1;
  va_list ap;
  
  va_start(ap, arg_m256d_1);
  arg_struct_m256dx1_1 = va_arg(ap, struct str_m256d);
  va_end(ap);
  
  return arg_struct_m256dx1_1.ymm1;
}
static __m256d test_abi_va_arg_m256d003(__m256d arg_m256d_1, ...) {
  union unn_m256d arg_union_m256dx1_1;
  va_list ap;
  
  va_start(ap, arg_m256d_1);
  arg_union_m256dx1_1 = va_arg(ap, union unn_m256d);
  va_end(ap);
  
  return arg_union_m256dx1_1.ymm1;
}
static __m256d test_abi_va_arg_m256d004(__m256d arg_m256d_1, ...) {
  double  arg_double_1;
  __m256d arg_m256d_2;
  va_list ap;
  
  va_start(ap, arg_m256d_1);
  arg_double_1 = va_arg(ap, double);
  UNUSED_VARIABLE(arg_double_1);
  arg_m256d_2 = va_arg(ap, __m256d);
  va_end(ap);
  
  return arg_m256d_2;
}
static __m256d test_abi_va_arg_m256d005(__m256d arg_m256d_1, ...) {
  double  arg_double_1;
  struct str_m256d arg_struct_m256dx1_1;
  va_list ap;
  
  va_start(ap, arg_m256d_1);
  arg_double_1 = va_arg(ap, double);
  UNUSED_VARIABLE(arg_double_1);
  arg_struct_m256dx1_1 = va_arg(ap, struct str_m256d);
  va_end(ap);
  
  return arg_struct_m256dx1_1.ymm1; 
}
static __m256d test_abi_va_arg_m256d006(__m256d arg_m256d_1, ...) {
  double  arg_double_1;
  union unn_m256d arg_union_m256dx1_1;
  va_list ap;
  
  va_start(ap, arg_m256d_1);
  arg_double_1 = va_arg(ap, double);
  UNUSED_VARIABLE(arg_double_1);
  arg_union_m256dx1_1 = va_arg(ap, union unn_m256d);
  va_end(ap);
  
  return arg_union_m256dx1_1.ymm1;
}

int main(void) {
  float   arg_float[MAX_ARG];
  double  arg_double[MAX_ARG];
  __m128d arg_m128d[MAX_ARG];
  struct str_m128d       arg_struct_m128dx1[MAX_ARG];
  struct str_m128dx2     arg_struct_m128dx2[MAX_ARG];
  struct str_m128dx2_2   arg_struct_m128dx2_2[MAX_ARG];
  struct str_m128d_f     arg_struct_m128d_f[MAX_ARG];
  struct str_m128d_i     arg_struct_m128d_i[MAX_ARG];
  union  unn_m128d       arg_union_m128d[MAX_ARG];
  union  unn_m128d_f     arg_union_m128d_f[MAX_ARG];
  union  unn_m128d_fx2   arg_union_m128d_fx2[MAX_ARG];
  union  unn_m128d_d     arg_union_m128d_d[MAX_ARG];
  union  unn_m128d_dx2   arg_union_m128d_dx2[MAX_ARG];
  union  unn_m128d_fc    arg_union_m128d_fc[MAX_ARG];
  union  unn_m128d_dc    arg_union_m128d_dc[MAX_ARG];
  union  unn_m128d_i     arg_union_m128d_i[MAX_ARG];
  union  unn_m128d_str_1 arg_union_m128d_str_1[MAX_ARG];
  union  unn_m128d_str_2 arg_union_m128d_str_2[MAX_ARG];
  __m128d result_m128d;
  __m256d arg_m256d[MAX_ARG];
  struct str_m256d       arg_struct_m256dx1[MAX_ARG];
  struct str_m256dx2     arg_struct_m256dx2[MAX_ARG];
  struct str_m256dx2_2   arg_struct_m256dx2_2[MAX_ARG];
  struct str_m256d_f     arg_struct_m256d_f[MAX_ARG];
  struct str_m256d_i     arg_struct_m256d_i[MAX_ARG];
  union  unn_m256d       arg_union_m256d[MAX_ARG];
  union  unn_m256d_f     arg_union_m256d_f[MAX_ARG];
  union  unn_m256d_fx2   arg_union_m256d_fx2[MAX_ARG];
  union  unn_m256d_d     arg_union_m256d_d[MAX_ARG];
  union  unn_m256d_dx2   arg_union_m256d_dx2[MAX_ARG];
  union  unn_m256d_fc    arg_union_m256d_fc[MAX_ARG];
  union  unn_m256d_dc    arg_union_m256d_dc[MAX_ARG];
  union  unn_m256d_i     arg_union_m256d_i[MAX_ARG];
  union  unn_m256d_str_1 arg_union_m256d_str_1[MAX_ARG];
  union  unn_m256d_str_2 arg_union_m256d_str_2[MAX_ARG];
  __m256d result_m256d;
  
  init(arg_float,
       arg_double,
       arg_m128d,
       arg_struct_m128dx1,
       arg_struct_m128dx2,
       arg_struct_m128dx2_2,
       arg_struct_m128d_f,
       arg_struct_m128d_i,
       arg_union_m128d,
       arg_union_m128d_f,
       arg_union_m128d_fx2,
       arg_union_m128d_d,
       arg_union_m128d_dx2,
       arg_union_m128d_fc,
       arg_union_m128d_dc,
       arg_union_m128d_i,
       arg_union_m128d_str_1,
       arg_union_m128d_str_2,
       arg_m256d,
       arg_struct_m256dx1,
       arg_struct_m256dx2,
       arg_struct_m256dx2_2,
       arg_struct_m256d_f,
       arg_struct_m256d_i,
       arg_union_m256d,
       arg_union_m256d_f,
       arg_union_m256d_fx2,
       arg_union_m256d_d,
       arg_union_m256d_dx2,
       arg_union_m256d_fc,
       arg_union_m256d_dc,
       arg_union_m256d_i,
       arg_union_m256d_str_1,
       arg_union_m256d_str_2,
       MAX_ARG);
  
  
  result_m128d = test_abi_aligned_m128d_001(arg_m128d[0]);
  print_result_m128("aligned-1                    ", result_m128d);
  result_m128d = test_abi_aligned_m128d_002(arg_m128d[0],
					    arg_m128d[1]);
  print_result_m128("aligned-2                    ", result_m128d);
  result_m128d = test_abi_aligned_m128d_003(arg_m128d[0],
					    arg_m128d[1],
					    arg_m128d[2]);
  print_result_m128("aligned-3                    ", result_m128d);
  result_m128d = test_abi_aligned_m128d_004(arg_m128d[0],
					    arg_m128d[1],
					    arg_m128d[2],
					    arg_m128d[3]);
  print_result_m128("aligned-4                    ", result_m128d);
  result_m128d = test_abi_aligned_m128d_005(arg_m128d[0],
					    arg_m128d[1],
					    arg_m128d[2],
					    arg_m128d[3],
					    arg_m128d[4]);
  print_result_m128("aligned-5                    ", result_m128d);
  result_m128d = test_abi_aligned_m128d_006(arg_m128d[0],
					    arg_m128d[1],
					    arg_m128d[2],
					    arg_m128d[3],
					    arg_m128d[4],
					    arg_m128d[5]);
  print_result_m128("aligned-6                    ", result_m128d);
  result_m128d = test_abi_aligned_m128d_007(arg_m128d[0],
					    arg_m128d[1],
					    arg_m128d[2],
					    arg_m128d[3],
					    arg_m128d[4],
					    arg_m128d[5],
					    arg_m128d[6]);
  print_result_m128("aligned-7                    ", result_m128d);
  result_m128d = test_abi_aligned_m128d_008(arg_m128d[0],
					    arg_m128d[1],
					    arg_m128d[2],
					    arg_m128d[3],
					    arg_m128d[4],
					    arg_m128d[5],
					    arg_m128d[6],
					    arg_m128d[7]);
  print_result_m128("aligned-8                    ", result_m128d);
  result_m128d = test_abi_aligned_m128d_009(arg_m128d[0],
					    arg_m128d[1],
					    arg_m128d[2],
					    arg_m128d[3],
					    arg_m128d[4],
					    arg_m128d[5],
					    arg_m128d[6],
					    arg_m128d[7],
					    arg_m128d[8]);
  print_result_m128("aligned-9                    ", result_m128d);
  
  
  result_m128d = test_abi_unaligned_m128d_001(arg_m128d[0],
					      arg_m128d[1],
					      arg_m128d[2],
					      arg_m128d[3],
					      arg_m128d[4],
					      arg_m128d[5],
					      arg_m128d[6],
					      arg_m128d[7],
					      arg_float[0],
					      arg_m128d[8]);
  print_result_m128("unaligned-1                  ", result_m128d);
  
  
  result_m128d = test_abi_mix_m128d_001(arg_float[0],
					arg_double[0],
					arg_m128d[0],
					arg_m256d[0],
					arg_float[1],
					arg_double[1],
					arg_m128d[1],
					arg_m256d[1]);
  print_result_m128("mixed-1                      ", result_m128d);
  
  
  result_m128d = test_abi_struct_m128d_001(struct_return_m128_001(arg_struct_m128dx1[0]));
  print_result_m128("struct-m128                  ", result_m128d);
  result_m128d = test_abi_struct_m128d_002(struct_return_m128_002(arg_struct_m128dx2[0]));
  print_result_m128("struct-m128x2                ", result_m128d);
  result_m128d = test_abi_struct_m128d_003(struct_return_m128_003(arg_struct_m128dx2_2[0]));
  print_result_m128("struct-m128[2]               ", result_m128d);
  result_m128d = test_abi_struct_m128d_004(struct_return_m128_004(arg_struct_m128d_f[0]));
  print_result_m128("struct-m128+f                ", result_m128d);
  result_m128d = test_abi_struct_m128d_005(struct_return_m128_005(arg_struct_m128d_i[0]));
  print_result_m128("struct-m128+i                ", result_m128d);
  result_m128d = test_abi_struct_m128d_006(arg_struct_m128dx1[0],
					   arg_struct_m128dx1[1],
					   arg_struct_m128dx1[2],
					   arg_struct_m128dx1[3],
					   arg_struct_m128dx1[4],
					   arg_struct_m128dx1[5],
					   arg_struct_m128dx1[6],
					   arg_struct_m128dx1[7],
					   arg_struct_m128dx1[8]);
  print_result_m128("struct-m128-on-mem           ", result_m128d);
  result_m128d = test_abi_struct_m128d_007(arg_struct_m128dx1[0],
					   arg_struct_m128dx1[1],
					   arg_struct_m128dx1[2],
					   arg_struct_m128dx1[3],
					   arg_struct_m128dx1[4],
					   arg_struct_m128dx1[5],
					   arg_struct_m128dx1[6],
					   arg_struct_m128dx1[7],
					   arg_float[0],
					   arg_struct_m128dx1[8]);
  print_result_m128("struct-m128-on-mem(misalign) ", result_m128d);
  
  
  result_m128d = test_abi_union_m128d_001(union_return_m128_001(arg_union_m128d[0]));
  print_result_m128("union-m128                   ", result_m128d);
  result_m128d = test_abi_union_m128d_002(union_return_m128_002(arg_union_m128d_f[0]));
  print_result_m128("union-m128+f                 ", result_m128d);
  result_m128d = test_abi_union_m128d_003(union_return_m128_003(arg_union_m128d_fx2[0]));
  print_result_m128("union-m128+f*2               ", result_m128d);
  result_m128d = test_abi_union_m128d_004(union_return_m128_004(arg_union_m128d_d[0]));
  print_result_m128("union-m128+d                 ", result_m128d);
  result_m128d = test_abi_union_m128d_005(union_return_m128_005(arg_union_m128d_dx2[0]));
  print_result_m128("union-m128+d*2               ", result_m128d);
  result_m128d = test_abi_union_m128d_006(union_return_m128_006(arg_union_m128d_fc[0]));
  print_result_m128("union-m128+fc                ", result_m128d);
  result_m128d = test_abi_union_m128d_007(union_return_m128_007(arg_union_m128d_dc[0]));
  print_result_m128("union-m128+dc                ", result_m128d);
  result_m128d = test_abi_union_m128d_008(union_return_m128_008(arg_union_m128d_i[0]));
  print_result_m128("union-m128+i                 ", result_m128d);
  result_m128d = test_abi_union_m128d_009(union_return_m128_009(arg_union_m128d_str_1[0]));
  print_result_m128("union-struct+union-1         ", result_m128d);
  result_m128d = test_abi_union_m128d_010(union_return_m128_010(arg_union_m128d_str_2[0]));
  print_result_m128("union-struct+union-2         ", result_m128d);
  result_m128d = test_abi_union_m128d_011(arg_union_m128d[0],
					  arg_union_m128d[1],
					  arg_union_m128d[2],
					  arg_union_m128d[3],
					  arg_union_m128d[4],
					  arg_union_m128d[5],
					  arg_union_m128d[6],
					  arg_union_m128d[7],
					  arg_union_m128d[8]);
  print_result_m128("union-m128-on-mem            ", result_m128d);
  result_m128d = test_abi_union_m128d_012(arg_union_m128d[0],
					  arg_union_m128d[1],
					  arg_union_m128d[2],
					  arg_union_m128d[3],
					  arg_union_m128d[4],
					  arg_union_m128d[5],
					  arg_union_m128d[6],
					  arg_union_m128d[7],
					  arg_float[0],
					  arg_union_m128d[8]);
  print_result_m128("union-m128-on-mem(misalign)  ", result_m128d);
  
  
  result_m128d = test_abi_va_arg_m128d001(arg_m128d[0],
					  arg_m128d[1]);
  print_result_m128("va_arg-m128                  ", result_m128d);
  result_m128d = test_abi_va_arg_m128d002(arg_m128d[0],
					  arg_struct_m128dx1[0]);
  print_result_m128("va_arg-struct-m128           ", result_m128d);
  result_m128d = test_abi_va_arg_m128d003(arg_m128d[0],
					  arg_union_m128d[0]);
  print_result_m128("va_arg-union-m128            ", result_m128d);
  result_m128d = test_abi_va_arg_m128d004(arg_m128d[0],
					  arg_double[0],
					  arg_m128d[1]);
  print_result_m128("va_arg-m128-unaligned        ", result_m128d);
  result_m128d = test_abi_va_arg_m128d005(arg_m128d[0],
					  arg_double[0],
					  arg_struct_m128dx1[0]);
  print_result_m128("va_arg-struct-m128-unaligned ", result_m128d);
  result_m128d = test_abi_va_arg_m128d006(arg_m128d[0],
					  arg_double[0],
					  arg_union_m128d[0]);
  print_result_m128("va_arg-union-m128-unaligned  ", result_m128d);
  
  
  result_m256d = test_abi_aligned_m256d_001(arg_m256d[0]);
  print_result_m256("aligned-1                    ", result_m256d);
  result_m256d = test_abi_aligned_m256d_002(arg_m256d[0],
					    arg_m256d[1]);
  print_result_m256("aligned-2                    ", result_m256d);
  result_m256d = test_abi_aligned_m256d_003(arg_m256d[0],
					    arg_m256d[1],
					    arg_m256d[2]);
  print_result_m256("aligned-3                    ", result_m256d);
  result_m256d = test_abi_aligned_m256d_004(arg_m256d[0],
					    arg_m256d[1],
					    arg_m256d[2],
					    arg_m256d[3]);
  print_result_m256("aligned-4                    ", result_m256d);
  result_m256d = test_abi_aligned_m256d_005(arg_m256d[0],
					    arg_m256d[1],
					    arg_m256d[2],
					    arg_m256d[3],
					    arg_m256d[4]);
  print_result_m256("aligned-5                    ", result_m256d);
  result_m256d = test_abi_aligned_m256d_006(arg_m256d[0],
					    arg_m256d[1],
					    arg_m256d[2],
					    arg_m256d[3],
					    arg_m256d[4],
					    arg_m256d[5]);
  print_result_m256("aligned-6                    ", result_m256d);
  result_m256d = test_abi_aligned_m256d_007(arg_m256d[0],
					    arg_m256d[1],
					    arg_m256d[2],
					    arg_m256d[3],
					    arg_m256d[4],
					    arg_m256d[5],
					    arg_m256d[6]);
  print_result_m256("aligned-7                    ", result_m256d);
  result_m256d = test_abi_aligned_m256d_008(arg_m256d[0],
					    arg_m256d[1],
					    arg_m256d[2],
					    arg_m256d[3],
					    arg_m256d[4],
					    arg_m256d[5],
					    arg_m256d[6],
					    arg_m256d[7]);
  print_result_m256("aligned-8                    ", result_m256d);
  result_m256d = test_abi_aligned_m256d_009(arg_m256d[0],
					    arg_m256d[1],
					    arg_m256d[2],
					    arg_m256d[3],
					    arg_m256d[4],
					    arg_m256d[5],
					    arg_m256d[6],
					    arg_m256d[7],
					    arg_m256d[8]);
  print_result_m256("aligned-9                    ", result_m256d);
  
  
  result_m256d = test_abi_unaligned_m256d_001(arg_m256d[0],
					      arg_m256d[1],
					      arg_m256d[2],
					      arg_m256d[3],
					      arg_m256d[4],
					      arg_m256d[5],
					      arg_m256d[6],
					      arg_m256d[7],
					      arg_float[0],
					      arg_m256d[8]);
  print_result_m256("unaligned-1                  ", result_m256d);
  
  
  result_m256d = test_abi_mix_m256d_001(arg_float[0],
					arg_double[0],
					arg_m128d[0],
					arg_m256d[0],
					arg_float[1],
					arg_double[1],
					arg_m128d[1],
					arg_m256d[1]);
  print_result_m256("mixed-1                      ", result_m256d);
  
  
  result_m256d = test_abi_struct_m256d_001(struct_return_m256_001(arg_struct_m256dx1[0]));
  print_result_m256("struct-m256                  ", result_m256d);
  result_m256d = test_abi_struct_m256d_002(struct_return_m256_002(arg_struct_m256dx2[0]));
  print_result_m256("struct-m256x2                ", result_m256d);
  result_m256d = test_abi_struct_m256d_003(struct_return_m256_003(arg_struct_m256dx2_2[0]));
  print_result_m256("struct-m256[2]               ", result_m256d);
  result_m256d = test_abi_struct_m256d_004(struct_return_m256_004(arg_struct_m256d_f[0]));
  print_result_m256("struct-m256+f                ", result_m256d);
  result_m256d = test_abi_struct_m256d_005(struct_return_m256_005(arg_struct_m256d_i[0]));
  print_result_m256("struct-m256+i                ", result_m256d);
  result_m256d = test_abi_struct_m256d_006(arg_struct_m256dx1[0],
					   arg_struct_m256dx1[1],
					   arg_struct_m256dx1[2],
					   arg_struct_m256dx1[3],
					   arg_struct_m256dx1[4],
					   arg_struct_m256dx1[5],
					   arg_struct_m256dx1[6],
					   arg_struct_m256dx1[7],
					   arg_struct_m256dx1[8]);
  print_result_m256("struct-m256-on-mem           ", result_m256d);
  result_m256d = test_abi_struct_m256d_007(arg_struct_m256dx1[0],
					   arg_struct_m256dx1[1],
					   arg_struct_m256dx1[2],
					   arg_struct_m256dx1[3],
					   arg_struct_m256dx1[4],
					   arg_struct_m256dx1[5],
					   arg_struct_m256dx1[6],
					   arg_struct_m256dx1[7],
					   arg_float[0],
					   arg_struct_m256dx1[8]);
  print_result_m256("struct-m256-on-mem(misalign) ", result_m256d);
  
  
  result_m256d = test_abi_union_m256d_001(union_return_m256_001(arg_union_m256d[0]));
  print_result_m256("union-m256                   ", result_m256d);
  result_m256d = test_abi_union_m256d_002(union_return_m256_002(arg_union_m256d_f[0]));
  print_result_m256("union-m256+f                 ", result_m256d);
  result_m256d = test_abi_union_m256d_003(union_return_m256_003(arg_union_m256d_fx2[0]));
  print_result_m256("union-m256+f*2               ", result_m256d);
  result_m256d = test_abi_union_m256d_004(union_return_m256_004(arg_union_m256d_d[0]));
  print_result_m256("union-m256+d                 ", result_m256d);
  result_m256d = test_abi_union_m256d_005(union_return_m256_005(arg_union_m256d_dx2[0]));
  print_result_m256("union-m256+d*2               ", result_m256d);
  result_m256d = test_abi_union_m256d_006(union_return_m256_006(arg_union_m256d_fc[0]));
  print_result_m256("union-m256+fc                ", result_m256d);
  result_m256d = test_abi_union_m256d_007(union_return_m256_007(arg_union_m256d_dc[0]));
  print_result_m256("union-m256+dc                ", result_m256d);
  result_m256d = test_abi_union_m256d_008(union_return_m256_008(arg_union_m256d_i[0]));
  print_result_m256("union-m256+i                 ", result_m256d);
  result_m256d = test_abi_union_m256d_009(union_return_m256_009(arg_union_m256d_str_1[0]));
  print_result_m256("union-struct+union-1         ", result_m256d);
  result_m256d = test_abi_union_m256d_010(union_return_m256_010(arg_union_m256d_str_2[0]));
  print_result_m256("union-struct+union-2         ", result_m256d);
  result_m256d = test_abi_union_m256d_011(arg_union_m256d[0],
					  arg_union_m256d[1],
					  arg_union_m256d[2],
					  arg_union_m256d[3],
					  arg_union_m256d[4],
					  arg_union_m256d[5],
					  arg_union_m256d[6],
					  arg_union_m256d[7],
					  arg_union_m256d[8]);
  print_result_m256("union-m256-on-mem            ", result_m256d);
  result_m256d = test_abi_union_m256d_012(arg_union_m256d[0],
					  arg_union_m256d[1],
					  arg_union_m256d[2],
					  arg_union_m256d[3],
					  arg_union_m256d[4],
					  arg_union_m256d[5],
					  arg_union_m256d[6],
					  arg_union_m256d[7],
					  arg_float[0],
					  arg_union_m256d[8]);
  print_result_m256("union-m256-on-mem(misalign)  ", result_m256d);
  
  
  result_m256d = test_abi_va_arg_m256d001(arg_m256d[0],
					  arg_m256d[1]);
  print_result_m256("va_arg-m256                  ", result_m256d);
  result_m256d = test_abi_va_arg_m256d002(arg_m256d[0],
					  arg_struct_m256dx1[0]);
  print_result_m256("va_arg-struct-m256           ", result_m256d);
  result_m256d = test_abi_va_arg_m256d003(arg_m256d[0],
					  arg_union_m256d[0]);
  print_result_m256("va_arg-union-m256            ", result_m256d);
  result_m256d = test_abi_va_arg_m256d004(arg_m256d[0],
					  arg_double[0],
					  arg_m256d[1]);
  print_result_m256("va_arg-m256-unaligned        ", result_m256d);
  result_m256d = test_abi_va_arg_m256d005(arg_m256d[0],
					  arg_double[0],
					  arg_struct_m256dx1[0]);
  print_result_m256("va_arg-struct-m256-unaligned ", result_m256d);
  result_m256d = test_abi_va_arg_m256d006(arg_m256d[0],
					  arg_double[0],
					  arg_union_m256d[0]);
  print_result_m256("va_arg-union-m256-unaligned  ", result_m256d);
  
  return 0;
}
#else
int main(void) {
  printf("aligned-1                     : 0.100000, 0.200000\n");
  printf("aligned-2                     : 1.100000, 1.200000\n");
  printf("aligned-3                     : 2.100000, 2.200000\n");
  printf("aligned-4                     : 3.100000, 3.200000\n");
  printf("aligned-5                     : 4.100000, 4.200000\n");
  printf("aligned-6                     : 5.100000, 5.200000\n");
  printf("aligned-7                     : 6.100000, 6.200000\n");
  printf("aligned-8                     : 7.100000, 7.200000\n");
  printf("aligned-9                     : 8.100000, 8.200000\n");
  printf("unaligned-1                   : 8.100000, 8.200000\n");
  printf("mixed-1                       : 1.100000, 1.200000\n");
  printf("struct-m128                   : 0.100000, 0.200000\n");
  printf("struct-m128x2                 : 0.500000, 0.600000\n");
  printf("struct-m128[2]                : 0.500000, 0.600000\n");
  printf("struct-m128+f                 : 0.100000, 0.200000\n");
  printf("struct-m128+i                 : 0.100000, 0.200000\n");
  printf("struct-m128-on-mem            : 8.100000, 8.200000\n");
  printf("struct-m128-on-mem(misalign)  : 8.100000, 8.200000\n");
  printf("union-m128                    : 0.100000, 0.200000\n");
  printf("union-m128+f                  : 0.100000, 0.200000\n");
  printf("union-m128+f*2                : 0.100000, 0.200000\n");
  printf("union-m128+d                  : 0.100000, 0.200000\n");
  printf("union-m128+d*2                : 0.100000, 0.200000\n");
  printf("union-m128+fc                 : 0.100000, 0.200000\n");
  printf("union-m128+dc                 : 0.100000, 0.200000\n");
  printf("union-m128+i                  : 0.100000, 0.200000\n");
  printf("union-struct+union-1          : 0.100000, 0.200000\n");
  printf("union-struct+union-2          : 0.100000, 0.200000\n");
  printf("union-m128-on-mem             : 8.100000, 8.200000\n");
  printf("union-m128-on-mem(misalign)   : 8.100000, 8.200000\n");
  printf("va_arg-m128                   : 1.100000, 1.200000\n");
  printf("va_arg-struct-m128            : 0.100000, 0.200000\n");
  printf("va_arg-union-m128             : 0.100000, 0.200000\n");
  printf("va_arg-m128-unaligned         : 1.100000, 1.200000\n");
  printf("va_arg-struct-m128-unaligned  : 0.100000, 0.200000\n");
  printf("va_arg-union-m128-unaligned   : 0.100000, 0.200000\n");
  printf("aligned-1                     : 0.100000, 0.200000, 0.300000, 0.400000\n");
  printf("aligned-2                     : 1.100000, 1.200000, 1.300000, 1.400000\n");
  printf("aligned-3                     : 2.100000, 2.200000, 2.300000, 2.400000\n");
  printf("aligned-4                     : 3.100000, 3.200000, 3.300000, 3.400000\n");
  printf("aligned-5                     : 4.100000, 4.200000, 4.300000, 4.400000\n");
  printf("aligned-6                     : 5.100000, 5.200000, 5.300000, 5.400000\n");
  printf("aligned-7                     : 6.100000, 6.200000, 6.300000, 6.400000\n");
  printf("aligned-8                     : 7.100000, 7.200000, 7.300000, 7.400000\n");
  printf("aligned-9                     : 8.100000, 8.200000, 8.300000, 8.400000\n");
  printf("unaligned-1                   : 8.100000, 8.200000, 8.300000, 8.400000\n");
  printf("mixed-1                       : 1.100000, 1.200000, 1.300000, 1.400000\n");
  printf("struct-m256                   : 0.100000, 0.200000, 0.300000, 0.400000\n");
  printf("struct-m256x2                 : 0.500000, 0.600000, 0.700000, 0.800000\n");
  printf("struct-m256[2]                : 0.500000, 0.600000, 0.700000, 0.800000\n");
  printf("struct-m256+f                 : 0.100000, 0.200000, 0.300000, 0.400000\n");
  printf("struct-m256+i                 : 0.100000, 0.200000, 0.300000, 0.400000\n");
  printf("struct-m256-on-mem            : 8.100000, 8.200000, 8.300000, 8.400000\n");
  printf("struct-m256-on-mem(misalign)  : 8.100000, 8.200000, 8.300000, 8.400000\n");
  printf("union-m256                    : 0.100000, 0.200000, 0.300000, 0.400000\n");
  printf("union-m256+f                  : 0.100000, 0.200000, 0.300000, 0.400000\n");
  printf("union-m256+f*2                : 0.100000, 0.200000, 0.300000, 0.400000\n");
  printf("union-m256+d                  : 0.100000, 0.200000, 0.300000, 0.400000\n");
  printf("union-m256+d*2                : 0.100000, 0.200000, 0.300000, 0.400000\n");
  printf("union-m256+fc                 : 0.100000, 0.200000, 0.300000, 0.400000\n");
  printf("union-m256+dc                 : 0.100000, 0.200000, 0.300000, 0.400000\n");
  printf("union-m256+i                  : 0.100000, 0.200000, 0.300000, 0.400000\n");
  printf("union-struct+union-1          : 0.100000, 0.200000, 0.300000, 0.400000\n");
  printf("union-struct+union-2          : 0.100000, 0.200000, 0.300000, 0.400000\n");
  printf("union-m256-on-mem             : 8.100000, 8.200000, 8.300000, 8.400000\n");
  printf("union-m256-on-mem(misalign)   : 8.100000, 8.200000, 8.300000, 8.400000\n");
  printf("va_arg-m256                   : 1.100000, 1.200000, 1.300000, 1.400000\n");
  printf("va_arg-struct-m256            : 0.100000, 0.200000, 0.300000, 0.400000\n");
  printf("va_arg-union-m256             : 0.100000, 0.200000, 0.300000, 0.400000\n");
  printf("va_arg-m256-unaligned         : 1.100000, 1.200000, 1.300000, 1.400000\n");
  printf("va_arg-struct-m256-unaligned  : 0.100000, 0.200000, 0.300000, 0.400000\n");
  printf("va_arg-union-m256-unaligned   : 0.100000, 0.200000, 0.300000, 0.400000\n");
  return 0;
}
#endif
