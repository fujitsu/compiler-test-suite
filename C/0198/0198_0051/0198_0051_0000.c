#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned short v1 (float, unsigned char);
extern unsigned short (*v2) (float, unsigned char);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
unsigned int v5 (float, signed int);
unsigned int (*v6) (float, signed int) = v5;
struct ss0 v9 (unsigned short, unsigned char, struct ss1, unsigned char);
struct ss0 (*v10) (unsigned short, unsigned char, struct ss1, unsigned char) = v9;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v13 = 3835449335U;
unsigned int v12 = 3127511880U;
struct ss0 v11 = { 289934U, 321360U, 61402, };

struct ss0 v9 (unsigned short v14, unsigned char v15, struct ss1 v16, unsigned char v17)
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
union uu1 v20 = {312262492 };
signed short v19 = 30627;
signed short v18 = 4705;
trace++;
switch (trace)
{
case 3: 
{
float v21;
unsigned char v22;
unsigned short v23;
v21 = 1483627299.45046F;
v22 = v17 - v17;
v23 = (*v2) (v21, v22);
history[history_index++] = (int)v23;
}
break;
case 8: 
{
unsigned short v24;
unsigned char v25;
struct ss1 v26;
unsigned char v27;
struct ss0 v28;
v24 = v14 + 37369;
v25 = 224 + v17;
v26.f3 = 24979;
v26.f2 = -10045152;
v26.f1 = 39212083U;
v26.f0 = 377U;
v27 = v15 + v15;
v28 = (*v10) (v24, v25, v26, v27);
history[history_index++] = (int)v28.f2;
history[history_index++] = (int)v28.f1;
history[history_index++] = (int)v28.f0;
}
break;
case 9: 
{
unsigned short v29;
unsigned char v30;
struct ss1 v31;
unsigned char v32;
struct ss0 v33;
v29 = v14 + 56509;
v30 = v17 + 56;
v31.f3 = 41448;
v31.f2 = -66758913;
v31.f1 = 2613044U;
v31.f0 = 54U;
v32 = v15 - v17;
v33 = v9 (v29, v30, v31, v32);
history[history_index++] = (int)v33.f2;
history[history_index++] = (int)v33.f1;
history[history_index++] = (int)v33.f0;
}
break;
case 10: 
{
float v34;
unsigned char v35;
unsigned short v36;
v34 = 985273883.56054F;
v35 = 59 + v17;
v36 = (*v2) (v34, v35);
history[history_index++] = (int)v36;
}
break;
case 12: 
{
struct ss0 v37;
v37.f2 = 285851U;
v37.f1 = 1046302U;
v37.f0 = v14;
return v37;
}
case 13: 
{
struct ss0 v38;
v38.f2 = 1040697U;
v38.f1 = 1027845U;
v38.f0 = v14;
return v38;
}
case 14: 
{
struct ss0 v39;
v39.f2 = 838236U;
v39.f1 = 287928U;
v39.f0 = v14;
return v39;
}
case 19: 
{
struct ss0 v40;
v40.f2 = 207313U;
v40.f1 = 176382U;
v40.f0 = 27734;
return v40;
}
default: abort ();
}
}
}
}

unsigned int v5 (float v41, signed int v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
float v45 = 1107294120.40997F;
double v44 = -486426718927080455.36005;
union uu0 v43 = {2980162319U };
trace++;
switch (trace)
{
case 6: 
{
float v46;
unsigned char v47;
unsigned short v48;
v46 = v45;
v47 = 135 + 174;
v48 = (*v2) (v46, v47);
history[history_index++] = (int)v48;
}
break;
case 16: 
return 263421537U;
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
float v51;
unsigned char v52;
unsigned short v53;
v51 = -1727086045.3715F;
v52 = 134 - 243;
v53 = (*v2) (v51, v52);
history[history_index++] = (int)v53;
}
} while (trace < 20);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
