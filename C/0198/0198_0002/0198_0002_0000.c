#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
unsigned short v1 (signed char, unsigned char, unsigned char);
unsigned short (*v2) (signed char, unsigned char, unsigned char) = v1;
extern void v3 (unsigned char, signed char, signed int);
extern void (*v4) (unsigned char, signed char, signed int);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern void v7 (float);
extern void (*v8) (float);
struct ss0 v9 (unsigned char, unsigned short);
struct ss0 (*v10) (unsigned char, unsigned short) = v9;
extern int history[];
extern int history_index;
extern int trace;
struct ss0 v13 = { 201054U, 838545U, 43288, };
union uu0 v12 = {1880283873U };
signed int v11 = -946571673;

struct ss0 v9 (unsigned char v14, unsigned short v15)
{
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
{
for (;;) {
unsigned int v18 = 3019668055U;
unsigned int v17 = 923223559U;
unsigned int v16 = 3446465549U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed char v19, unsigned char v20, unsigned char v21)
{
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
{
for (;;) {
signed short v24 = -20174;
signed char v23 = -17;
union uu1 v22 = {-1173432772 };
trace++;
switch (trace)
{
case 0: 
return 13819;
case 1: 
return 47946;
case 2: 
{
signed int v25;
v25 = (*v6) ();
history[history_index++] = (int)v25;
}
break;
case 4: 
{
unsigned char v26;
signed char v27;
signed int v28;
v26 = v20 - 144;
v27 = v23 - v23;
v28 = -143397748 - 157144450;
(*v4) (v26, v27, v28);
}
break;
case 6: 
{
signed int v29;
v29 = (*v6) ();
history[history_index++] = (int)v29;
}
break;
case 8: 
{
unsigned char v30;
signed char v31;
signed int v32;
v30 = v21 + 90;
v31 = 84 + v23;
v32 = 1320851125 + -1106712297;
(*v4) (v30, v31, v32);
}
break;
case 10: 
return 44666;
case 12: 
return 41749;
case 14: 
return 48249;
case 16: 
return 48057;
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
signed char v35;
unsigned char v36;
unsigned char v37;
unsigned short v38;
v35 = 116 + -47;
v36 = 121 + 4;
v37 = 223 - 110;
v38 = v1 (v35, v36, v37);
history[history_index++] = (int)v38;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
