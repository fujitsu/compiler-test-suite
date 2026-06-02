#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
signed short v1 (double);
signed short (*v2) (double) = v1;
extern union uu1 v3 (void);
extern union uu1 (*v4) (void);
static void v5 (struct ss1, signed short);
static void (*v6) (struct ss1, signed short) = v5;
extern struct ss0 v7 (struct ss0);
extern struct ss0 (*v8) (struct ss0);
static void v9 (struct ss0);
static void (*v10) (struct ss0) = v9;
extern int history[];
extern int history_index;
extern int trace;
signed short v20 = 26293;
signed char v19 = -111;
unsigned int v18 = 1347762918U;

static void v9 (struct ss0 v21)
{
history[history_index++] = (int)v21.f2;
history[history_index++] = (int)v21.f1;
history[history_index++] = (int)v21.f0;
{
for (;;) {
union uu1 v24 = {1033296089 };
signed char v23 = 23;
signed char v22 = 20;
trace++;
switch (trace)
{
case 1: 
{
struct ss0 v25;
v25.f2 = 964454U;
v25.f1 = 851070U;
v25.f0 = 52697;
(*v10) (v25);
}
break;
case 2: 
{
struct ss0 v26;
v26.f2 = 978823U;
v26.f1 = 433647U;
v26.f0 = 24284;
(*v10) (v26);
}
break;
case 3: 
return;
case 4: 
return;
case 5: 
{
struct ss1 v27;
signed short v28;
v27.f3 = 16019;
v27.f2 = -51246273;
v27.f1 = 8305549U;
v27.f0 = 308U;
v28 = -4773 - 15675;
(*v6) (v27, v28);
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

static void v5 (struct ss1 v29, signed short v30)
{
history[history_index++] = (int)v29.f3;
history[history_index++] = (int)v29.f2;
history[history_index++] = (int)v29.f1;
history[history_index++] = (int)v29.f0;
history[history_index++] = (int)v30;
{
for (;;) {
signed short v33 = -16925;
unsigned int v32 = 3243352297U;
double v31 = 8111788462863377576.36848;
trace++;
switch (trace)
{
case 6: 
{
struct ss1 v34;
signed short v35;
v34.f3 = 58651;
v34.f2 = -41881197;
v34.f1 = 53257071U;
v34.f0 = 461U;
v35 = v33 - -31776;
(*v6) (v34, v35);
}
break;
case 7: 
return;
case 8: 
{
struct ss1 v36;
signed short v37;
v36.f3 = 24012;
v36.f2 = 17639162;
v36.f1 = 61556822U;
v36.f0 = 38U;
v37 = v30 - v30;
(*v6) (v36, v37);
}
break;
case 9: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

signed short v1 (double v38)
{
history[history_index++] = (int)v38;
{
for (;;) {
float v41 = -39717128.34488F;
float v40 = -170384683.49382F;
unsigned short v39 = 38963;
trace++;
switch (trace)
{
case 0: 
{
struct ss0 v42;
v42.f2 = 1040062U;
v42.f1 = 130559U;
v42.f0 = 45298;
v9 (v42);
}
break;
case 12: 
return 5505;
default: abort ();
}
}
}
}
