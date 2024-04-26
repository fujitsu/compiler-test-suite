#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#pragma pack(1)
struct unalign_bit_field_aa {
  unsigned long mb:64;
  unsigned long m1:64;
} __attribute__((aligned(1),packed));

#pragma pack(1)
struct unalign_bit_field_ua {
  unsigned long mb:64;
  unsigned long m0:4;
  unsigned long m1:60;
} __attribute__((aligned(1),packed));

#pragma pack(1)
struct unalign_bit_field_au {
  unsigned long mb:64;
  unsigned long m1:60;
  unsigned long m2:4;
} __attribute__((aligned(1),packed));

#pragma pack(1)
struct unalign_bit_field_uu1 {
  unsigned long mb:64;
  unsigned long m0:60;
  unsigned long m1:36;
  unsigned long m2:32;
} __attribute__((aligned(1),packed));

#pragma pack(1)
struct unalign_bit_field_uu2 {
  unsigned long mb:64;
  unsigned long m0:32;
  unsigned long m1:36;
  unsigned long m2:60;
} __attribute__((aligned(1),packed));

#pragma pack(1)
struct unalign_bit_field_uu3 {
  unsigned long mb:64;
  unsigned long m0:4;
  unsigned long m1:64;
  unsigned long m2:60;
} __attribute__((aligned(1),packed));

#pragma pack(1)
struct unalign_bit_field_uu4 {
  unsigned long mb:64;
  unsigned long m0:60;
  unsigned long m1:64;
  unsigned long m2:4;
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
  aa.m1 = 0x1234567887654321;
  dump(&aa, sizeof(aa));
  printf("- loaded value\n");
  printf("%lx\n", aa.m1);
  
  printf("=== pattern ua ===\n");
  printf("size = %lu\n", sizeof(ua));
  memset(&ua, 0x00, sizeof(ua));
  printf("- before store\n");
  dump(&ua, sizeof(ua));
  printf("- after store\n");
  ua.m1 = 0x234567887654321;
  dump(&ua, sizeof(ua));
  printf("- loaded value\n");
  printf("%lx\n", ua.m1);
  
  printf("=== pattern au ===\n");
  printf("size = %lu\n", sizeof(au));
  memset(&au, 0x00, sizeof(au));
  printf("- before store\n");
  dump(&au, sizeof(au));
  printf("- after store\n");
  au.m1 = 0x123456788765432;
  dump(&au, sizeof(au));
  printf("- loaded value\n");
  printf("%lx\n", au.m1);
  
  printf("=== pattern uu1 ===\n");
  printf("size = %lu\n", sizeof(uu1));
  memset(&uu1, 0x00, sizeof(uu1));
  printf("- before store\n");
  dump(&uu1, sizeof(uu1));
  printf("- after store\n");
  uu1.m1 = 0x123454321;
  dump(&uu1, sizeof(uu1));
  printf("- loaded value\n");
  printf("%lx\n", uu1.m1);
  
  printf("=== pattern uu2 ===\n");
  printf("size = %lu\n", sizeof(uu2));
  memset(&uu2, 0x00, sizeof(uu2));
  printf("- before store\n");
  dump(&uu2, sizeof(uu2));
  printf("- after store\n");
  uu2.m1 = 0x123454321;
  dump(&uu2, sizeof(uu2));
  printf("- loaded value\n");
  printf("%lx\n", uu2.m1);
  
  printf("=== pattern uu3 ===\n");
  printf("size = %lu\n", sizeof(uu3));
  memset(&uu3, 0x00, sizeof(uu3));
  printf("- before store\n");
  dump(&uu3, sizeof(uu3));
  printf("- after store\n");
  uu3.m1 = 0x1234567887654321;
  dump(&uu3, sizeof(uu3));
  printf("- loaded value\n");
  printf("%lx\n", uu3.m1);
  
  printf("=== pattern uu4 ===\n");
  printf("size = %lu\n", sizeof(uu4));
  memset(&uu4, 0x00, sizeof(uu4));
  printf("- before store\n");
  dump(&uu4, sizeof(uu4));
  printf("- after store\n");
  uu4.m1 = 0x1234567887654321;
  dump(&uu4, sizeof(uu4));
  printf("- loaded value\n");
  printf("%lx\n", uu4.m1);
  
  return 0;
}

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
