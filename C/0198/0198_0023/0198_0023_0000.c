#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
static unsigned short v1 (float, signed int);
static unsigned short (*v2) (float, signed int) = v1;
extern void v3 (signed short, signed short, union uu0);
extern void (*v4) (signed short, signed short, union uu0);
unsigned char v5 (struct ss0);
unsigned char (*v6) (struct ss0) = v5;
static unsigned int v7 (float);
static unsigned int (*v8) (float) = v7;
extern struct ss0 v9 (void);
extern struct ss0 (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
double v13 = 9024903350960533705.12676;
float v12 = -1122687197.47132F;
double v11 = 700082261672322739.22079;

static unsigned int v7 (float v14)
{
history[history_index++] = (int)v14;
{
for (;;) {
signed int v17 = 277216372;
double v16 = 9004232349710218719.30150;
unsigned int v15 = 855213175U;
trace++;
switch (trace)
{
case 9: 
return 1183750256U;
case 11: 
return 1599523999U;
default: abort ();
}
}
}
}

unsigned char v5 (struct ss0 v18)
{
history[history_index++] = (int)v18.f2;
history[history_index++] = (int)v18.f1;
history[history_index++] = (int)v18.f0;
{
for (;;) {
unsigned int v21 = 774138904U;
unsigned int v20 = 2059251635U;
unsigned int v19 = 2652713512U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v1 (float v22, signed int v23)
{
history[history_index++] = (int)v22;
history[history_index++] = (int)v23;
{
for (;;) {
double v26 = 2348164361218896688.9013;
struct ss0 v25 = { 877142U, 406999U, 19976, };
struct ss1 v24 = { 55589, -46160575, 4439257U, 177U, };
trace++;
switch (trace)
{
case 0: 
return 54162;
case 1: 
return 28983;
case 2: 
{
struct ss0 v27;
v27 = (*v10) ();
history[history_index++] = (int)v27.f2;
history[history_index++] = (int)v27.f1;
history[history_index++] = (int)v27.f0;
}
break;
case 4: 
{
struct ss0 v28;
v28 = v9 ();
history[history_index++] = (int)v28.f2;
history[history_index++] = (int)v28.f1;
history[history_index++] = (int)v28.f0;
}
break;
case 6: 
{
struct ss0 v29;
v29 = (*v10) ();
history[history_index++] = (int)v29.f2;
history[history_index++] = (int)v29.f1;
history[history_index++] = (int)v29.f0;
}
break;
case 8: 
{
float v30;
unsigned int v31;
v30 = 1627021941.30490F;
v31 = (*v8) (v30);
history[history_index++] = (int)v31;
}
break;
case 10: 
{
float v32;
unsigned int v33;
v32 = v22;
v33 = (*v8) (v32);
history[history_index++] = (int)v33;
}
break;
case 12: 
return 61550;
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
float v36;
signed int v37;
unsigned short v38;
v36 = v12;
v37 = -937133528 + 1494326587;
v38 = (*v2) (v36, v37);
history[history_index++] = (int)v38;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
