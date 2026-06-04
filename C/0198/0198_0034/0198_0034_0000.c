#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
double v3 (unsigned short, struct ss0, unsigned char);
double (*v4) (unsigned short, struct ss0, unsigned char) = v3;
struct ss0 v5 (void);
struct ss0 (*v6) (void) = v5;
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v13 = 2461829239U;
unsigned int v12 = 2751261171U;
union uu0 v11 = {2578288773U };

struct ss0 v5 (void)
{
{
for (;;) {
unsigned char v16 = 200;
double v15 = 7099546025808107102.19962;
signed char v14 = 23;
trace++;
switch (trace)
{
case 1: 
{
struct ss0 v17;
v17 = (*v6) ();
history[history_index++] = (int)v17.f2;
history[history_index++] = (int)v17.f1;
history[history_index++] = (int)v17.f0;
}
break;
case 2: 
{
struct ss0 v18;
v18 = v5 ();
history[history_index++] = (int)v18.f2;
history[history_index++] = (int)v18.f1;
history[history_index++] = (int)v18.f0;
}
break;
case 3: 
{
unsigned int v19;
v19 = v7 ();
history[history_index++] = (int)v19;
}
break;
case 5: 
{
unsigned int v20;
v20 = (*v10) ();
history[history_index++] = (int)v20;
}
break;
case 7: 
{
unsigned int v21;
v21 = v7 ();
history[history_index++] = (int)v21;
}
break;
case 13: 
{
struct ss0 v22;
v22.f2 = 39594U;
v22.f1 = 664295U;
v22.f0 = 765;
return v22;
}
case 14: 
{
struct ss0 v23;
v23.f2 = 775719U;
v23.f1 = 835370U;
v23.f0 = 29082;
return v23;
}
case 15: 
{
struct ss0 v24;
v24.f2 = 777599U;
v24.f1 = 729841U;
v24.f0 = 19412;
return v24;
}
default: abort ();
}
}
}
}

double v3 (unsigned short v25, struct ss0 v26, unsigned char v27)
{
history[history_index++] = (int)v25;
history[history_index++] = (int)v26.f2;
history[history_index++] = (int)v26.f1;
history[history_index++] = (int)v26.f0;
history[history_index++] = (int)v27;
{
for (;;) {
union uu1 v30 = {-1207622477 };
union uu1 v29 = {1954546376 };
unsigned short v28 = 34208;
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
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
