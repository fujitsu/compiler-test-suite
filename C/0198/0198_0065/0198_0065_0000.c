#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern struct ss1 v1 (struct ss1);
extern struct ss1 (*v2) (struct ss1);
extern void v3 (struct ss1, unsigned char);
extern void (*v4) (struct ss1, unsigned char);
signed short v5 (struct ss1, signed int);
signed short (*v6) (struct ss1, signed int) = v5;
extern unsigned int v7 (signed short, signed char);
extern unsigned int (*v8) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v13 = -255621159;
unsigned char v12 = 236;
double v11 = 6588250787240131567.6075;

signed short v5 (struct ss1 v14, signed int v15)
{
history[history_index++] = (int)v14.f3;
history[history_index++] = (int)v14.f2;
history[history_index++] = (int)v14.f1;
history[history_index++] = (int)v14.f0;
history[history_index++] = (int)v15;
{
for (;;) {
unsigned char v18 = 247;
unsigned short v17 = 44819;
unsigned short v16 = 11249;
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
struct ss1 v21;
struct ss1 v22;
v21.f3 = 16244;
v21.f2 = 4484958;
v21.f1 = 18739436U;
v21.f0 = 78U;
v22 = (*v2) (v21);
history[history_index++] = (int)v22.f3;
history[history_index++] = (int)v22.f2;
history[history_index++] = (int)v22.f1;
history[history_index++] = (int)v22.f0;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
