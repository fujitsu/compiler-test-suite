#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
static float v1 (double);
static float (*v2) (double) = v1;
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
unsigned int v5 (float, signed char);
unsigned int (*v6) (float, signed char) = v5;
static unsigned short v7 (signed char, unsigned char, unsigned int, union uu0);
static unsigned short (*v8) (signed char, unsigned char, unsigned int, union uu0) = v7;
unsigned char v9 (unsigned int, union uu0);
unsigned char (*v10) (unsigned int, union uu0) = v9;
extern int history[];
extern int history_index;
extern int trace;
signed short v13 = -6035;
signed char v12 = 10;
signed short v11 = -5947;

unsigned char v9 (unsigned int v14, union uu0 v15)
{
history[history_index++] = (int)v14;
history[history_index++] = (int)v15.f3;
{
for (;;) {
union uu0 v18 = {3371823704U };
signed char v17 = 24;
struct ss0 v16 = { 329647U, 109393U, 31017, };
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v7 (signed char v19, unsigned char v20, unsigned int v21, union uu0 v22)
{
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
history[history_index++] = (int)v22.f3;
{
for (;;) {
struct ss1 v25 = { 13468, -19883573, 11107528U, 495U, };
signed short v24 = 8180;
float v23 = 2023585294.28357F;
trace++;
switch (trace)
{
case 2: 
{
double v26;
float v27;
#if defined(__aarch64__)
 v26 = -2147483648;
#else
v26 = -6363894677601448634.61624;
#endif
v27 = (*v2) (v26);
history[history_index++] = (int)v27;
}
break;
case 4: 
return 63398;
case 14: 
return 34424;
default: abort ();
}
}
}
}

unsigned int v5 (float v28, signed char v29)
{
history[history_index++] = (int)v28;
history[history_index++] = (int)v29;
{
for (;;) {
unsigned int v32 = 258582938U;
float v31 = -83727447.41901F;
struct ss1 v30 = { 2762, 786411, 35004794U, 475U, };
trace++;
switch (trace)
{
case 7: 
{
float v33;
signed char v34;
unsigned int v35;
v33 = v31;
v34 = -77 + v29;
v35 = v5 (v33, v34);
history[history_index++] = (int)v35;
}
break;
case 8: 
return 1979057555U;
case 9: 
{
float v36;
signed char v37;
unsigned int v38;
v36 = -99595545.587F;
v37 = 121 + v29;
v38 = (*v6) (v36, v37);
history[history_index++] = (int)v38;
}
break;
case 10: 
return v32;
case 11: 
return v32;
default: abort ();
}
}
}
}

static float v1 (double v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
signed char v42 = 108;
signed short v41 = -4008;
signed char v40 = -21;
trace++;
switch (trace)
{
case 0: 
{
double v43;
float v44;
v43 = v39;
v44 = (*v2) (v43);
history[history_index++] = (int)v44;
}
break;
case 1: 
{
signed char v45;
unsigned char v46;
unsigned int v47;
union uu0 v48;
unsigned short v49;
v45 = v40 + v40;
v46 = 154 + 252;
v47 = 102620406U - 3594144698U;
v48.f0 = v40;
v49 = (*v8) (v45, v46, v47, v48);
history[history_index++] = (int)v49;
}
break;
case 3: 
{
signed char v50;
unsigned char v51;
unsigned int v52;
union uu0 v53;
unsigned short v54;
v50 = 78 - 82;
v51 = 156 + 53;
v52 = 1483874549U + 3793926U;
v53.f3 = v42;
v54 = (*v8) (v50, v51, v52, v53);
history[history_index++] = (int)v54;
}
break;
case 5: 
{
unsigned char v55;
v55 = v3 ();
history[history_index++] = (int)v55;
}
break;
case 13: 
return -555566771.3341F;
case 15: 
return 1745672702.26427F;
case 16: 
return 2139476601.13012F;
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
double v58;
float v59;
v58 = 2147483647.57465;
v59 = v1 (v58);
history[history_index++] = (int)v59;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
