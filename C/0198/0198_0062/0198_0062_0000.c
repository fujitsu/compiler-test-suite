#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern float v1 (unsigned short, signed int);
extern float (*v2) (unsigned short, signed int);
struct ss1 v3 (signed int, union uu0, struct ss0);
struct ss1 (*v4) (signed int, union uu0, struct ss0) = v3;
extern unsigned short v5 (union uu1);
extern unsigned short (*v6) (union uu1);
extern signed char v7 (float, union uu1, float, union uu0);
extern signed char (*v8) (float, union uu1, float, union uu0);
extern signed short v9 (unsigned char, union uu0);
extern signed short (*v10) (unsigned char, union uu0);
extern int history[];
extern int history_index;
extern int trace;
struct ss1 v13 = { 13245, 2901307, 34618860U, 397U, };
unsigned char v12 = 55;
union uu1 v11 = {184156254 };

struct ss1 v3 (signed int v14, union uu0 v15, struct ss0 v16)
{
history[history_index++] = (int)v14;
history[history_index++] = (int)v15.f3;
history[history_index++] = (int)v16.f2;
history[history_index++] = (int)v16.f1;
history[history_index++] = (int)v16.f0;
{
for (;;) {
union uu0 v19 = {2384727586U };
float v18 = -860647678.13038F;
float v17 = -1683087448.38049F;
trace++;
switch (trace)
{
case 2: 
{
struct ss1 v20;
v20.f3 = 60520;
v20.f2 = -23535602;
v20.f1 = 56298629U;
v20.f0 = 465U;
return v20;
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
unsigned short v23;
signed int v24;
float v25;
v23 = 32553 + 42927;
v24 = -2053158616 + 45153169;
v25 = (*v2) (v23, v24);
history[history_index++] = (int)v25;
}
} while (trace < 9);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
