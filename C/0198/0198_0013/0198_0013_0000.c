#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned int v1 (unsigned char, signed int, signed char);
extern unsigned int (*v2) (unsigned char, signed int, signed char);
extern signed int v3 (signed char, double, signed char);
extern signed int (*v4) (signed char, double, signed char);
signed short v5 (signed short, union uu0);
signed short (*v6) (signed short, union uu0) = v5;
signed int v7 (unsigned int);
signed int (*v8) (unsigned int) = v7;
extern signed int v9 (signed char, unsigned short, struct ss0);
extern signed int (*v10) (signed char, unsigned short, struct ss0);
extern int history[];
extern int history_index;
extern int trace;
float v13 = -1004988448.32423F;
signed char v12 = 109;
unsigned int v11 = 758233033U;

signed int v7 (unsigned int v14)
{
history[history_index++] = (int)v14;
{
for (;;) {
unsigned char v17 = 6;
union uu1 v16 = {-1202287008 };
struct ss0 v15 = { 719242U, 574064U, 21175, };
trace++;
switch (trace)
{
case 3: 
{
unsigned int v18;
signed int v19;
v18 = v14 - 3769506277U;
v19 = v7 (v18);
history[history_index++] = (int)v19;
}
break;
case 4: 
return -1274869857;
case 5: 
{
unsigned int v20;
signed int v21;
v20 = 2407379206U + 491103598U;
v21 = (*v8) (v20);
history[history_index++] = (int)v21;
}
break;
case 6: 
return -449172709;
case 7: 
{
unsigned int v22;
signed int v23;
v22 = v14 + v14;
v23 = (*v8) (v22);
history[history_index++] = (int)v23;
}
break;
case 8: 
{
unsigned int v24;
signed int v25;
v24 = 2164665987U + v14;
v25 = v7 (v24);
history[history_index++] = (int)v25;
}
break;
case 9: 
{
unsigned int v26;
signed int v27;
v26 = 2973829642U + v14;
v27 = v7 (v26);
history[history_index++] = (int)v27;
}
break;
case 10: 
{
unsigned int v28;
signed int v29;
v28 = 791569901U - v14;
v29 = (*v8) (v28);
history[history_index++] = (int)v29;
}
break;
case 11: 
return 1835144020;
case 12: 
return 440381423;
case 13: 
return -1409059782;
case 14: 
return 1713537602;
case 15: 
return -984319667;
default: abort ();
}
}
}
}

signed short v5 (signed short v30, union uu0 v31)
{
history[history_index++] = (int)v30;
history[history_index++] = (int)v31.f3;
{
for (;;) {
signed int v34 = 1795457354;
union uu0 v33 = {623069668U };
struct ss1 v32 = { 28884, 38263604, 60574284U, 116U, };
trace++;
switch (trace)
{
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
unsigned char v37;
signed int v38;
signed char v39;
unsigned int v40;
v37 = 245 - 82;
v38 = 1275192852 - 1499275000;
v39 = v12 + v12;
v40 = (*v2) (v37, v38, v39);
history[history_index++] = (int)v40;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
