#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed int v1 (void);
extern signed int (*v2) (void);
extern void v3 (signed char, struct ss1, signed int, signed short);
extern void (*v4) (signed char, struct ss1, signed int, signed short);
extern union uu1 v5 (void);
extern union uu1 (*v6) (void);
signed short v7 (unsigned char, struct ss1);
signed short (*v8) (unsigned char, struct ss1) = v7;
signed int v9 (unsigned short);
signed int (*v10) (unsigned short) = v9;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v13 = 188;
struct ss1 v12 = { 1315, -53705941, 56146376U, 79U, };
signed short v11 = 5024;

signed int v9 (unsigned short v14)
{
history[history_index++] = (int)v14;
{
for (;;) {
struct ss1 v17 = { 7734, 21773849, 356010U, 187U, };
float v16 = -1224406754.51904F;
unsigned char v15 = 165;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned char v18, struct ss1 v19)
{
history[history_index++] = (int)v18;
history[history_index++] = (int)v19.f3;
history[history_index++] = (int)v19.f2;
history[history_index++] = (int)v19.f1;
history[history_index++] = (int)v19.f0;
{
for (;;) {
unsigned char v22 = 210;
signed int v21 = 1897422688;
unsigned int v20 = 3375420254U;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v23;
struct ss1 v24;
signed short v25;
v23 = v18 - v18;
v24.f3 = 3992;
v24.f2 = -44313641;
v24.f1 = 37269496U;
v24.f0 = 128U;
v25 = (*v8) (v23, v24);
history[history_index++] = (int)v25;
}
break;
case 2: 
return -30273;
case 3: 
{
unsigned char v26;
struct ss1 v27;
signed short v28;
v26 = 158 - 153;
v27.f3 = 6513;
v27.f2 = 19361772;
v27.f1 = 57822167U;
v27.f0 = 295U;
v28 = v7 (v26, v27);
history[history_index++] = (int)v28;
}
break;
case 4: 
return 18556;
case 5: 
{
unsigned char v29;
struct ss1 v30;
signed short v31;
v29 = v22 + v18;
v30.f3 = 25902;
v30.f2 = 32172891;
v30.f1 = 3236153U;
v30.f0 = 22U;
v31 = (*v8) (v29, v30);
history[history_index++] = (int)v31;
}
break;
case 6: 
{
unsigned char v32;
struct ss1 v33;
signed short v34;
v32 = v22 + 37;
v33.f3 = 29793;
v33.f2 = -47320109;
v33.f1 = 29792030U;
v33.f0 = 12U;
v34 = (*v8) (v32, v33);
history[history_index++] = (int)v34;
}
break;
case 7: 
{
unsigned char v35;
struct ss1 v36;
signed short v37;
v35 = v22 - v18;
v36.f3 = 37672;
v36.f2 = -7959711;
v36.f1 = 58762649U;
v36.f0 = 155U;
v37 = v7 (v35, v36);
history[history_index++] = (int)v37;
}
break;
case 8: 
{
unsigned char v38;
struct ss1 v39;
signed short v40;
v38 = 172 - 123;
v39.f3 = 52512;
v39.f2 = -57738712;
v39.f1 = 22530301U;
v39.f0 = 191U;
v40 = (*v8) (v38, v39);
history[history_index++] = (int)v40;
}
break;
case 9: 
{
unsigned char v41;
struct ss1 v42;
signed short v43;
v41 = 203 - v22;
v42.f3 = 33857;
v42.f2 = 14703401;
v42.f1 = 21385795U;
v42.f0 = 90U;
v43 = (*v8) (v41, v42);
history[history_index++] = (int)v43;
}
break;
case 10: 
{
unsigned char v44;
struct ss1 v45;
signed short v46;
v44 = 102 + v22;
v45.f3 = 9829;
v45.f2 = -36730417;
v45.f1 = 61785129U;
v45.f0 = 86U;
v46 = v7 (v44, v45);
history[history_index++] = (int)v46;
}
break;
case 11: 
return 4133;
case 12: 
return -26491;
case 13: 
return 1811;
case 14: 
return -19365;
case 15: 
return -3744;
case 16: 
return -9497;
case 17: 
return -10741;
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
signed int v49;
v49 = (*v2) ();
history[history_index++] = (int)v49;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
