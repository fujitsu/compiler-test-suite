#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern void v1 (double);
extern void (*v2) (double);
float v3 (struct ss1, struct ss1, signed int, signed int);
float (*v4) (struct ss1, struct ss1, signed int, signed int) = v3;
extern signed int v5 (unsigned int);
extern signed int (*v6) (unsigned int);
struct ss0 v7 (unsigned char, unsigned short, unsigned char, float);
struct ss0 (*v8) (unsigned char, unsigned short, unsigned char, float) = v7;
extern signed int v9 (unsigned short, float, unsigned int);
extern signed int (*v10) (unsigned short, float, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v13 = 11;
union uu1 v12 = {116151110 };
union uu0 v11 = {4031952858U };

struct ss0 v7 (unsigned char v14, unsigned short v15, unsigned char v16, float v17)
{
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
{
for (;;) {
double v20 = 4165316456659646900.36173;
union uu0 v19 = {2587071012U };
unsigned short v18 = 32957;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

float v3 (struct ss1 v21, struct ss1 v22, signed int v23, signed int v24)
{
history[history_index++] = (int)v21.f3;
history[history_index++] = (int)v21.f2;
history[history_index++] = (int)v21.f1;
history[history_index++] = (int)v21.f0;
history[history_index++] = (int)v22.f3;
history[history_index++] = (int)v22.f2;
history[history_index++] = (int)v22.f1;
history[history_index++] = (int)v22.f0;
history[history_index++] = (int)v23;
history[history_index++] = (int)v24;
{
for (;;) {
unsigned short v27 = 45472;
struct ss0 v26 = { 808723U, 683194U, 5513, };
struct ss0 v25 = { 155728U, 575467U, 23755, };
trace++;
switch (trace)
{
case 4: 
return -824857667.61059F;
case 8: 
return 477527915.19658F;
case 10: 
return 431489258.49160F;
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
double v30;
#if defined(__aarch64__)
v30 = -2147483648;
#else
v30 = -6781730665390586390.10548;
#endif
(*v2) (v30);
}
} while (trace < 11);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
