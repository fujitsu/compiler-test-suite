#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
float32_t s1;
float r4;
double r8;
void test1()
{
svbool_t  p1,p2,p3,p4,p5,p6;
svfloat32_t a1,a2,a3;
svfloat32_t b1,b2,b3;
svfloat32_t c1,c2,c3;
svfloat32_t d1,d2,d3;
svfloat32_t e1,e2,e3;
svfloat32_t v1,v2,v3,v4,v5;
svint32_t f1,f2;
svuint32_t u1;
  p1 = svptrue_pat_b32(SV_PSTL1KEEP);
  v1 = svmad_f32_z(p1, a1, a2, a3);
  v2 = svmla_f32_z(p1, b1, b2, b3);
  v3 = svmsb_f32_z(p1, c1, c2, c3);
  v4 = svmls_f32_z(p1, d1, d2, d3);
  p2 = svptrue_b32();
  dummy(v1,v2,v3,v4,p2);
}
void test2()
{
svbool_t  p1,p2,p3,p4,p5,p6;
svfloat32_t a1,a2,a3;
svfloat32_t b1,b2,b3;
svfloat32_t c1,c2,c3;
svfloat32_t d1,d2,d3;
svfloat32_t e1,e2,e3;
svfloat32_t v1,v2,v3,v4,v5;
svint32_t f1,f2;
svuint32_t u1;
  p1 = svptrue_pat_b32(SV_PSTL1KEEP);
  v1 = svnmad_f32_z(p1, a1, a2, a3);
  v2 = svnmla_f32_z(p1, b1, b2, b3);
  v3 = svnmsb_f32_z(p1, c1, c2, c3);
  v4 = svnmls_f32_z(p1, d1, d2, d3);
  dummy(v1,v2,v3,v4);
}
void test3()
{
svbool_t  p1,p2,p3,p4,p5,p6;
svfloat32_t a1,a2,a3;
svfloat32_t b1,b2,b3;
svfloat32_t c1,c2,c3;
svfloat32_t d1,d2,d3;
svfloat32_t e1,e2,e3;
svfloat32_t v1,v2,v3,v4,v5;
svint32_t f1,f2;
svuint32_t u1;
  p1 = svptrue_pat_b32(SV_PSTL1KEEP);
  v1 = svsqrt_f32_z(p1, a1);
  v2 = svrecpe_f32(b1);
  v3 = svrecps_f32(c1, c2);
  v4 = svrsqrte_f32(d1);
  v5 = svrsqrts_f32(e1, e2);
  dummy(v1,v2,v3,v4,v5);
}
void test4()
{
svbool_t  p1,p2,p3,p4,p5,p6;
svfloat32_t a1,a2,a3;
svfloat32_t b1,b2,b3;
svfloat32_t c1,c2,c3;
svfloat32_t d1,d2,d3;
svfloat32_t e1,e2,e3;
svfloat32_t v1,v2,v3,v4,v5;
svint32_t f1,f2;
svuint32_t u1;
  p1 = svptrue_pat_b32(SV_PSTL1KEEP);
  p2 = svcmpeq_f32(p1, a1, a2);
  p3 = svcmpeq_n_f32(p1, b1, 0);
  p4 = svcmplt_f32(p1, c1, c2);
  p5 = svcmplt_n_f32(p1, d1, 2);
  p6 = svcmpeq_s32(p1, f1, f2);
  dummy(p1,p2,p3,p4,p5,p6);
}
void test44()
{
svbool_t  p1,p2,p3,p4,p5,p6;
svfloat32_t a1,a2,a3;
svfloat32_t b1,b2,b3;
svfloat32_t c1,c2,c3;
svfloat32_t d1,d2,d3;
svfloat32_t e1,e2,e3;
svfloat32_t v1,v2,v3,v4,v5;
svint32_t f1,f2;
svuint32_t u1;
  p3 = svcmpeq_n_f32(p1, b1, r4);
  p5 = svcmplt_n_f32(p1, d1, r8);
  dummy(p3,p5);
}
void test55()
{
svbool_t  p1,p2,p3,p4,p5,p6;
svfloat32_t a1,a2,a3;
svfloat32_t b1,b2,b3;
svfloat32_t c1,c2,c3;
svfloat32_t d1,d2,d3;
svfloat32_t e1,e2,e3;
svfloat32_t v1,v2,v3,v4,v5;
svint32_t f1,f2;
svuint32_t u1;
  v2 = svdup_n_f32( r4);
  v3 = svdup_n_f32_z(p1, r8);
  dummy(v2,v3);
}
void test5()
{
svbool_t  p1,p2,p3,p4,p5,p6;
svfloat32_t a1,a2,a3;
svfloat32_t b1,b2,b3;
svfloat32_t c1,c2,c3;
svfloat32_t d1,d2,d3;
svfloat32_t e1,e2,e3;
svfloat32_t v1,v2,v3,v4,v5;
svint32_t f1,f2;
svuint32_t u1;
  p1 = svptrue_pat_b32(SV_PSTL1KEEP);
    v1 = svsel_f32(p1, a1, a2);
    v2 = svdup_n_f32( 2);
    v3 = svdup_n_f32_z(p1, 3);
    v4 = svdup_lane_f32(b1, (uint32_t)6);
  dummy(v1,v2,v3,v4);
}
void test6()
{
svbool_t  p1,p2,p3,p4,p5,p6;
svfloat32_t a1,a2,a3;
svfloat32_t b1,b2,b3;
svfloat32_t c1,c2,c3;
svfloat32_t d1,d2,d3;
svfloat32_t e1,e2,e3;
svfloat32_t v1,v2,v3,v4,v5;
svint32_t f1,f2;
svuint32_t u1;
    p1 = svptrue_pat_b32(SV_PSTL1KEEP);
    s1 = svaddv_f32(p1, a1);
    v2 = svtbl_f32(b1, u1);
    p3 = svmov_b_z(p1, p2);
  dummy(v2,p3);
}
void test_add()
{
svbool_t  p1,p2,p3,p4,p5,p6;
svfloat32_t a1,a2,a3;
svfloat32_t b1,b2,b3;
svfloat32_t c1,c2,c3;
svfloat32_t d1,d2,d3;
svfloat32_t e1,e2,e3;
svfloat32_t v1,v2,v3,v4,v5;
svint32_t f1,f2;
svuint32_t u1;
  p1 = svptrue_pat_b32(SV_PSTL1KEEP);
  v1 = svadd_f32_z(p1, a1, a2);
  v2 = svsub_f32_z(p1, b1, b2);
  v3 = svmul_f32_z(p1, c1, c2);
  v4 = svdiv_f32_z(p1, c1, c2);
  dummy(v1,v2,v3,v4);
}
void dummy() {}
int main()
{
  return 0;
}
#else
int main() {
return 0;
}
#endif
