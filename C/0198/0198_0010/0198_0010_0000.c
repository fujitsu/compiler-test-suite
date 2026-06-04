#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern struct ss1 v1 (signed short);
extern struct ss1 (*v2) (signed short);
extern unsigned short v3 (union uu1);
extern unsigned short (*v4) (union uu1);
float v5 (float, signed short);
float (*v6) (float, signed short) = v5;
extern signed int v7 (unsigned short);
extern signed int (*v8) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
struct ss0 v13 = { 638268U, 942158U, 39639, };
union uu1 v12 = {-1497754839 };
float v11 = 133506149.37867F;

float v5 (float v14, signed short v15)
{
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
{
for (;;) {
signed int v18 = 1490188380;
signed short v17 = 20749;
union uu0 v16 = {2962918922U };
trace++;
switch (trace)
{
case 5: 
{
unsigned short v19;
signed int v20;
v19 = 39587 - 24545;
v20 = (*v8) (v19);
history[history_index++] = (int)v20;
}
break;
case 7: 
return -1196534484.32026F;
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
signed short v23;
struct ss1 v24;
v23 = -16532 - 7692;
v24 = (*v2) (v23);
history[history_index++] = (int)v24.f3;
history[history_index++] = (int)v24.f2;
history[history_index++] = (int)v24.f1;
history[history_index++] = (int)v24.f0;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
