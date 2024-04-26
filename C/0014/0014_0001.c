#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#pragma pack(1)
struct unalign_bit_field_aa {
  short mb:16;
  short m1:16;
} __attribute__((aligned(1),packed));

#pragma pack(1)
struct unalign_bit_field_ua {
  short mb:16;
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
  short m1:12;
  short m0:4;
#else
  short m0:4;
  short m1:12;
#endif
} __attribute__((aligned(1),packed));

#pragma pack(1)
struct unalign_bit_field_au {
  short mb:16;
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
  short m2:4;
  short m1:12;
#else
  short m1:12;
  short m2:4;
#endif
} __attribute__((aligned(1),packed));

#pragma pack(1)
struct unalign_bit_field_uu1 {
  short mb:16;
  short m0:12;
  short m1:12;
  short m2:8;
} __attribute__((aligned(1),packed));

#pragma pack(1)
struct unalign_bit_field_uu2 {
  short mb:16;
  short m0:8;
  short m1:12;
  short m2:12;
} __attribute__((aligned(1),packed));

#pragma pack(1)
struct unalign_bit_field_uu3 {
  short mb:16;
  short m0:4;
  short m1:16;
  short m2:12;
} __attribute__((aligned(1),packed));

#pragma pack(1)
struct unalign_bit_field_uu4 {
  short mb:16;
  short m0:12;
  short m1:16;
  short m2:4;
} __attribute__((aligned(1),packed));

static void dump(const void *addr, const size_t size);

struct unalign_bit_field_aa  aa;
struct unalign_bit_field_ua  ua;
struct unalign_bit_field_au  au;
struct unalign_bit_field_uu1 uu1;
struct unalign_bit_field_uu2 uu2;
struct unalign_bit_field_uu3 uu3;
struct unalign_bit_field_uu4 uu4;

int main(void) {
  printf("=== pattern aa ===\n");
  printf("size = %lu\n", sizeof(aa));
  memset(&aa, 0x00, sizeof(aa));
  printf("- before store\n");
  dump(&aa, sizeof(aa));
  printf("- after store\n");
  aa.m1 = 0x1221;
  dump(&aa, sizeof(aa));
  printf("- loaded value\n");
  printf("%x\n", aa.m1);

  printf("=== pattern ua ===\n");
  printf("size = %lu\n", sizeof(ua));
  memset(&ua, 0x00, sizeof(ua));
  printf("- before store\n");
  dump(&ua, sizeof(ua));
  printf("- after store\n");
  ua.m1 = 0x221;
  dump(&ua, sizeof(ua));
  printf("- loaded value\n");
  printf("%x\n", ua.m1);

  printf("=== pattern au ===\n");
  printf("size = %lu\n", sizeof(au));
  memset(&au, 0x00, sizeof(au));
  printf("- before store\n");
  dump(&au, sizeof(au));
  printf("- after store\n");
  au.m1 = 0x122;
  dump(&au, sizeof(au));
  printf("- loaded value\n");
  printf("%x\n", au.m1);

  printf("=== pattern uu1 ===\n");
  printf("size = %lu\n", sizeof(uu1));
  memset(&uu1, 0x00, sizeof(uu1));
  printf("- before store\n");
  dump(&uu1, sizeof(uu1));
  printf("- after store\n");
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
  uu1.m0 = 0x1;
  uu1.m2 = 0x21;
#else
  uu1.m1 = 0x121;
#endif
  dump(&uu1, sizeof(uu1));
  printf("- loaded value\n");
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
  printf("%x%x\n", uu1.m0, uu1.m2);
#else
  printf("%x\n", uu1.m1);
#endif

  printf("=== pattern uu2 ===\n");
  printf("size = %lu\n", sizeof(uu2));
  memset(&uu2, 0x00, sizeof(uu2));
  printf("- before store\n");
  dump(&uu2, sizeof(uu2));
  printf("- after store\n");
  uu2.m1 = 0x121;
  dump(&uu2, sizeof(uu2));
  printf("- loaded value\n");
  printf("%x\n", uu2.m1);

  printf("=== pattern uu3 ===\n");
  printf("size = %lu\n", sizeof(uu3));
  memset(&uu3, 0x00, sizeof(uu3));
  printf("- before store\n");
  dump(&uu3, sizeof(uu3));
  printf("- after store\n");
  uu3.m1 = 0x1221;
  dump(&uu3, sizeof(uu3));
  printf("- loaded value\n");
  printf("%x\n", uu3.m1);

  printf("=== pattern uu4 ===\n");
  printf("size = %lu\n", sizeof(uu4));
  memset(&uu4, 0x00, sizeof(uu4));
  printf("- before store\n");
  dump(&uu4, sizeof(uu4));
  printf("- after store\n");
  uu4.m1 = 0x1221;
  dump(&uu4, sizeof(uu4));
  printf("- loaded value\n");
  printf("%x\n", uu4.m1);

  return 0;
}

#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
static void dump(const void *addr, const size_t size) {
  const int width = 16;
  const unsigned short *p;
  size_t i;

  for(i=0, p=addr; i<size; i+=2, p++) {
    if(i % width == 0) {
      printf("%8zu: ", i);
    }
    printf("%02x ", (unsigned char )(*p >> 8));
    printf("%02x ", (unsigned char )*p);
    if(i % width == width-2 || i == size-2) {
      printf("\n");
    }
  }

  return;
}
#else
static void dump(const void *addr, const size_t size) {
  const int width = 16;
  const unsigned char *p;
  size_t i;

  for(i=0, p=addr; i<size; i++, p++) {
    if(i % width == 0) {
      printf("%8zu: ", i);
    }
    printf("%02x ", *p);
    if(i % width == width-1 || i == size-1) {
      printf("\n");
    }
  }

  return;
}
#endif
