#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
static signed char v1 (unsigned short, struct ss1);
static signed char (*v2) (unsigned short, struct ss1) = v1;
extern signed short v3 (unsigned char, struct ss1, unsigned short, signed char);
extern signed short (*v4) (unsigned char, struct ss1, unsigned short, signed char);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern struct ss1 v7 (unsigned int, unsigned int, float);
extern struct ss1 (*v8) (unsigned int, unsigned int, float);
extern signed int v9 (union uu0, unsigned int);
extern signed int (*v10) (union uu0, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v13 = 3584137897U;
signed int v12 = 608737896;
double v11 = -1730371409284639334.25448;

static signed char v1 (unsigned short v14, struct ss1 v15)
{
history[history_index++] = (int)v14;
history[history_index++] = (int)v15.f3;
history[history_index++] = (int)v15.f2;
history[history_index++] = (int)v15.f1;
history[history_index++] = (int)v15.f0;
{
for (;;) {
signed char v18 = 9;
unsigned int v17 = 1586948504U;
signed short v16 = 15693;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v19;
struct ss1 v20;
unsigned short v21;
signed char v22;
signed short v23;
v19 = 156 - 123;
v20.f3 = v14;
v20.f2 = 25760036;
v20.f1 = 15922512U;
v20.f0 = 191U;
v21 = v14 + v14;
v22 = v18 + v18;
v23 = (*v4) (v19, v20, v21, v22);
history[history_index++] = (int)v23;
}
break;
case 4: 
{
unsigned int v24;
unsigned int v25;
float v26;
struct ss1 v27;
v24 = v17 - v17;
v25 = v17 + v17;
v26 = 941232217.30762F;
v27 = v7 (v24, v25, v26);
history[history_index++] = (int)v27.f3;
history[history_index++] = (int)v27.f2;
history[history_index++] = (int)v27.f1;
history[history_index++] = (int)v27.f0;
}
break;
case 8: 
return -29;
case 9: 
{
union uu0 v28;
unsigned int v29;
signed int v30;
v28.f0 = v18;
v29 = v17 - 749027202U;
v30 = (*v10) (v28, v29);
history[history_index++] = (int)v30;
}
break;
case 13: 
return 125;
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
unsigned short v33;
struct ss1 v34;
signed char v35;
v33 = 33657 + 5750;
v34.f3 = 39725;
v34.f2 = 44943668;
v34.f1 = 58852638U;
v34.f0 = 324U;
v35 = (*v2) (v33, v34);
history[history_index++] = (int)v35;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
