#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
signed short v1 (void);
signed short (*v2) (void) = v1;
extern struct ss0 v3 (signed char);
extern struct ss0 (*v4) (signed char);
extern float v5 (void);
extern float (*v6) (void);
union uu1 v9 (union uu0, signed int, union uu1, double);
union uu1 (*v10) (union uu0, signed int, union uu1, double) = v9;
extern int history[];
extern int history_index;
extern int trace;
union uu1 v13 = {1420674363 };
double v12 = 2728664818326227572.108;
unsigned char v11 = 14;

union uu1 v9 (union uu0 v14, signed int v15, union uu1 v16, double v17)
{
history[history_index++] = (int)v14.f3;
history[history_index++] = (int)v15;
history[history_index++] = (int)v16.f2;
history[history_index++] = (int)v17;
{
for (;;) {
signed char v20 = -91;
float v19 = 1054170915.10613F;
unsigned int v18 = 3141884134U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
double v23 = -8919024104900473523.50853;
union uu0 v22 = {1634780017U };
signed int v21 = 2094551085;
trace++;
switch (trace)
{
case 0: 
{
float v24;
v24 = (*v6) ();
history[history_index++] = (int)v24;
}
break;
case 2: 
return 7791;
case 3: 
{
signed char v25;
struct ss0 v26;
v25 = 27 + 69;
v26 = (*v4) (v25);
history[history_index++] = (int)v26.f2;
history[history_index++] = (int)v26.f1;
history[history_index++] = (int)v26.f0;
}
break;
case 8: 
{
float v27;
v27 = (*v6) ();
history[history_index++] = (int)v27;
}
break;
case 10: 
{
signed char v28;
struct ss0 v29;
v28 = -69 + 19;
v29 = (*v4) (v28);
history[history_index++] = (int)v29.f2;
history[history_index++] = (int)v29.f1;
history[history_index++] = (int)v29.f0;
}
break;
case 12: 
return -8797;
case 15: 
return -8597;
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
signed short v32;
v32 = (*v2) ();
history[history_index++] = (int)v32;
}
} while (trace < 15);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
