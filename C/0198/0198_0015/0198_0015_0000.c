#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
static unsigned short v1 (signed int, unsigned char);
static unsigned short (*v2) (signed int, unsigned char) = v1;
extern struct ss1 v3 (unsigned short, signed short);
extern struct ss1 (*v4) (unsigned short, signed short);
extern signed char v5 (void);
extern signed char (*v6) (void);
double v7 (signed short, signed char);
double (*v8) (signed short, signed char) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v13 = 241;
unsigned int v12 = 2410226284U;
unsigned int v11 = 3218995108U;

double v7 (signed short v14, signed char v15)
{
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
{
for (;;) {
union uu1 v18 = {-320672635 };
union uu1 v17 = {-41700320 };
struct ss0 v16 = { 597962U, 744268U, 36512, };
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v1 (signed int v19, unsigned char v20)
{
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
{
for (;;) {
unsigned int v23 = 9221386U;
signed int v22 = -1482576882;
signed char v21 = 45;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v24;
signed short v25;
struct ss1 v26;
v24 = 8811 + 13605;
v25 = -28418 - -23784;
v26 = (*v4) (v24, v25);
history[history_index++] = (int)v26.f3;
history[history_index++] = (int)v26.f2;
history[history_index++] = (int)v26.f1;
history[history_index++] = (int)v26.f0;
}
break;
case 14: 
return 43497;
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
signed int v29;
unsigned char v30;
unsigned short v31;
v29 = -2111262082 - -1196275188;
v30 = v13 + 103;
v31 = (*v2) (v29, v30);
history[history_index++] = (int)v31;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
