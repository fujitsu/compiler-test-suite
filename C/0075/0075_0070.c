#include <stdio.h>
int a=0;
void set(int v) { a=v ; }
int main()
{
  if(( 0x00000001 ^ a) !=  0x00000001) printf("N   G\n");
  if(( 0x00000002 ^ a) !=  0x00000002) printf("N   G\n");
  if(( 0x00000004 ^ a) !=  0x00000004) printf("N   G\n");
  if(( 0x00000008 ^ a) !=  0x00000008) printf("N   G\n");
  if(( 0x00000010 ^ a) !=  0x00000010) printf("N   G\n");
  if(( 0x00000020 ^ a) !=  0x00000020) printf("N   G\n");
  if(( 0x00000040 ^ a) !=  0x00000040) printf("N   G\n");
  if(( 0x00000080 ^ a) !=  0x00000080) printf("N   G\n");
  if(( 0x00000100 ^ a) !=  0x00000100) printf("N   G\n");
  if(( 0x00000200 ^ a) !=  0x00000200) printf("N   G\n");
  if(( 0x00000400 ^ a) !=  0x00000400) printf("N   G\n");
  if(( 0x00000800 ^ a) !=  0x00000800) printf("N   G\n");
  if(( 0x00001000 ^ a) !=  0x00001000) printf("N   G\n");
  if(( 0x00002000 ^ a) !=  0x00002000) printf("N   G\n");
  if(( 0x00004000 ^ a) !=  0x00004000) printf("N   G\n");
  if(( 0x00008000 ^ a) !=  0x00008000) printf("N   G\n");
  if(( 0x00010000 ^ a) !=  0x00010000) printf("N   G\n");
  if(( 0x00020000 ^ a) !=  0x00020000) printf("N   G\n");
  if(( 0x00040000 ^ a) !=  0x00040000) printf("N   G\n");
  if(( 0x00080000 ^ a) !=  0x00080000) printf("N   G\n");
  if(( 0x00100000 ^ a) !=  0x00100000) printf("N   G\n");
  if(( 0x00200000 ^ a) !=  0x00200000) printf("N   G\n");
  if(( 0x00400000 ^ a) !=  0x00400000) printf("N   G\n");
  if(( 0x00800000 ^ a) !=  0x00800000) printf("N   G\n");
  if(( 0x01000000 ^ a) !=  0x01000000) printf("N   G\n");
  if(( 0x02000000 ^ a) !=  0x02000000) printf("N   G\n");
  if(( 0x04000000 ^ a) !=  0x04000000) printf("N   G\n");
  if(( 0x08000000 ^ a) !=  0x08000000) printf("N   G\n");
  if(( 0x10000000 ^ a) !=  0x10000000) printf("N   G\n");
  if(( 0x20000000 ^ a) !=  0x20000000) printf("N   G\n");
  if(( 0x40000000 ^ a) !=  0x40000000) printf("N   G\n");
  if(( 0x80000000 ^ a) !=  0x80000000) printf("N   G\n");

  if(( 0x00000001 | a) !=  0x00000001) printf("N   G\n");
  if(( 0x00000002 | a) !=  0x00000002) printf("N   G\n");
  if(( 0x00000004 | a) !=  0x00000004) printf("N   G\n");
  if(( 0x00000008 | a) !=  0x00000008) printf("N   G\n");
  if(( 0x00000010 | a) !=  0x00000010) printf("N   G\n");
  if(( 0x00000020 | a) !=  0x00000020) printf("N   G\n");
  if(( 0x00000040 | a) !=  0x00000040) printf("N   G\n");
  if(( 0x00000080 | a) !=  0x00000080) printf("N   G\n");
  if(( 0x00000100 | a) !=  0x00000100) printf("N   G\n");
  if(( 0x00000200 | a) !=  0x00000200) printf("N   G\n");
  if(( 0x00000400 | a) !=  0x00000400) printf("N   G\n");
  if(( 0x00000800 | a) !=  0x00000800) printf("N   G\n");
  if(( 0x00001000 | a) !=  0x00001000) printf("N   G\n");
  if(( 0x00002000 | a) !=  0x00002000) printf("N   G\n");
  if(( 0x00004000 | a) !=  0x00004000) printf("N   G\n");
  if(( 0x00008000 | a) !=  0x00008000) printf("N   G\n");
  if(( 0x00010000 | a) !=  0x00010000) printf("N   G\n");
  if(( 0x00020000 | a) !=  0x00020000) printf("N   G\n");
  if(( 0x00040000 | a) !=  0x00040000) printf("N   G\n");
  if(( 0x00080000 | a) !=  0x00080000) printf("N   G\n");
  if(( 0x00100000 | a) !=  0x00100000) printf("N   G\n");
  if(( 0x00200000 | a) !=  0x00200000) printf("N   G\n");
  if(( 0x00400000 | a) !=  0x00400000) printf("N   G\n");
  if(( 0x00800000 | a) !=  0x00800000) printf("N   G\n");
  if(( 0x01000000 | a) !=  0x01000000) printf("N   G\n");
  if(( 0x02000000 | a) !=  0x02000000) printf("N   G\n");
  if(( 0x04000000 | a) !=  0x04000000) printf("N   G\n");
  if(( 0x08000000 | a) !=  0x08000000) printf("N   G\n");
  if(( 0x10000000 | a) !=  0x10000000) printf("N   G\n");
  if(( 0x20000000 | a) !=  0x20000000) printf("N   G\n");
  if(( 0x40000000 | a) !=  0x40000000) printf("N   G\n");
  if(( 0x80000000 | a) !=  0x80000000) printf("N   G\n");

   set(0x00000001) ;
  if(( 0x00000001 & a) !=  0x00000001) printf("N   G\n");
   set(0x00000002) ;
  if(( 0x00000002 & a) !=  0x00000002) printf("N   G\n");
   set(0x00000004) ;
  if(( 0x00000004 & a) !=  0x00000004) printf("N   G\n");
   set(0x00000008) ;
  if(( 0x00000008 & a) !=  0x00000008) printf("N   G\n");
   set(0x00000010) ;
  if(( 0x00000010 & a) !=  0x00000010) printf("N   G\n");
   set(0x00000020) ;
  if(( 0x00000020 & a) !=  0x00000020) printf("N   G\n");
   set(0x00000040) ;
  if(( 0x00000040 & a) !=  0x00000040) printf("N   G\n");
   set(0x00000080) ;
  if(( 0x00000080 & a) !=  0x00000080) printf("N   G\n");
   set(0x00000100) ;
  if(( 0x00000100 & a) !=  0x00000100) printf("N   G\n");
   set(0x00000200) ;
  if(( 0x00000200 & a) !=  0x00000200) printf("N   G\n");
   set(0x00000400) ;
  if(( 0x00000400 & a) !=  0x00000400) printf("N   G\n");
   set(0x00000800) ;
  if(( 0x00000800 & a) !=  0x00000800) printf("N   G\n");
   set(0x00001000) ;
  if(( 0x00001000 & a) !=  0x00001000) printf("N   G\n");
   set(0x00002000) ;
  if(( 0x00002000 & a) !=  0x00002000) printf("N   G\n");
   set(0x00004000) ;
  if(( 0x00004000 & a) !=  0x00004000) printf("N   G\n");
   set(0x00008000) ;
  if(( 0x00008000 & a) !=  0x00008000) printf("N   G\n");
   set(0x00010000) ;
  if(( 0x00010000 & a) !=  0x00010000) printf("N   G\n");
   set(0x00020000) ;
  if(( 0x00020000 & a) !=  0x00020000) printf("N   G\n");
   set(0x00040000) ;
  if(( 0x00040000 & a) !=  0x00040000) printf("N   G\n");
   set(0x00080000) ;
  if(( 0x00080000 & a) !=  0x00080000) printf("N   G\n");
   set(0x00100000) ;
  if(( 0x00100000 & a) !=  0x00100000) printf("N   G\n");
   set(0x00200000) ;
  if(( 0x00200000 & a) !=  0x00200000) printf("N   G\n");
   set(0x00400000) ;
  if(( 0x00400000 & a) !=  0x00400000) printf("N   G\n");
   set(0x00800000) ;
  if(( 0x00800000 & a) !=  0x00800000) printf("N   G\n");
   set(0x01000000) ;
  if(( 0x01000000 & a) !=  0x01000000) printf("N   G\n");
   set(0x02000000) ;
  if(( 0x02000000 & a) !=  0x02000000) printf("N   G\n");
   set(0x04000000) ;
  if(( 0x04000000 & a) !=  0x04000000) printf("N   G\n");
   set(0x08000000) ;
  if(( 0x08000000 & a) !=  0x08000000) printf("N   G\n");
   set(0x10000000) ;
  if(( 0x10000000 & a) !=  0x10000000) printf("N   G\n");
   set(0x20000000) ;
  if(( 0x20000000 & a) !=  0x20000000) printf("N   G\n");
   set(0x40000000) ;
  if(( 0x40000000 & a) !=  0x40000000) printf("N   G\n");
   set(0x80000000) ;
  if(( 0x80000000 & a) !=  0x80000000) printf("N   G\n");

  printf("O   K\n");
}
