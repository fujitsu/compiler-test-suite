#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
unsigned short v1 (unsigned short, union uu0);
unsigned short (*v2) (unsigned short, union uu0) = v1;
extern float v3 (float, signed char, float, signed char);
extern float (*v4) (float, signed char, float, signed char);
static struct ss1 v5 (signed int, unsigned int, struct ss1, signed char);
static struct ss1 (*v6) (signed int, unsigned int, struct ss1, signed char) = v5;
extern unsigned char v7 (unsigned short);
extern unsigned char (*v8) (unsigned short);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
union uu1 v13 = {-2095627572 };
struct ss1 v12 = { 17464, -92594, 22703186U, 424U, };
float v11 = -2103736642.48422F;

static struct ss1 v5 (signed int v14, unsigned int v15, struct ss1 v16, signed char v17)
{
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
history[history_index++] = (int)v16.f3;
history[history_index++] = (int)v16.f2;
history[history_index++] = (int)v16.f1;
history[history_index++] = (int)v16.f0;
history[history_index++] = (int)v17;
{
for (;;) {
double v20 = 6076095449516693319.21824;
unsigned char v19 = 207;
signed int v18 = 115557040;
trace++;
switch (trace)
{
case 1: 
{
struct ss1 v21;
v21.f3 = 61814;
v21.f2 = 16895226;
v21.f1 = 46497682U;
v21.f0 = 291U;
return v21;
}
case 3: 
{
unsigned short v22;
unsigned char v23;
v22 = 27436 - 63417;
v23 = (*v8) (v22);
history[history_index++] = (int)v23;
}
break;
case 15: 
{
struct ss1 v24;
v24.f3 = 17007;
v24.f2 = 12597612;
v24.f1 = 26297539U;
v24.f0 = 503U;
return v24;
}
default: abort ();
}
}
}
}

unsigned short v1 (unsigned short v25, union uu0 v26)
{
history[history_index++] = (int)v25;
history[history_index++] = (int)v26.f3;
{
for (;;) {
signed char v29 = -5;
struct ss0 v28 = { 230741U, 151908U, 33667, };
struct ss0 v27 = { 253988U, 387816U, 5489, };
trace++;
switch (trace)
{
case 0: 
{
signed int v30;
unsigned int v31;
struct ss1 v32;
signed char v33;
struct ss1 v34;
v30 = 14093675 + 1384804946;
v31 = 3437054901U + 3884172676U;
v32.f3 = v25;
v32.f2 = 12538966;
v32.f1 = 40658940U;
v32.f0 = 490U;
v33 = -108 - v29;
v34 = v5 (v30, v31, v32, v33);
history[history_index++] = (int)v34.f3;
history[history_index++] = (int)v34.f2;
history[history_index++] = (int)v34.f1;
history[history_index++] = (int)v34.f0;
}
break;
case 2: 
{
signed int v35;
unsigned int v36;
struct ss1 v37;
signed char v38;
struct ss1 v39;
v35 = -415067837 - 391091830;
v36 = 1387521555U - 2450104694U;
v37.f3 = v25;
v37.f2 = 63742878;
v37.f1 = 30511774U;
v37.f0 = 382U;
v38 = -107 - -113;
v39 = v5 (v35, v36, v37, v38);
history[history_index++] = (int)v39.f3;
history[history_index++] = (int)v39.f2;
history[history_index++] = (int)v39.f1;
history[history_index++] = (int)v39.f0;
}
break;
case 5: 
{
unsigned short v40;
unsigned char v41;
v40 = 62756 + 18078;
v41 = v7 (v40);
history[history_index++] = (int)v41;
}
break;
case 7: 
{
float v42;
signed char v43;
float v44;
signed char v45;
float v46;
v42 = -166084952.41494F;
v43 = 115 - v29;
v44 = 1874176559.8067F;
v45 = v29 - -70;
v46 = (*v4) (v42, v43, v44, v45);
history[history_index++] = (int)v46;
}
break;
case 9: 
return v25;
case 13: 
return v25;
case 16: 
return 7571;
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
unsigned short v49;
union uu0 v50;
unsigned short v51;
v49 = 35170 + 44665;
v50.f3 = -23;
v51 = (*v2) (v49, v50);
history[history_index++] = (int)v51;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
