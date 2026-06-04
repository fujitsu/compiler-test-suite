#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
static signed char v1 (void);
static signed char (*v2) (void) = v1;
extern float v5 (void);
extern float (*v6) (void);
static struct ss1 v7 (struct ss0);
static struct ss1 (*v8) (struct ss0) = v7;
extern float v9 (double, signed short, float);
extern float (*v10) (double, signed short, float);
extern int history[];
extern int history_index;
extern int trace;
signed short v13 = -17925;
signed short v12 = -25578;
double v11 = 752345668163908711.50060;

static struct ss1 v7 (struct ss0 v14)
{
history[history_index++] = (int)v14.f2;
history[history_index++] = (int)v14.f1;
history[history_index++] = (int)v14.f0;
{
for (;;) {
struct ss1 v17 = { 16906, -21693916, 11098678U, 465U, };
union uu0 v16 = {1240661891U };
union uu1 v15 = {1020603330 };
trace++;
switch (trace)
{
case 1: 
{
struct ss1 v18;
v18.f3 = 55645;
v18.f2 = 52628918;
v18.f1 = 38904070U;
v18.f0 = 152U;
return v18;
}
default: abort ();
}
}
}
}

static signed char v1 (void)
{
{
for (;;) {
unsigned short v21 = 63756;
float v20 = -1859894185.40890F;
union uu0 v19 = {1349836917U };
trace++;
switch (trace)
{
case 0: 
{
struct ss0 v22;
struct ss1 v23;
v22.f2 = 896016U;
v22.f1 = 684529U;
v22.f0 = v21;
v23 = v7 (v22);
history[history_index++] = (int)v23.f3;
history[history_index++] = (int)v23.f2;
history[history_index++] = (int)v23.f1;
history[history_index++] = (int)v23.f0;
}
break;
case 2: 
{
float v24;
v24 = (*v6) ();
history[history_index++] = (int)v24;
}
break;
case 6: 
return -15;
case 7: 
{
signed char v25;
v25 = (*v2) ();
history[history_index++] = (int)v25;
}
break;
case 8: 
{
signed char v26;
v26 = v1 ();
history[history_index++] = (int)v26;
}
break;
case 9: 
{
signed char v27;
v27 = (*v2) ();
history[history_index++] = (int)v27;
}
break;
case 10: 
{
signed char v28;
v28 = (*v2) ();
history[history_index++] = (int)v28;
}
break;
case 11: 
return -61;
case 12: 
return -19;
case 13: 
return -66;
case 14: 
return 51;
case 15: 
return -120;
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
signed char v31;
v31 = (*v2) ();
history[history_index++] = (int)v31;
}
} while (trace < 15);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
