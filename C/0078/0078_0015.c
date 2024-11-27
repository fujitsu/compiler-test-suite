#include <stdio.h>

char a1[1];
char a4[4];
char a8[8];
char a16[16];
char a32[32];
char a64[64];
char a128[128];
char a256[256];
char a512[512];
char a1024[1024];
char a2048[2048];
char a4095[4095];
char a4096[4096];

short b1[1];
short b4[4];
short b8[8];
short b16[16];
short b32[32];
short b64[64];
short b128[128];
short b256[256];
short b512[512];
short b1024[1024];
short b1025[1025];
short b2047[2047];
short b2048[2048];
short b4096[4096];

long long int c1[1];
long long int c4[4];
long long int c8[8];
long long int c16[16];
long long int c32[32];
long long int c64[64];
long long int c128[128];
long long int c256[256];
long long int c511[511];
long long int c512[512];

long double d1[1];
long double d4[4];
long double d8[8];
long double d16[16];
long double d32[32];
long double d64[64];
long double d128[128];
long double d256[256];
long double d512[512];
int main()
{
   printf(" OK  \n");
   printf(" .COMMON  align check. see asm file \n");
}
