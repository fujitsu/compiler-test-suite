#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned int v1 (unsigned int, float);
extern unsigned int (*v2) (unsigned int, float);
extern unsigned int v3 (unsigned int, unsigned char, unsigned int, unsigned short);
extern unsigned int (*v4) (unsigned int, unsigned char, unsigned int, unsigned short);
extern unsigned short v5 (float, struct ss0);
extern unsigned short (*v6) (float, struct ss0);
extern union uu1 v7 (signed int, unsigned int, union uu1);
extern union uu1 (*v8) (signed int, unsigned int, union uu1);
union uu0 v9 (unsigned char);
union uu0 (*v10) (unsigned char) = v9;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v13 = 209;
double v12 = -2176699094621301458.35556;
struct ss0 v11 = { 402163U, 160258U, 41730, };

union uu0 v9 (unsigned char v14)
{
history[history_index++] = (int)v14;
{
for (;;) {
signed int v17 = 1867635929;
unsigned short v16 = 8156;
signed int v15 = -961734187;
trace++;
switch (trace)
{
case 6: 
{
union uu0 v18;
v18.f0 = -41;
return v18;
}
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned int v21;
float v22;
unsigned int v23;
v21 = 2764430596U + 1701071892U;
v22 = 483390124.30315F;
v23 = (*v2) (v21, v22);
history[history_index++] = (int)v23;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
