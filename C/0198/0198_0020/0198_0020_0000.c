#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern struct ss0 v1 (unsigned char, signed char);
extern struct ss0 (*v2) (unsigned char, signed char);
float v3 (unsigned int, signed char, union uu0, unsigned int);
float (*v4) (unsigned int, signed char, union uu0, unsigned int) = v3;
void v5 (float, union uu0, float, struct ss0);
void (*v6) (float, union uu0, float, struct ss0) = v5;
extern signed int v7 (union uu0);
extern signed int (*v8) (union uu0);
extern struct ss1 v9 (signed int);
extern struct ss1 (*v10) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v13 = 16526;
union uu1 v12 = {-1366923083 };
struct ss1 v11 = { 47851, 30183462, 31920953U, 440U, };

void v5 (float v14, union uu0 v15, float v16, struct ss0 v17)
{
history[history_index++] = (int)v14;
history[history_index++] = (int)v15.f3;
history[history_index++] = (int)v16;
history[history_index++] = (int)v17.f2;
history[history_index++] = (int)v17.f1;
history[history_index++] = (int)v17.f0;
{
for (;;) {
signed char v20 = 72;
union uu1 v19 = {-1671806531 };
union uu0 v18 = {1224011259U };
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}

float v3 (unsigned int v21, signed char v22, union uu0 v23, unsigned int v24)
{
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
history[history_index++] = (int)v23.f3;
history[history_index++] = (int)v24;
{
for (;;) {
unsigned char v27 = 186;
union uu0 v26 = {1855411539U };
union uu0 v25 = {2338400265U };
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
unsigned char v30;
signed char v31;
struct ss0 v32;
v30 = 104 + 192;
v31 = -106 + -82;
v32 = (*v2) (v30, v31);
history[history_index++] = (int)v32.f2;
history[history_index++] = (int)v32.f1;
history[history_index++] = (int)v32.f0;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
