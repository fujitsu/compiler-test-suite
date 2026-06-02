#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
static unsigned int v1 (struct ss1, float, signed short, struct ss1);
static unsigned int (*v2) (struct ss1, float, signed short, struct ss1) = v1;
extern struct ss0 v3 (float, float, unsigned char, struct ss1);
extern struct ss0 (*v4) (float, float, unsigned char, struct ss1);
static unsigned char v5 (void);
static unsigned char (*v6) (void) = v5;
static float v7 (union uu1, struct ss0);
static float (*v8) (union uu1, struct ss0) = v7;
double v9 (union uu1, signed short, float);
double (*v10) (union uu1, signed short, float) = v9;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v13 = 1;
float v12 = -2111172008.6204F;
signed int v11 = 195095820;

double v9 (union uu1 v14, signed short v15, float v16)
{
history[history_index++] = (int)v14.f2;
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
{
for (;;) {
signed short v19 = -13114;
unsigned short v18 = 905;
signed short v17 = -6559;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static float v7 (union uu1 v20, struct ss0 v21)
{
history[history_index++] = (int)v20.f2;
history[history_index++] = (int)v21.f2;
history[history_index++] = (int)v21.f1;
history[history_index++] = (int)v21.f0;
{
for (;;) {
signed char v24 = -128;
unsigned int v23 = 709465447U;
unsigned int v22 = 3180337762U;
trace++;
switch (trace)
{
case 5: 
return -754197715.32216F;
default: abort ();
}
}
}
}

static unsigned char v5 (void)
{
{
for (;;) {
float v27 = -1507395828.57196F;
unsigned char v26 = 120;
double v25 = 6120019884365828469.9428;
trace++;
switch (trace)
{
case 1: 
return v26;
case 3: 
return v26;
default: abort ();
}
}
}
}

static unsigned int v1 (struct ss1 v28, float v29, signed short v30, struct ss1 v31)
{
history[history_index++] = (int)v28.f3;
history[history_index++] = (int)v28.f2;
history[history_index++] = (int)v28.f1;
history[history_index++] = (int)v28.f0;
history[history_index++] = (int)v29;
history[history_index++] = (int)v30;
history[history_index++] = (int)v31.f3;
history[history_index++] = (int)v31.f2;
history[history_index++] = (int)v31.f1;
history[history_index++] = (int)v31.f0;
{
for (;;) {
union uu1 v34 = {-1668555509 };
struct ss1 v33 = { 35266, 24398971, 31199331U, 313U, };
struct ss0 v32 = { 936795U, 771913U, 40358, };
trace++;
switch (trace)
{
case 0: 
{
unsigned char v35;
v35 = (*v6) ();
history[history_index++] = (int)v35;
}
break;
case 2: 
{
unsigned char v36;
v36 = v5 ();
history[history_index++] = (int)v36;
}
break;
case 4: 
{
union uu1 v37;
struct ss0 v38;
float v39;
v37.f2 = 160;
v38.f2 = 906736U;
v38.f1 = 419396U;
v38.f0 = 30926;
v39 = (*v8) (v37, v38);
history[history_index++] = (int)v39;
}
break;
case 6: 
{
float v40;
float v41;
unsigned char v42;
struct ss1 v43;
struct ss0 v44;
v40 = v29;
v41 = v29;
v42 = 135 + 146;
v43.f3 = 14692;
v43.f2 = -7255380;
v43.f1 = 18861496U;
v43.f0 = 85U;
v44 = (*v4) (v40, v41, v42, v43);
history[history_index++] = (int)v44.f2;
history[history_index++] = (int)v44.f1;
history[history_index++] = (int)v44.f0;
}
break;
case 14: 
return 922155733U;
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
struct ss1 v47;
float v48;
signed short v49;
struct ss1 v50;
unsigned int v51;
v47.f3 = 56963;
v47.f2 = -2270;
v47.f1 = 34969427U;
v47.f0 = 19U;
v48 = v12;
v49 = 16371 - 25013;
v50.f3 = 22262;
v50.f2 = 44577948;
v50.f1 = 2340754U;
v50.f0 = 440U;
v51 = v1 (v47, v48, v49, v50);
history[history_index++] = (int)v51;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
