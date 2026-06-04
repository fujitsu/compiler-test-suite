#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned short v1 (struct ss0, float, struct ss0);
extern unsigned short (*v2) (struct ss0, float, struct ss0);
unsigned char v3 (struct ss1, signed short);
unsigned char (*v4) (struct ss1, signed short) = v3;
signed char v5 (void);
signed char (*v6) (void) = v5;
extern union uu0 v7 (unsigned short, unsigned char, unsigned char);
extern union uu0 (*v8) (unsigned short, unsigned char, unsigned char);
unsigned short v9 (signed short, union uu0, unsigned char);
unsigned short (*v10) (signed short, union uu0, unsigned char) = v9;
extern int history[];
extern int history_index;
extern int trace;
signed char v13 = -40;
float v12 = -1138782284.21765F;
signed short v11 = 9608;

unsigned short v9 (signed short v14, union uu0 v15, unsigned char v16)
{
history[history_index++] = (int)v14;
history[history_index++] = (int)v15.f3;
history[history_index++] = (int)v16;
{
for (;;) {
struct ss1 v19 = { 8602, 39310176, 40401326U, 88U, };
unsigned short v18 = 10034;
union uu1 v17 = {432359336 };
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (void)
{
{
for (;;) {
struct ss0 v22 = { 925139U, 30694U, 8599, };
signed short v21 = -30261;
signed int v20 = 2094417690;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (struct ss1 v23, signed short v24)
{
history[history_index++] = (int)v23.f3;
history[history_index++] = (int)v23.f2;
history[history_index++] = (int)v23.f1;
history[history_index++] = (int)v23.f0;
history[history_index++] = (int)v24;
{
for (;;) {
signed char v27 = -99;
union uu1 v26 = {-531201345 };
unsigned int v25 = 1786008683U;
trace++;
switch (trace)
{
case 2: 
return 172;
case 11: 
return 86;
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
struct ss0 v30;
float v31;
struct ss0 v32;
unsigned short v33;
v30.f2 = 140356U;
v30.f1 = 741303U;
v30.f0 = 4597;
v31 = -822620269.42633F;
v32.f2 = 1005439U;
v32.f1 = 715451U;
v32.f0 = 46041;
v33 = (*v2) (v30, v31, v32);
history[history_index++] = (int)v33;
}
} while (trace < 15);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
