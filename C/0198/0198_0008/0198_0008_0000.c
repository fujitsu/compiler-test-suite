#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern struct ss0 v1 (signed char, union uu1, signed int, signed char);
extern struct ss0 (*v2) (signed char, union uu1, signed int, signed char);
extern union uu0 v5 (signed int, double, unsigned short);
extern union uu0 (*v6) (signed int, double, unsigned short);
unsigned char v7 (unsigned short, signed char, signed int, unsigned int);
unsigned char (*v8) (unsigned short, signed char, signed int, unsigned int) = v7;
float v9 (signed char, struct ss0);
float (*v10) (signed char, struct ss0) = v9;
extern int history[];
extern int history_index;
extern int trace;
struct ss0 v13 = { 806403U, 348541U, 41140, };
signed short v12 = -26873;
struct ss1 v11 = { 3297, 63367000, 49184990U, 313U, };

float v9 (signed char v14, struct ss0 v15)
{
history[history_index++] = (int)v14;
history[history_index++] = (int)v15.f2;
history[history_index++] = (int)v15.f1;
history[history_index++] = (int)v15.f0;
{
for (;;) {
unsigned short v18 = 3930;
struct ss0 v17 = { 42531U, 881410U, 58267, };
struct ss1 v16 = { 12206, 3014815, 40317115U, 72U, };
trace++;
switch (trace)
{
case 5: 
{
signed char v19;
struct ss0 v20;
float v21;
v19 = -100 - v14;
v20.f2 = 605062U;
v20.f1 = 910194U;
v20.f0 = 26882;
v21 = (*v10) (v19, v20);
history[history_index++] = (int)v21;
}
break;
case 6: 
{
signed char v22;
struct ss0 v23;
float v24;
v22 = 0 - 57;
v23.f2 = 958187U;
v23.f1 = 827677U;
v23.f0 = v18;
v24 = (*v10) (v22, v23);
history[history_index++] = (int)v24;
}
break;
case 7: 
return 1123681049.22098F;
case 8: 
{
signed char v25;
struct ss0 v26;
float v27;
v25 = v14 + -73;
v26.f2 = 546515U;
v26.f1 = 625004U;
v26.f0 = v18;
v27 = v9 (v25, v26);
history[history_index++] = (int)v27;
}
break;
case 9: 
return 182371359.32806F;
case 10: 
{
signed char v28;
struct ss0 v29;
float v30;
v28 = -91 - -27;
v29.f2 = 320488U;
v29.f1 = 394608U;
v29.f0 = 58932;
v30 = (*v10) (v28, v29);
history[history_index++] = (int)v30;
}
break;
case 11: 
return -1472708056.35205F;
case 12: 
return 1598807405.45338F;
case 13: 
return 460063962.57687F;
default: abort ();
}
}
}
}

unsigned char v7 (unsigned short v31, signed char v32, signed int v33, unsigned int v34)
{
history[history_index++] = (int)v31;
history[history_index++] = (int)v32;
history[history_index++] = (int)v33;
history[history_index++] = (int)v34;
{
for (;;) {
struct ss0 v37 = { 355375U, 302280U, 47952, };
signed int v36 = 878485606;
signed char v35 = -83;
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
signed char v40;
union uu1 v41;
signed int v42;
signed char v43;
struct ss0 v44;
v40 = -121 - 75;
v41.f2 = 132;
v42 = -407268972 + 1444899965;
v43 = -96 + -8;
v44 = v1 (v40, v41, v42, v43);
history[history_index++] = (int)v44.f2;
history[history_index++] = (int)v44.f1;
history[history_index++] = (int)v44.f0;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
