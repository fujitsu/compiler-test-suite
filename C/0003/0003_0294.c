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
void test_index()
{
svint8_t vi1;
svint16_t vi2;
svint32_t vi4;
svint64_t vi8;
svuint8_t vu1;
svuint16_t vu2;
svuint32_t vu4;
svuint64_t vu8;
vi1 = svindex_s8(i1, i1);
vi2 = svindex_s16(i2, i2);
vi4 = svindex_s32(i4, i4);
vi8 = svindex_s64(i8, i8);
vu1 = svindex_u8(ui1, ui1);
vu2 = svindex_u16(ui2, ui2);
vu4 = svindex_u32(ui4, ui4);
vu8 = svindex_u64(ui8, ui8);
 dummy(vi1,	vi2,	vi4,	vi8);
 dummy(vu1,	vu2,	vu4,	vu8);
}
void test_index_num()
{
svint8_t vi1;
svint16_t vi2;
svint32_t vi4;
svint64_t vi8;
svuint8_t vu1;
svuint16_t vu2;
svuint32_t vu4;
svuint64_t vu8;
vi1 = svindex_s8(i1, 1);
vi2 = svindex_s16(i2, 2);
vi4 = svindex_s32(i4, 3);
vi8 = svindex_s64(i8, 4);
vu1 = svindex_u8(ui1, 5);
vu2 = svindex_u16(ui2, 6);
vu4 = svindex_u32(ui4, 7);
vu8 = svindex_u64(ui8, 8);
 dummy(vi1,	vi2,	vi4,	vi8);
 dummy(vu1,	vu2,	vu4,	vu8);
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
