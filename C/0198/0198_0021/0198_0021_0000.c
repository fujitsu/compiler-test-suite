#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
struct ss1 v1 (float, struct ss0);
struct ss1 (*v2) (float, struct ss0) = v1;
union uu0 v3 (float, unsigned short);
union uu0 (*v4) (float, unsigned short) = v3;
extern signed char v5 (void);
extern signed char (*v6) (void);
extern double v7 (signed char, struct ss0);
extern double (*v8) (signed char, struct ss0);
extern float v9 (signed char);
extern float (*v10) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v13 = 36381;
unsigned short v12 = 3826;
struct ss0 v11 = { 579975U, 245093U, 18704, };

union uu0 v3 (float v14, unsigned short v15)
{
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
{
for (;;) {
double v18 = -1514289206154904340.43898;
signed char v17 = 27;
unsigned int v16 = 3120096342U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

struct ss1 v1 (float v19, struct ss0 v20)
{
history[history_index++] = (int)v19;
history[history_index++] = (int)v20.f2;
history[history_index++] = (int)v20.f1;
history[history_index++] = (int)v20.f0;
{
for (;;) {
struct ss1 v23 = { 45051, 27444941, 219660U, 164U, };
float v22 = -572611800.46791F;
double v21 = -8763386499693525640.4318;
trace++;
switch (trace)
{
case 0: 
{
struct ss1 v24;
v24.f3 = 5976;
v24.f2 = 54403090;
v24.f1 = 58054731U;
v24.f0 = 21U;
return v24;
}
case 1: 
{
signed char v25;
struct ss0 v26;
double v27;
v25 = 51 + 76;
v26.f2 = 823851U;
v26.f1 = 951704U;
v26.f0 = 45421;
v27 = (*v8) (v25, v26);
history[history_index++] = (int)v27;
}
break;
case 6: 
{
signed char v28;
v28 = (*v6) ();
history[history_index++] = (int)v28;
}
break;
case 8: 
{
signed char v29;
struct ss0 v30;
double v31;
v29 = -23 - -75;
v30.f2 = 1012563U;
v30.f1 = 448901U;
v30.f0 = 10581;
v31 = v7 (v29, v30);
history[history_index++] = (int)v31;
}
break;
case 12: 
{
struct ss1 v32;
v32.f3 = 22081;
v32.f2 = -40219060;
v32.f1 = 67087688U;
v32.f0 = 88U;
return v32;
}
case 14: 
{
struct ss1 v33;
v33.f3 = 15026;
v33.f2 = -45844959;
v33.f1 = 19080574U;
v33.f0 = 407U;
return v33;
}
case 17: 
{
struct ss1 v34;
v34.f3 = 42091;
v34.f2 = 52947095;
v34.f1 = 38943971U;
v34.f0 = 7U;
return v34;
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
float v37;
struct ss0 v38;
struct ss1 v39;
v37 = 1557866543.21877F;
v38.f2 = 1031332U;
v38.f1 = 378168U;
v38.f0 = v13;
v39 = (*v2) (v37, v38);
history[history_index++] = (int)v39.f3;
history[history_index++] = (int)v39.f2;
history[history_index++] = (int)v39.f1;
history[history_index++] = (int)v39.f0;
}
} while (trace < 17);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
