#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
static struct ss1 v1 (void);
static struct ss1 (*v2) (void) = v1;
void v3 (signed short, signed char);
void (*v4) (signed short, signed char) = v3;
static void v5 (void);
static void (*v6) (void) = v5;
extern union uu0 v7 (union uu1, unsigned short, signed char, struct ss0);
extern union uu0 (*v8) (union uu1, unsigned short, signed char, struct ss0);
extern struct ss1 v9 (void);
extern struct ss1 (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
struct ss0 v13 = { 980822U, 83967U, 53962, };
unsigned int v12 = 3524272791U;
signed int v11 = -645206611;

static void v5 (void)
{
{
for (;;) {
signed char v16 = -77;
union uu0 v15 = {3283807850U };
signed char v14 = 81;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

void v3 (signed short v17, signed char v18)
{
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
{
for (;;) {
struct ss1 v21 = { 46020, -23170506, 28816177U, 1U, };
double v20 = -3960564022474130740.7598;
union uu1 v19 = {-532314463 };
trace++;
switch (trace)
{
case 4: 
{
struct ss1 v22;
v22 = (*v2) ();
history[history_index++] = (int)v22.f3;
history[history_index++] = (int)v22.f2;
history[history_index++] = (int)v22.f1;
history[history_index++] = (int)v22.f0;
}
break;
case 6: 
return;
case 8: 
return;
case 10: 
{
struct ss1 v23;
v23 = v1 ();
history[history_index++] = (int)v23.f3;
history[history_index++] = (int)v23.f2;
history[history_index++] = (int)v23.f1;
history[history_index++] = (int)v23.f0;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

static struct ss1 v1 (void)
{
{
for (;;) {
unsigned char v26 = 133;
float v25 = 1636706663.3824F;
double v24 = 6748295036263287469.18780;
trace++;
switch (trace)
{
case 0: 
{
v5 ();
}
break;
case 2: 
{
struct ss1 v27;
v27 = v9 ();
history[history_index++] = (int)v27.f3;
history[history_index++] = (int)v27.f2;
history[history_index++] = (int)v27.f1;
history[history_index++] = (int)v27.f0;
}
break;
case 5: 
{
struct ss1 v28;
v28.f3 = 42096;
v28.f2 = -50013835;
v28.f1 = 43952701U;
v28.f0 = 470U;
return v28;
}
case 11: 
{
struct ss1 v29;
v29.f3 = 14957;
v29.f2 = 29653221;
v29.f1 = 44931966U;
v29.f0 = 82U;
return v29;
}
case 14: 
{
struct ss1 v30;
v30.f3 = 2408;
v30.f2 = -60148140;
v30.f1 = 13087785U;
v30.f0 = 244U;
return v30;
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
struct ss1 v33;
v33 = (*v2) ();
history[history_index++] = (int)v33.f3;
history[history_index++] = (int)v33.f2;
history[history_index++] = (int)v33.f1;
history[history_index++] = (int)v33.f0;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
