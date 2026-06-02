#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern float v1 (unsigned char);
extern float (*v2) (unsigned char);
extern void v3 (signed short, unsigned short, signed int);
extern void (*v4) (signed short, unsigned short, signed int);
signed char v7 (unsigned char, unsigned char);
signed char (*v8) (unsigned char, unsigned char) = v7;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v20 = 19;
unsigned short v19 = 14493;
struct ss1 v18 = { 63178, 63723299, 17601288U, 327U, };

signed char v7 (unsigned char v21, unsigned char v22)
{
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
{
for (;;) {
struct ss1 v25 = { 5171, -14729048, 61486680U, 93U, };
struct ss1 v24 = { 2757, -34459582, 2695700U, 292U, };
signed char v23 = 10;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v26;
float v27;
v26 = v21 + v22;
v27 = (*v2) (v26);
history[history_index++] = (int)v27;
}
break;
case 4: 
{
signed short v28;
unsigned short v29;
signed int v30;
v28 = 1530 + -6129;
v29 = 25867 - 12113;
v30 = -1021866634 - 60429700;
(*v4) (v28, v29, v30);
}
break;
case 14: 
return 14;
default: abort ();
}
}
}
}
