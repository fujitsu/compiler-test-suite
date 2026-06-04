#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern void v1 (void);
extern void (*v2) (void);
unsigned short v3 (struct ss0);
unsigned short (*v4) (struct ss0) = v3;
extern unsigned char v5 (unsigned short, struct ss0, unsigned int, double);
extern unsigned char (*v6) (unsigned short, struct ss0, unsigned int, double);
struct ss1 v9 (void);
struct ss1 (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
double v13 = -8419621769752649892.61849;
struct ss1 v12 = { 29282, -17853659, 65562406U, 359U, };
union uu0 v11 = {2122398233U };

struct ss1 v9 (void)
{
{
for (;;) {
signed short v16 = -4885;
unsigned char v15 = 16;
signed int v14 = -2022476545;
trace++;
switch (trace)
{
case 1: 
{
struct ss1 v17;
v17.f3 = 51697;
v17.f2 = -3685888;
v17.f1 = 3776638U;
v17.f0 = 438U;
return v17;
}
case 3: 
{
struct ss1 v18;
v18.f3 = 37205;
v18.f2 = -130234;
v18.f1 = 9201552U;
v18.f0 = 383U;
return v18;
}
case 10: 
{
struct ss1 v19;
v19.f3 = 42882;
v19.f2 = 22521974;
v19.f1 = 52227563U;
v19.f0 = 469U;
return v19;
}
default: abort ();
}
}
}
}

unsigned short v3 (struct ss0 v20)
{
history[history_index++] = (int)v20.f2;
history[history_index++] = (int)v20.f1;
history[history_index++] = (int)v20.f0;
{
for (;;) {
signed int v23 = 438725226;
signed short v22 = -15224;
struct ss1 v21 = { 729, 55514215, 21421714U, 474U, };
trace++;
switch (trace)
{
case 5: 
{
unsigned short v24;
struct ss0 v25;
unsigned int v26;
double v27;
unsigned char v28;
v24 = 11004 + 39977;
v25.f2 = 521461U;
v25.f1 = 565427U;
v25.f0 = 61060;
v26 = 1178150981U - 1985153215U;
#if defined(__aarch64__)
v27 =-2147483648;
#else
v27 = -3679745225647985657.28526;
#endif
v28 = (*v6) (v24, v25, v26, v27);
history[history_index++] = (int)v28;
}
break;
case 15: 
return 56833;
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
(*v2) ();
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
