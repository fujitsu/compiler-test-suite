

#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define TYPE long long int
#define OUTSTYLE "%lld"
#define REG1 RDI 
#define REG2 RBX 
#define REG3 RCX 

#define N 10

#if  defined(__aarch64__)
#define RSP "sp"
#define ESP "sp"
#define SP  "sp"
#define SPL "sp"

#define RBP "fp"
#define EBP "fp"
#define BP  "fp"
#define BPL "fp"

#define RDI "x0"
#define EDI "x0"
#define DI  "x0"
#define DIL "x0"

#define RSI "x1"
#define ESI "x1"
#define SI  "x1"
#define SIL "x1"

#define RDX "x2"
#define EDX "x2"
#define DX  "x2"
#define DH  "x2"
#define DL  "x2"

#define RCX "x3"
#define ECX "x3"
#define CX  "x3"
#define CH  "x3"
#define CL  "x3"

#define R8  "x4"
#define R8D "x4"
#define R8W "x4"
#define R8B "x4"

#define R9  "x5"
#define R9D "x5"
#define R9W "x5"
#define R9B "x5"

#define R10  "x10"
#define R10D "x10"
#define R10W "x10"
#define R10B "x10"

#define R13  "x13"
#define R13D "x13"
#define R13W "x13"
#define R13B "x13"

#define RAX "x1"
#define EAX "x1"
#define AX  "x1"
#define AH  "x1"
#define AL  "x1"

#define RBX "x2"
#define EBX "x2"
#define BX  "x2"
#define BH  "x2"
#define BL  "x2"

#define G0  "x0"

#else 

#define RSP "rsp"
#define ESP "esp"
#define SP  "sp"
#define SPL "spl"

#define RBP "rbp"
#define EBP "ebp"
#define BP  "bp"
#define BPL "bpl"

#define RDI "rdi"
#define EDI "edi"
#define DI  "di"
#define DIL "dil"

#define RSI "rsi"
#define ESI "esi"
#define SI  "si"
#define SIL "sil"

#define RDX "rdx"
#define EDX "edx"
#define DX  "dx"
#define DH  "dh"
#define DL  "dl"

#define RCX "rcx"
#define ECX "ecx"
#define CX  "cx"
#define CH  "ch"
#define CL  "cl"

#define R8  "r8"
#define R8D "r8d"
#define R8W "r8w"
#define R8B "r8b"

#define R9  "r9"
#define R9D "r9d"
#define R9W "r9w"
#define R9B "r9b"

#define R10  "r10"
#define R10D "r10d"
#define R10W "r10w"
#define R10B "r10b"

#define R13  "r13"
#define R13D "r13d"
#define R13W "r13w"
#define R13B "r13b"

#define RAX "rax"
#define EAX "eax"
#define AX  "ax"
#define AH  "ah"
#define AL  "al"

#define RBX "rbx"
#define EBX "ebx"
#define BX  "bx"
#define BH  "bh"
#define BL  "bl"

#define G0  "r15"

#endif

struct field {
  TYPE f1;
  TYPE f2;
};

struct bitfield {
  TYPE b1:(sizeof(TYPE)*8/4);
  TYPE b2:(sizeof(TYPE)*8/4);
  TYPE b3:(sizeof(TYPE)*8/4);
  TYPE b4:(sizeof(TYPE)*8/4);
};

static void init(const int n, 
	  TYPE a[n], TYPE b[n], TYPE c[n], 
	  struct field fld[n],
	  struct bitfield bfld[n], 
	  TYPE flag[n]) {
  int i;
  
  for(i=0; i<n; i++) {
    a[i] = i;
    b[i] = i+1;
    c[i] = i+2;
    fld[i].f1 = b[i];
    fld[i].f2 = c[i];
    bfld[i].b1 = -1LL;
    bfld[i].b2 = -1LL;
    bfld[i].b3 = -1LL;
    bfld[i].b4 = -1LL;
    flag[i] = i%2;
  }
  return;
}

static TYPE test_call_return(const TYPE x) {
  register TYPE s __asm__(REG1);
  
  s = x;
  return s;
}

static void test_load_store(const int n, TYPE a[n], const TYPE b[n]) {
  int i;
  register TYPE t __asm__(REG1);
  
  for(i=0; i<n; i++) {
    t = b[i];
    t = test_call_return(t);
    a[i] = t;
  }
  return;
}

static void test_fload_fstore(const int n, TYPE a[n], const TYPE b[n], struct field fld[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE *t2 __asm__(REG2);
  
  
  for(i=0; i<n; i++) {
    t1 = fld[i].f1;
    fld[i].f2 = t1;
    t2 = &(fld[i].f2);
    memcpy(&(a[i]), t2, sizeof(TYPE));
  }
  return;
}

static void test_bload_bstore(const int n, TYPE a[n], const TYPE b[n], struct bitfield bfld[n]) {
  int i;
  register TYPE t __asm__(REG1);
  
  for(i=0; i<n; i++) {
    t = bfld[i].b1;
    bfld[i].b4 = t;
    memcpy(&(a[i]), &(bfld[i]), sizeof(TYPE));
  }
  return;
}

static void test_alloc_free(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE *p = malloc(sizeof(TYPE) * n);
  
  for(i=0; i<n; i++) {
    p[i] = b[i];
  }
  for(i=0; i<n; i++) {
    a[i] = p[i];
  }
  free(p);
  return;
}

static void test_addr(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register const TYPE *t1 __asm__(REG1);
  register TYPE t2 __asm__(REG1);
  
  for(i=0; i<n; i++) {
    t1 = &(b[i]);
    t2 = *t1;
    a[i] = t2;
  }
  return;
}

static void test_addrb(const int n, 
		TYPE * restrict a, const TYPE * restrict b, const TYPE * restrict c) {
  int i;
  register const TYPE * restrict t1 __asm__(REG1);
  register TYPE t2 __asm__(REG1);
  
  for(i=0; i<n; i++) {
    t1 = &(b[i]);
    t2 = *t1;
    a[i] = t2;
  }
  return;
}

static void test_vaarg(const int n, ...) {
  va_list ap;
  register TYPE * a __asm__(REG1);
  register TYPE * b __asm__(REG2);
  int i;
  
  va_start(ap, n);
  a = va_arg(ap, TYPE *);
  b = va_arg(ap, TYPE *);
  for(i=0; i<n; i++) {
    a[i] = b[i];
  }
  va_end(ap);
  return;
}

static void test_add(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = t1 + t2;
    a[i] = t1;
  }
  return;
}

static void test_sub(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = t1 - t2;
    a[i] = t1;
  }
  return;
}

static void test_mul(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = t1 * t2;
    a[i] = t1;
  }
  return;
}

static void test_div(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = t1 / t2;
    a[i] = t1;
  }
  return;
}

static void test_mod(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = t1 % t2;
    a[i] = t1;
  }
  return;
}

static void test_divmod(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  register TYPE t3 __asm__(REG3);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t3 = t1 / t2;
    t1 = t1 % t2;
    a[i] = t1 * t3;
  }
  return;
}

static void test_abs(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t __asm__(REG1);
  
  for(i=0; i<n; i++) {
    t = b[i];
    t = abs(t);
    a[i] = t;
  }
  return;
}

static void test_umin(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t __asm__(REG1);
  
  for(i=0; i<n; i++) {
    t = b[i];
    t = -t;
    a[i] = t;
  }
  return;
}

static void test_max(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = (t1 > t2) ? t1 : t2;
    a[i] = t1;
  }
  return;
}

static void test_min(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = (t1 < t2) ? t1 : t2;
    a[i] = t1;
  }
  return;
}

static void test_maxmin(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  register TYPE t3 __asm__(REG3);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t3 = (t1 > t2) ? t1 : t2;
    t1 = (t1 < t2) ? t1 : t2;
    a[i] = t3 / t1; 
  }
  return;
}

static void test_sll(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = t1 << t2;
    a[i] = t1;
  }
  return;
}

static void test_srl(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register unsigned TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = (unsigned TYPE)b[i];
    t2 = c[i];
    t1 = t1 >> t2;
    a[i] = (TYPE)t1;
  }
  return;
}

static void test_sra(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = t1 >> t2;
    a[i] = t1;
  }
  return;
}

static void test_and(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = t1 & t2;
    a[i] = t1;
  }
  return;
}

static void test_or(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = t1 | t2;
    a[i] = t1;
  }
  return;
}

static void test_xor(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = t1 ^ t2;
    a[i] = t1;
  }
  return;
}

static void test_not(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t __asm__(REG1);
  
  for(i=0; i<n; i++) {
    t = b[i];
    t = !t;
    a[i] = t;
  }
  return;
}

static void test_conv(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register unsigned TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = (unsigned TYPE) t1;
    t1 = (TYPE) t2;
    a[i] = t1;
  }
  return;
}

static void test_eq(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = (t1 == t2);
    a[i] = t1;
  }
  return;
}

static void test_ne(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = (t1 != t2);
    a[i] = t1;
  }
  return;
}

static void test_lt(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = (t1 < t2);
    a[i] = t1;
  }
  return;
}

static void test_le(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = (t1 <= t2);
    a[i] = t1;
  }
  return;
}

static void test_gt(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = (t1 > t2);
    a[i] = t1;
  }
  return;
}

static void test_ge(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = (t1 >= t2);
    a[i] = t1;
  }
  return;
}

static void test_nlt(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = !(t1 < t2);
    a[i] = t1;
  }
  return;
}

static void test_nle(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = !(t1 <= t2);
    a[i] = t1;
  }
  return;
}

static void test_ngt(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = !(t1 > t2);
    a[i] = t1;
  }
  return;
}

static void test_nge(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = !(t1 >= t2);
    a[i] = t1;
  }
  return;
}

static void test_beq(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    if(t1 == t2) {
      continue;
    }
    a[i] = i;
  }
  return;
}

static void test_bne(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    if(t1 != t2) {
      continue;
    }
    a[i] = i;
  }
  return;
}

static void test_blt(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    if(t1 < t2) {
      continue;
    }
    a[i] = i;
  }
  return;
}

static void test_ble(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    if(t1 <= t2) {
      continue;
    }
    a[i] = i;
  }
  return;
}

static void test_bgt(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    if(t1 > t2) {
      continue;
    }
    a[i] = i;
  }
  return;
}

static void test_bge(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    if(t1 >= t2) {
      continue;
    }
    a[i] = i;
  }
  return;
}

static void test_select(const int n, 
		 TYPE a[n], const TYPE b[n], const TYPE c[n], const TYPE flag[n]) {
  int i;
  register TYPE t __asm__(REG1);
  
  for(i=0; i<n; i++) {
    t = flag[i];
    t = t ? i+1 : i+2;
    a[i] = t;
  }
  return;
}

static void test_selload(const int n, 
		  TYPE a[n], const TYPE b[n], const TYPE c[n], const TYPE flag[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = flag[i];
    t2 = a[i];
    if(t1) {
      t2 = b[i];
    }
    a[i] = t2;
  }
  return;
}

static void test_selstore(const int n, 
		   TYPE a[n], const TYPE b[n], const TYPE c[n], const TYPE flag[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = flag[i];
    t2 = b[i];
    if(t1) {
      a[i] = t2;
    }
  }
  return;
}

static void test_selecteq(const int n, 
		   TYPE a[n], const TYPE b[n], const TYPE c[n], const TYPE flag[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = (t1 == t2) ? i+1 : i+2;
    a[i] = t1;
  }
  return;
}

static void test_selectne(const int n, 
		   TYPE a[n], const TYPE b[n], const TYPE c[n], const TYPE flag[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = (t1 != t2) ? i+1 : i+2;
    a[i] = t1;
  }
  return;
}

static void test_selectlt(const int n, 
		   TYPE a[n], const TYPE b[n], const TYPE c[n], const TYPE flag[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = (t1 < t2) ? i+1 : i+2;
    a[i] = t1;
  }
  return;
}

static void test_selectle(const int n, 
		   TYPE a[n], const TYPE b[n], const TYPE c[n], const TYPE flag[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = (t1 <= t2) ? i+1 : i+2;
    a[i] = t1;
  }
  return;
}

static void test_selectgt(const int n, 
		   TYPE a[n], const TYPE b[n], const TYPE c[n], const TYPE flag[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = (t1 > t2) ? i+1 : i+2;
    a[i] = t1;
  }
  return;
}

static void test_selectge(const int n, 
		   TYPE a[n], const TYPE b[n], const TYPE c[n], const TYPE flag[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = (t1 >= t2) ? i+1 : i+2;
    a[i] = t1;
  }
  return;
}

static void test_selectnlt(const int n, 
		    TYPE a[n], const TYPE b[n], const TYPE c[n], const TYPE flag[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = !(t1 < t2) ? i+1 : i+2;
    a[i] = t1;
  }
  return;
}

static void test_selectnle(const int n, 
		    TYPE a[n], const TYPE b[n], const TYPE c[n], const TYPE flag[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = !(t1 <= t2) ? i+1 : i+2;
    a[i] = t1;
  }
  return;
}

static void test_selectngt(const int n, 
		    TYPE a[n], const TYPE b[n], const TYPE c[n], const TYPE flag[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = !(t1 > t2) ? i+1 : i+2;
    a[i] = t1;
  }
  return;
}

static void test_selectnge(const int n, 
		    TYPE a[n], const TYPE b[n], const TYPE c[n], const TYPE flag[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    t1 = !(t1 >= t2) ? i+1 : i+2;
    a[i] = t1;
  }
  return;
}

static void test_gotbl(const int n, TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  register TYPE t1 __asm__(REG1);
  register TYPE t2 __asm__(REG2);
  
  for(i=0; i<n; i++) {
    t1 = b[i];
    t2 = c[i];
    switch(t1) {
    case 0:  t1 = t1; break;
    case 1:  t1 = t2; break;
    case 2:  t1 = t1; break;
    case 3:  t1 = t2; break;
    case 4:  t1 = t1; break;
    case 5:  t1 = t2; break;
    case 6:  t1 = t1; break;
    case 7:  t1 = t2; break;
    case 8:  t1 = t1; break;
    case 9:  t1 = t2; break;
    case 10: t1 = t1; break;
    default: t1 = t2; break;
    }
    a[i] = t1;
  }
  return;
}

static void out(const char * header, const int n, const TYPE a[n], const TYPE b[n], const TYPE c[n]) {
  int i;
  for(i=0; i<n; i++) {
    printf("%s : "
	   "a[%d] = "OUTSTYLE", "
	   "b[%d] = "OUTSTYLE", "
	   "c[%d] = "OUTSTYLE"\n",
	   header, i, a[i], i, b[i], i, c[i]);
  }
  return;
}

 int  lto_sub_17() {
  TYPE a[N], b[N], c[N], flag[N];
  struct field fld[N];
  struct bitfield bfld[N];
  
  init(N, a, b, c, fld, bfld, flag);
  test_load_store(N, a, b);
  out("load/store  ", N, a, b, c);
  test_fload_fstore(N, a, b, fld);
  out("fload/fstore", N, a, b, c);
  test_bload_bstore(N, a, b, bfld);
  out("bload/bstore", N, a, b, c);
  test_alloc_free(N, a, b, c);
  out("alloc/free  ", N, a, b, c);
  test_addr(N, a, b, c);
  out("addr        ", N, a, b, c);
  test_addrb(N, a, b, c);
  out("addrb       ", N, a, b, c);
  test_vaarg(N, a, b, c);
  out("vaarg       ", N, a, b, c);
  test_add(N, a, b, c);
  out("add         ", N, a, b, c);
  test_sub(N, a, b, c);
  out("sub         ", N, a, b, c);
  test_mul(N, a, b, c);
  out("mul         ", N, a, b, c);
  test_div(N, a, b, c);
  out("div         ", N, a, b, c);
  test_mod(N, a, b, c);
  out("mod         ", N, a, b, c);
  test_divmod(N, a, b, c);
  out("divmod      ", N, a, b, c);
  test_abs(N, a, b, c);
  out("abs         ", N, a, b, c);
  test_umin(N, a, b, c);
  out("umin        ", N, a, b, c);
  test_max(N, a, b, c);
  out("max         ", N, a, b, c);
  test_min(N, a, b, c);
  out("min         ", N, a, b, c);
  test_maxmin(N, a, b, c);
  out("maxmin      ", N, a, b, c);
  test_sll(N, a, b, c);
  out("sll         ", N, a, b, c);
  test_srl(N, a, b, c);
  out("srl         ", N, a, b, c);
  test_sra(N, a, b, c);
  out("sra         ", N, a, b, c);
  test_and(N, a, b, c);
  out("and         ", N, a, b, c);
  test_or(N, a, b, c);
  out("or          ", N, a, b, c);
  test_xor(N, a, b, c);
  out("xor         ", N, a, b, c);
  test_not(N, a, b, c);
  out("not         ", N, a, b, c);
  test_conv(N, a, b, c);
  out("conv        ", N, a, b, c);
  test_eq(N, a, b, c);
  out("eq          ", N, a, b, c);
  test_ne(N, a, b, c);
  out("ne          ", N, a, b, c);
  test_lt(N, a, b, c);
  out("lt          ", N, a, b, c);
  test_le(N, a, b, c);
  out("le          ", N, a, b, c);
  test_gt(N, a, b, c);
  out("gt          ", N, a, b, c);
  test_ge(N, a, b, c);
  out("ge          ", N, a, b, c);
  test_nlt(N, a, b, c);
  out("nlt         ", N, a, b, c);
  test_nle(N, a, b, c);
  out("nle         ", N, a, b, c);
  test_ngt(N, a, b, c);
  out("ngt         ", N, a, b, c);
  test_nge(N, a, b, c);
  out("nge         ", N, a, b, c);
  test_beq(N, a, b, c);
  out("beq         ", N, a, b, c);
  test_bne(N, a, b, c);
  out("bne         ", N, a, b, c);
  test_blt(N, a, b, c);
  out("blt         ", N, a, b, c);
  test_ble(N, a, b, c);
  out("ble         ", N, a, b, c);
  test_bgt(N, a, b, c);
  out("bgt         ", N, a, b, c);
  test_bge(N, a, b, c);
  out("bge         ", N, a, b, c);
  test_select(N, a, b, c, flag);
  out("select      ", N, a, b, c);
  test_selload(N, a, b, c, flag);
  out("selload     ", N, a, b, c);
  test_selstore(N, a, b, c, flag);
  out("selstore    ", N, a, b, c);
  test_selecteq(N, a, b, c, flag);
  out("selecteq    ", N, a, b, c);
  test_selectne(N, a, b, c, flag);
  out("selectne    ", N, a, b, c);
  test_selectlt(N, a, b, c, flag);
  out("selectlt    ", N, a, b, c);
  test_selectle(N, a, b, c, flag);
  out("selectle    ", N, a, b, c);
  test_selectgt(N, a, b, c, flag);
  out("selectgt    ", N, a, b, c);
  test_selectge(N, a, b, c, flag);
  out("selectge    ", N, a, b, c);
  test_selectnlt(N, a, b, c, flag);
  out("selectnlt   ", N, a, b, c);
  test_selectnle(N, a, b, c, flag);
  out("selectnle   ", N, a, b, c);
  test_selectngt(N, a, b, c, flag);
  out("selectngt   ", N, a, b, c);
  test_selectnge(N, a, b, c, flag);
  out("selectnge   ", N, a, b, c);
  test_gotbl(N, a, b, c);
  out("gotbl       ", N, a, b, c);
  
  return 0;
}
