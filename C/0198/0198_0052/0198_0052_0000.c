#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
static unsigned char v1 (double);
static unsigned char (*v2) (double) = v1;
extern void v3 (unsigned int, struct ss1, signed short, unsigned int);
extern void (*v4) (unsigned int, struct ss1, signed short, unsigned int);
extern double v5 (unsigned int, union uu1);
extern double (*v6) (unsigned int, union uu1);
struct ss1 v7 (float, signed int);
struct ss1 (*v8) (float, signed int) = v7;
float v9 (void);
float (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
union uu0 v13 = {2198706024U };
unsigned short v12 = 9025;
union uu1 v11 = {-20723833 };

float v9 (void)
{
{
for (;;) {
double v16 = -4785961155029050466.16644;
struct ss0 v15 = { 981271U, 141247U, 54650, };
unsigned int v14 = 2240440077U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

struct ss1 v7 (float v17, signed int v18)
{
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
{
for (;;) {
float v21 = 1918191847.53238F;
unsigned short v20 = 59639;
signed char v19 = -7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v1 (double v22)
{
history[history_index++] = (int)v22;
{
for (;;) {
struct ss1 v25 = { 4845, 1861495, 59594329U, 344U, };
float v24 = 1435516700.48848F;
union uu1 v23 = {-149400061 };
trace++;
switch (trace)
{
case 0: 
{
unsigned int v26;
struct ss1 v27;
signed short v28;
unsigned int v29;
v26 = 3478008990U + 1905047906U;
v27.f3 = 60939;
v27.f2 = -8150783;
v27.f1 = 65264450U;
v27.f0 = 479U;
v28 = 28393 + -17597;
v29 = 1194981391U + 2951290000U;
v3 (v26, v27, v28, v29);
}
break;
case 16: 
return 141;
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
double v32;
unsigned char v33;
v32 = 2147483647.23797;
v33 = v1 (v32);
history[history_index++] = (int)v33;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
