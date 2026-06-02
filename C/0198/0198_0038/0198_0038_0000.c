#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern struct ss0 v1 (unsigned int, struct ss0);
extern struct ss0 (*v2) (unsigned int, struct ss0);
union uu1 v3 (struct ss0, union uu0, signed int, union uu0);
union uu1 (*v4) (struct ss0, union uu0, signed int, union uu0) = v3;
signed int v5 (signed short, unsigned int);
signed int (*v6) (signed short, unsigned int) = v5;
extern struct ss0 v7 (unsigned int, float, unsigned short, float);
extern struct ss0 (*v8) (unsigned int, float, unsigned short, float);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
struct ss1 v13 = { 55652, 33597319, 9166719U, 341U, };
unsigned char v12 = 143;
double v11 = 3078839357459730087.20726;

signed int v5 (signed short v14, unsigned int v15)
{
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
{
for (;;) {
unsigned int v18 = 23941095U;
struct ss1 v17 = { 63381, 9049926, 42021267U, 326U, };
struct ss1 v16 = { 28774, -66371437, 21010380U, 175U, };
trace++;
switch (trace)
{
case 1: 
{
unsigned int v19;
struct ss0 v20;
struct ss0 v21;
v19 = 1839095802U - v18;
v20.f2 = 811082U;
v20.f1 = 760863U;
v20.f0 = 6085;
v21 = v1 (v19, v20);
history[history_index++] = (int)v21.f2;
history[history_index++] = (int)v21.f1;
history[history_index++] = (int)v21.f0;
}
break;
case 7: 
{
unsigned int v22;
struct ss0 v23;
struct ss0 v24;
v22 = v18 + v15;
v23.f2 = 3360U;
v23.f1 = 972250U;
v23.f0 = 57622;
v24 = v1 (v22, v23);
history[history_index++] = (int)v24.f2;
history[history_index++] = (int)v24.f1;
history[history_index++] = (int)v24.f0;
}
break;
case 11: 
return -1215370916;
default: abort ();
}
}
}
}

union uu1 v3 (struct ss0 v25, union uu0 v26, signed int v27, union uu0 v28)
{
history[history_index++] = (int)v25.f2;
history[history_index++] = (int)v25.f1;
history[history_index++] = (int)v25.f0;
history[history_index++] = (int)v26.f3;
history[history_index++] = (int)v27;
history[history_index++] = (int)v28.f3;
{
for (;;) {
struct ss0 v31 = { 839067U, 118469U, 31520, };
unsigned int v30 = 840029337U;
unsigned short v29 = 65322;
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
unsigned int v34;
struct ss0 v35;
struct ss0 v36;
v34 = 3702373006U - 1066332758U;
v35.f2 = 135615U;
v35.f1 = 269975U;
v35.f0 = 55899;
v36 = v1 (v34, v35);
history[history_index++] = (int)v36.f2;
history[history_index++] = (int)v36.f1;
history[history_index++] = (int)v36.f0;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
