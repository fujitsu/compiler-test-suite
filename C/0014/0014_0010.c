#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#pragma pack(1)
struct unalign_bit_field_aa {
  unsigned char mb:8;
  unsigned char m1:8;
} __attribute__((aligned(1),packed));

#pragma pack(1)
struct unalign_bit_field_ua {
  unsigned char mb:8;
  unsigned char m0:4;
  unsigned char m1:4;
} __attribute__((aligned(1),packed));

#pragma pack(1)
struct unalign_bit_field_au {
  unsigned char mb:8;
  unsigned char m1:4;
  unsigned char m2:4;
} __attribute__((aligned(1),packed));

#pragma pack(1)
struct unalign_bit_field_uu1 {
  unsigned char mb:8;
  unsigned char m0:4;
  unsigned char m1:8;
  unsigned char m2:4;
} __attribute__((aligned(1),packed));

static void dump(const void *addr, const size_t size);

struct unalign_bit_field_aa  aa;
struct unalign_bit_field_ua  ua;
struct unalign_bit_field_au  au;
struct unalign_bit_field_uu1 uu1;

int main(void) {
  printf("=== pattern aa ===\n");
  printf("size = %lu\n", sizeof(aa));
  memset(&aa, 0x00, sizeof(aa));
  printf("- before store\n");
  dump(&aa, sizeof(aa));
  printf("- after store\n");
  aa.m1 = 0x12;
  dump(&aa, sizeof(aa));
  printf("- loaded value\n");
  printf("%x\n", aa.m1);
  
  printf("=== pattern ua ===\n");
  printf("size = %lu\n", sizeof(ua));
  memset(&ua, 0x00, sizeof(ua));
  printf("- before store\n");
  dump(&ua, sizeof(ua));
  printf("- after store\n");
  ua.m1 = 0x1;
  dump(&ua, sizeof(ua));
  printf("- loaded value\n");
  printf("%x\n", ua.m1);
  
  printf("=== pattern au ===\n");
  printf("size = %lu\n", sizeof(au));
  memset(&au, 0x00, sizeof(au));
  printf("- before store\n");
  dump(&au, sizeof(au));
  printf("- after store\n");
  au.m1 = 0x1;
  dump(&au, sizeof(au));
  printf("- loaded value\n");
  printf("%x\n", au.m1);
  
  printf("=== pattern uu1 ===\n");
  printf("size = %lu\n", sizeof(uu1));
  memset(&uu1, 0x00, sizeof(uu1));
  printf("- before store\n");
  dump(&uu1, sizeof(uu1));
  printf("- after store\n");
  uu1.m1 = 0x12;
  dump(&uu1, sizeof(uu1));
  printf("- loaded value\n");
  printf("%x\n", uu1.m1);
  
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
