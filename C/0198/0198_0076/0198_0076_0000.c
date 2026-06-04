#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
signed short v1 (void);
signed short (*v2) (void) = v1;
extern signed int v3 (unsigned char);
extern signed int (*v4) (unsigned char);
extern unsigned char v5 (double, signed int, signed int, double);
extern unsigned char (*v6) (double, signed int, signed int, double);
extern struct ss0 v7 (union uu1);
extern struct ss0 (*v8) (union uu1);
extern double v9 (void);
extern double (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v13 = 2329009414U;
union uu1 v12 = {-1979055047 };
unsigned char v11 = 47;

signed short v1 (void)
{
{
for (;;) {
struct ss0 v16 = { 270671U, 1034145U, 25263, };
struct ss0 v15 = { 247120U, 356687U, 26977, };
signed char v14 = 45;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v17;
signed int v18;
v17 = 114 - 123;
v18 = v3 (v17);
history[history_index++] = (int)v18;
}
break;
case 2: 
{
unsigned char v19;
signed int v20;
v19 = 93 + 83;
v20 = v3 (v19);
history[history_index++] = (int)v20;
}
break;
case 4: 
{
double v21;
v21 = v9 ();
history[history_index++] = (int)v21;
}
break;
case 6: 
{
unsigned char v22;
signed int v23;
v22 = 84 + 100;
v23 = v3 (v22);
history[history_index++] = (int)v23;
}
break;
case 8: 
{
unsigned char v24;
signed int v25;
v24 = 211 - 12;
v25 = (*v4) (v24);
history[history_index++] = (int)v25;
}
break;
case 10: 
{
double v26;
signed int v27;
signed int v28;
double v29;
unsigned char v30;
#if defined(__aarch64__)
v26 = -2147483648;
#else
v26 = -7134308524324781291.31677;
#endif
v27 = -993044968 - -831639115;
v28 = -953235189 + 1315053906;
#if defined(__aarch64__)
v29 = -2147483648;
#else
v29 = -2649049837784833970.47499;
#endif
v30 = (*v6) (v26, v27, v28, v29);
history[history_index++] = (int)v30;
}
break;
case 12: 
return -20227;
case 14: 
return -8454;
case 16: 
return -29651;
case 18: 
return -17545;
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
signed short v33;
v33 = (*v2) ();
history[history_index++] = (int)v33;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
