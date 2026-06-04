#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
signed int v3 (union uu0, unsigned char, signed int, struct ss1);
signed int (*v4) (union uu0, unsigned char, signed int, struct ss1) = v3;
extern unsigned int v5 (signed char, struct ss1, unsigned int);
extern unsigned int (*v6) (signed char, struct ss1, unsigned int);
signed char v7 (unsigned short, signed short, signed short);
signed char (*v8) (unsigned short, signed short, signed short) = v7;
signed char v9 (float);
signed char (*v10) (float) = v9;
extern int history[];
extern int history_index;
extern int trace;
signed int v13 = -527534315;
float v12 = 69772017.35296F;
double v11 = 5844688082350105180.39260;

signed char v9 (float v14)
{
history[history_index++] = (int)v14;
{
for (;;) {
union uu0 v17 = {524397540U };
unsigned int v16 = 3042790194U;
signed int v15 = -987601880;
trace++;
switch (trace)
{
case 11: 
return 64;
default: abort ();
}
}
}
}

signed char v7 (unsigned short v18, signed short v19, signed short v20)
{
history[history_index++] = (int)v18;
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
{
for (;;) {
struct ss1 v23 = { 51975, -41609023, 44740653U, 155U, };
signed int v22 = -2014414995;
union uu0 v21 = {2638852659U };
trace++;
switch (trace)
{
case 5: 
return -112;
default: abort ();
}
}
}
}

signed int v3 (union uu0 v24, unsigned char v25, signed int v26, struct ss1 v27)
{
history[history_index++] = (int)v24.f3;
history[history_index++] = (int)v25;
history[history_index++] = (int)v26;
history[history_index++] = (int)v27.f3;
history[history_index++] = (int)v27.f2;
history[history_index++] = (int)v27.f1;
history[history_index++] = (int)v27.f0;
{
for (;;) {
unsigned short v30 = 51188;
union uu1 v29 = {-1804787238 };
union uu1 v28 = {381171353 };
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
unsigned int v33;
v33 = v1 ();
history[history_index++] = (int)v33;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
