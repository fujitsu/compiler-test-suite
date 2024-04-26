#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
signed char i1;
signed short i2;
signed int i4;
signed long long i8;
unsigned char u1;
unsigned short u2;
unsigned int u4;
unsigned long long u8;
float r4;
double r8;
void test_divr_z()
{
  svbool_t pg;
  svint32_t vi4;
  svint64_t vi8;
  svuint32_t vu4;
  svuint64_t vu8;
  svint32_t i4a,i4b,i4c;
  svint64_t i8a,i8b,i8c;
  svuint32_t u4a,u4b,u4c;
  svuint64_t u8a,u8b,u8c;
  vi4 = svdivr_s32_z( pg,i4a,i4b); 
  vi8 = svdivr_s64_z( pg,i8a,i8b);
  vu4 = svdivr_u32_z( pg,u4a,u4b);
  vu8 = svdivr_u64_z( pg,u8a,u8b);
  dummy(	vi4,	vi8);
  dummy(	vu4,	vu8);
}
void test_divr_m()
{
  svbool_t pg;
  svint32_t vi4;
  svint64_t vi8;
  svuint32_t vu4;
  svuint64_t vu8;
  svint32_t i4a,i4b,i4c;
  svint64_t i8a,i8b,i8c;
  svuint32_t u4a,u4b,u4c;
  svuint64_t u8a,u8b,u8c;
  vi4 = svdivr_s32_m( pg,i4a,i4b); 
  vi8 = svdivr_s64_m( pg,i8a,i8b);
  vu4 = svdivr_u32_m( pg,u4a,u4b);
  vu8 = svdivr_u64_m( pg,u8a,u8b);
  dummy(	vi4,	vi8);
  dummy(	vu4,	vu8);
}
void test_divr_x()
{
  svbool_t pg;
  svint32_t vi4;
  svint64_t vi8;
  svuint32_t vu4;
  svuint64_t vu8;
  svint32_t i4a,i4b,i4c;
  svint64_t i8a,i8b,i8c;
  svuint32_t u4a,u4b,u4c;
  svuint64_t u8a,u8b,u8c;
  vi4 = svdivr_s32_x( pg,i4a,i4b); 
  vi8 = svdivr_s64_x( pg,i8a,i8b);
  vu4 = svdivr_u32_x( pg,u4a,u4b);
  vu8 = svdivr_u64_x( pg,u8a,u8b);
  dummy(	vi4,	vi8);
  dummy(	vu4,	vu8);
}
void test_divr_n_z()
{
  svbool_t pg;
  svint32_t vi4;
  svint64_t vi8;
  svuint32_t vu4;
  svuint64_t vu8;
  svint32_t i4a,i4b,i4c;
  svint64_t i8a,i8b,i8c;
  svuint32_t u4a,u4b,u4c;
  svuint64_t u8a,u8b,u8c;
  vi4 = svdivr_n_s32_z( pg,i4a,i4);
  vi8 = svdivr_n_s64_z( pg,i8a,i8);
  vu4 = svdivr_n_u32_z( pg,u4a,u4);
  vu8 = svdivr_n_u64_z( pg,u8a,u8);
  dummy(	vi4,	vi8);
  dummy(	vu4,	vu8);
}
void test_divr_num_z()
{
  svbool_t pg;
  svint32_t vi4;
  svint64_t vi8;
  svuint32_t vu4;
  svuint64_t vu8;
  svint32_t i4a,i4b,i4c;
  svint64_t i8a,i8b,i8c;
  svuint32_t u4a,u4b,u4c;
  svuint64_t u8a,u8b,u8c;
  vi4 = svdivr_n_s32_z( pg,i4a,4);
  vi8 = svdivr_n_s64_z( pg,i8a,8);
  vu4 = svdivr_n_u32_z( pg,u4a,4);
  vu8 = svdivr_n_u64_z( pg,u8a,8);
  dummy(	vi4,	vi8);
  dummy(	vu4,	vu8);
}
void test_divr_n_m()
{
  svbool_t pg;
  svint32_t vi4;
  svint64_t vi8;
  svuint32_t vu4;
  svuint64_t vu8;
  svint32_t i4a,i4b,i4c;
  svint64_t i8a,i8b,i8c;
  svuint32_t u4a,u4b,u4c;
  svuint64_t u8a,u8b,u8c;
  vi4 = svdivr_n_s32_m( pg,i4a,i4);
  vi8 = svdivr_n_s64_m( pg,i8a,i8);
  vu4 = svdivr_n_u32_m( pg,u4a,u4);
  vu8 = svdivr_n_u64_m( pg,u8a,u8);
  dummy(	vi4,	vi8);
  dummy(	vu4,	vu8);
}
void test_divr_num_m()
{
  svbool_t pg;
  svint32_t vi4;
  svint64_t vi8;
  svuint32_t vu4;
  svuint64_t vu8;
  svint32_t i4a,i4b,i4c;
  svint64_t i8a,i8b,i8c;
  svuint32_t u4a,u4b,u4c;
  svuint64_t u8a,u8b,u8c;
  vi4 = svdivr_n_s32_m( pg,i4a,4);
  vi8 = svdivr_n_s64_m( pg,i8a,8);
  vu4 = svdivr_n_u32_m( pg,u4a,4);
  vu8 = svdivr_n_u64_m( pg,u8a,8);
  dummy(	vi4,	vi8);
  dummy(	vu4,	vu8);
}
void test_divr_n_x()
{
  svbool_t pg;
  svint32_t vi4;
  svint64_t vi8;
  svuint32_t vu4;
  svuint64_t vu8;
  svint32_t i4a,i4b,i4c;
  svint64_t i8a,i8b,i8c;
  svuint32_t u4a,u4b,u4c;
  svuint64_t u8a,u8b,u8c;
  vi4 = svdivr_n_s32_x( pg,i4a,i4);
  vi8 = svdivr_n_s64_x( pg,i8a,i8);
  vu4 = svdivr_n_u32_x( pg,u4a,u4);
  vu8 = svdivr_n_u64_x( pg,u8a,u8);
  dummy(	vi4,	vi8);
  dummy(	vu4,	vu8);
}
void test_divr_num_x()
{
  svbool_t pg;
  svint32_t vi4;
  svint64_t vi8;
  svuint32_t vu4;
  svuint64_t vu8;
  svint32_t i4a,i4b,i4c;
  svint64_t i8a,i8b,i8c;
  svuint32_t u4a,u4b,u4c;
  svuint64_t u8a,u8b,u8c;
  vi4 = svdivr_n_s32_x( pg,i4a,4);
  vi8 = svdivr_n_s64_x( pg,i8a,8);
  vu4 = svdivr_n_u32_x( pg,u4a,4);
  vu8 = svdivr_n_u64_x( pg,u8a,8);
  dummy(	vi4,	vi8);
  dummy(	vu4,	vu8);
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
