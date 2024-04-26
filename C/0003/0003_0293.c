#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
signed char i1;
signed short i2;
signed int i4;
signed long long i8;
unsigned char ui1;
unsigned short ui2;
unsigned int ui4;
unsigned long long ui8;
float r4;
double r8;
void test_dup()
{
svint8_t vi1;
svint16_t vi2;
svint32_t vi4;
svint64_t vi8;
svuint8_t vu1;
svuint16_t vu2;
svuint32_t vu4;
svuint64_t vu8;
svfloat32_t vr4;
svfloat64_t vr8;
svbool_t pg;
vi1 = svdup_n_s8(i1);
vi2 = svdup_n_s16(i2);
vi4 = svdup_n_s32(i4);
vi8 = svdup_n_s64(i8);
vu1 = svdup_n_u8(ui1);
vu2 = svdup_n_u16(ui2);
vu4 = svdup_n_u32(ui4);
vu8 = svdup_n_u64(ui8);
vr4 = svdup_n_f32(r4);
vr8 = svdup_n_f64(r8);
 dummy(vi1,	vi2,	vi4,	vi8);
 dummy(vu1,	vu2,	vu4,	vu8);
 dummy(vr4,	vr8);
}
void test_dup_num()
{
svint8_t vi1;
svint16_t vi2;
svint32_t vi4;
svint64_t vi8;
svuint8_t vu1;
svuint16_t vu2;
svuint32_t vu4;
svuint64_t vu8;
svfloat32_t vr4;
svfloat64_t vr8;
svbool_t pg;
vi1 = svdup_n_s8(1);
vi2 = svdup_n_s16(2);
vi4 = svdup_n_s32(4);
vi8 = svdup_n_s64(8);
vu1 = svdup_n_u8(1);
vu2 = svdup_n_u16(2);
vu4 = svdup_n_u32(4);
vu8 = svdup_n_u64(8);
vr4 = svdup_n_f32(4);
vr8 = svdup_n_f64(8);
 dummy(vi1,	vi2,	vi4,	vi8);
 dummy(vu1,	vu2,	vu4,	vu8);
 dummy(vr4,	vr8);
}
void test_dup_z()
{
svint8_t vi1;
svint16_t vi2;
svint32_t vi4;
svint64_t vi8;
svuint8_t vu1;
svuint16_t vu2;
svuint32_t vu4;
svuint64_t vu8;
svfloat32_t vr4;
svfloat64_t vr8;
svbool_t pg;
vi1 = svdup_n_s8_z( pg, i1);
vi1 = svdup_n_s8_z( pg, 1);
vi2 = svdup_n_s16_z( pg, i2);
vi4 = svdup_n_s32_z( pg, i4);
vi8 = svdup_n_s64_z( pg, i8);
vu1 = svdup_n_u8_z( pg, ui1);
vu2 = svdup_n_u16_z( pg, ui2);
vu4 = svdup_n_u32_z( pg, ui4);
vu8 = svdup_n_u64_z( pg, ui8);
vr4 = svdup_n_f32_z( pg, r4);
vr8 = svdup_n_f64_z( pg, r8);
 dummy(vi1,	vi2,	vi4,	vi8);
 dummy(vu1,	vu2,	vu4,	vu8);
 dummy(vr4,	vr8);
}
void test_dup_num_z()
{
svint8_t vi1;
svint16_t vi2;
svint32_t vi4;
svint64_t vi8;
svuint8_t vu1;
svuint16_t vu2;
svuint32_t vu4;
svuint64_t vu8;
svfloat32_t vr4;
svfloat64_t vr8;
svbool_t pg;
vi1 = svdup_n_s8_z( pg, 1);
vi2 = svdup_n_s16_z( pg, 2);
vi4 = svdup_n_s32_z( pg, 4);
vi8 = svdup_n_s64_z( pg, 8);
vu1 = svdup_n_u8_z( pg, 1);
vu2 = svdup_n_u16_z( pg, 2);
vu4 = svdup_n_u32_z( pg, 4);
vu8 = svdup_n_u64_z( pg, 8);
vr4 = svdup_n_f32_z( pg, 4);
vr8 = svdup_n_f64_z( pg, 8);
 dummy(vi1,	vi2,	vi4,	vi8);
 dummy(vu1,	vu2,	vu4,	vu8);
 dummy(vr4,	vr8);
}
void test_dup_m()
{
svint8_t vi1;
svint16_t vi2;
svint32_t vi4;
svint64_t vi8;
svuint8_t vu1;
svuint16_t vu2;
svuint32_t vu4;
svuint64_t vu8;
svfloat32_t vr4;
svfloat64_t vr8;
svbool_t pg;
vi1 = svdup_n_s8_m(vi1,  pg, i1);
vi2 = svdup_n_s16_m(vi2,  pg, i2);
vi4 = svdup_n_s32_m(vi4,  pg, i4);
vi8 = svdup_n_s64_m(vi8,  pg, i8);
vu1 = svdup_n_u8_m(vu1,  pg, ui1);
vu2 = svdup_n_u16_m(vu2,  pg, ui2);
vu4 = svdup_n_u32_m(vu4,  pg, ui4);
vu8 = svdup_n_u64_m(vu8,  pg, ui8);
vr4 = svdup_n_f32_m(vr4,  pg,r4);
vr8 = svdup_n_f64_m(vr8,  pg,r8);
 dummy(vi1,	vi2,	vi4,	vi8);
 dummy(vu1,	vu2,	vu4,	vu8);
 dummy(vr4,	vr8);
}
void test_dup_num_m()
{
svint8_t vi1;
svint16_t vi2;
svint32_t vi4;
svint64_t vi8;
svuint8_t vu1;
svuint16_t vu2;
svuint32_t vu4;
svuint64_t vu8;
svfloat32_t vr4;
svfloat64_t vr8;
svbool_t pg;
vi1 = svdup_n_s8_m(vi1,  pg, 1);
vi2 = svdup_n_s16_m(vi2,  pg, 2);
vi4 = svdup_n_s32_m(vi4,  pg, 4);
vi8 = svdup_n_s64_m(vi8,  pg, 8);
vu1 = svdup_n_u8_m(vu1,  pg, 1);
vu2 = svdup_n_u16_m(vu2,  pg, 2);
vu4 = svdup_n_u32_m(vu4,  pg, 4);
vu8 = svdup_n_u64_m(vu8,  pg, 8);
vr4 = svdup_n_f32_m(vr4,  pg,4);
vr8 = svdup_n_f64_m(vr8,  pg,8);
 dummy(vi1,	vi2,	vi4,	vi8);
 dummy(vu1,	vu2,	vu4,	vu8);
 dummy(vr4,	vr8);
}
void test_dup_x()
{
svint8_t vi1;
svint16_t vi2;
svint32_t vi4;
svint64_t vi8;
svuint8_t vu1;
svuint16_t vu2;
svuint32_t vu4;
svuint64_t vu8;
svfloat32_t vr4;
svfloat64_t vr8;
svbool_t pg;
vi1 = svdup_n_s8_x( pg, i1);
vi2 = svdup_n_s16_x( pg, i2);
vi4 = svdup_n_s32_x( pg, i4);
vi8 = svdup_n_s64_x( pg, i8);
vu1 = svdup_n_u8_x( pg, ui1);
vu2 = svdup_n_u16_x( pg, ui2);
vu4 = svdup_n_u32_x( pg, ui4);
vu8 = svdup_n_u64_x( pg, ui8);
vr4 = svdup_n_f32_x( pg, r4);
vr8 = svdup_n_f64_x( pg, r8);
 dummy(vi1,	vi2,	vi4,	vi8);
 dummy(vu1,	vu2,	vu4,	vu8);
 dummy(vr4,	vr8);
}
void test_dup_num_x()
{
svint8_t vi1;
svint16_t vi2;
svint32_t vi4;
svint64_t vi8;
svuint8_t vu1;
svuint16_t vu2;
svuint32_t vu4;
svuint64_t vu8;
svfloat32_t vr4;
svfloat64_t vr8;
svbool_t pg;
vi1 = svdup_n_s8_x( pg, 1);
vi2 = svdup_n_s16_x( pg, 2);
vi4 = svdup_n_s32_x( pg, 4);
vi8 = svdup_n_s64_x( pg, 8);
vu1 = svdup_n_u8_x( pg, 1);
vu2 = svdup_n_u16_x( pg, 2);
vu4 = svdup_n_u32_x( pg, 4);
vu8 = svdup_n_u64_x( pg, 8);
vr4 = svdup_n_f32_x( pg, 4);
vr8 = svdup_n_f64_x( pg, 8);
 dummy(vi1,	vi2,	vi4,	vi8);
 dummy(vu1,	vu2,	vu4,	vu8);
 dummy(vr4,	vr8);
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
