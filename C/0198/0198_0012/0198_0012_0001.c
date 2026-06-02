#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
signed short v3 (signed short);
signed short (*v4) (signed short) = v3;
extern signed int v5 (struct ss0, unsigned short);
extern signed int (*v6) (struct ss0, unsigned short);
void v7 (struct ss0, unsigned int, struct ss0, struct ss1);
void (*v8) (struct ss0, unsigned int, struct ss0, struct ss1) = v7;
extern float v9 (void);
extern float (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v35 = 27198;
unsigned char v34 = 77;
signed int v33 = 1309357227;

void v7 (struct ss0 v36, unsigned int v37, struct ss0 v38, struct ss1 v39)
{
history[history_index++] = (int)v36.f2;
history[history_index++] = (int)v36.f1;
history[history_index++] = (int)v36.f0;
history[history_index++] = (int)v37;
history[history_index++] = (int)v38.f2;
history[history_index++] = (int)v38.f1;
history[history_index++] = (int)v38.f0;
history[history_index++] = (int)v39.f3;
history[history_index++] = (int)v39.f2;
history[history_index++] = (int)v39.f1;
history[history_index++] = (int)v39.f0;
{
for (;;) {
unsigned char v42 = 247;
struct ss0 v41 = { 594996U, 715204U, 31741, };
signed char v40 = 28;
trace++;
switch (trace)
{
case 6: 
{
float v43;
v43 = (*v10) ();
history[history_index++] = (int)v43;
}
break;
case 8: 
return;
case 12: 
return;
default: abort ();
}
}
}
}

signed short v3 (signed short v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
struct ss0 v47 = { 258439U, 883900U, 852, };
union uu1 v46 = {-16986737 };
unsigned short v45 = 3650;
trace++;
switch (trace)
{
case 1: 
return v44;
default: abort ();
}
}
}
}
