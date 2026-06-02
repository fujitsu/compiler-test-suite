#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
static unsigned char v1 (signed short, signed short);
static unsigned char (*v2) (signed short, signed short) = v1;
static unsigned int v3 (signed char);
static unsigned int (*v4) (signed char) = v3;
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
struct ss0 v13 = { 708366U, 437846U, 61017, };
signed short v12 = -13103;
union uu1 v11 = {861162256 };

static unsigned int v3 (signed char v14)
{
history[history_index++] = (int)v14;
{
for (;;) {
unsigned int v17 = 1078710324U;
signed short v16 = 724;
unsigned int v15 = 1902606700U;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v18;
v18 = (*v10) ();
history[history_index++] = (int)v18;
}
break;
case 5: 
{
unsigned short v19;
v19 = (*v10) ();
history[history_index++] = (int)v19;
}
break;
case 11: 
return v15;
default: abort ();
}
}
}
}

static unsigned char v1 (signed short v20, signed short v21)
{
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
{
for (;;) {
signed short v24 = 31750;
signed int v23 = -735542402;
struct ss1 v22 = { 47689, -5739702, 13962476U, 163U, };
trace++;
switch (trace)
{
case 0: 
{
signed char v25;
unsigned int v26;
v25 = -30 + -59;
v26 = (*v4) (v25);
history[history_index++] = (int)v26;
}
break;
case 12: 
return 130;
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
signed short v29;
signed short v30;
unsigned char v31;
v29 = 15460 - v12;
v30 = 13478 - v12;
v31 = v1 (v29, v30);
history[history_index++] = (int)v31;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
