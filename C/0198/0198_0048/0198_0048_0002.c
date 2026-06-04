#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
signed short v3 (unsigned char, struct ss1, unsigned short, signed char);
signed short (*v4) (unsigned char, struct ss1, unsigned short, signed char) = v3;
signed int v5 (void);
signed int (*v6) (void) = v5;
extern struct ss1 v7 (unsigned int, unsigned int, float);
extern struct ss1 (*v8) (unsigned int, unsigned int, float);
signed int v9 (union uu0, unsigned int);
signed int (*v10) (union uu0, unsigned int) = v9;
extern int history[];
extern int history_index;
extern int trace;
struct ss0 v50 = { 625312U, 469290U, 48951, };
signed int v49 = -793855300;
signed char v48 = 104;

signed int v9 (union uu0 v51, unsigned int v52)
{
history[history_index++] = (int)v51.f3;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned short v55 = 30620;
struct ss1 v54 = { 49845, 56892214, 26490764U, 440U, };
signed int v53 = 2068598262;
trace++;
switch (trace)
{
case 10: 
{
unsigned int v56;
unsigned int v57;
float v58;
struct ss1 v59;
v56 = 1127645644U - 2127781729U;
v57 = v52 + 3421261493U;
v58 = 386267857.42730F;
v59 = (*v8) (v56, v57, v58);
history[history_index++] = (int)v59.f3;
history[history_index++] = (int)v59.f2;
history[history_index++] = (int)v59.f1;
history[history_index++] = (int)v59.f0;
}
break;
case 12: 
return v53;
default: abort ();
}
}
}
}

signed int v5 (void)
{
{
for (;;) {
union uu1 v62 = {-1749813927 };
float v61 = -1166232963.54079F;
unsigned int v60 = 1956077236U;
trace++;
switch (trace)
{
case 2: 
return 979099029;
case 6: 
return -1703727991;
default: abort ();
}
}
}
}

signed short v3 (unsigned char v63, struct ss1 v64, unsigned short v65, signed char v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64.f3;
history[history_index++] = (int)v64.f2;
history[history_index++] = (int)v64.f1;
history[history_index++] = (int)v64.f0;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed int v69 = -229977743;
union uu1 v68 = {-1540862691 };
signed short v67 = 19095;
trace++;
switch (trace)
{
case 1: 
{
signed int v70;
v70 = (*v6) ();
history[history_index++] = (int)v70;
}
break;
case 3: 
return 26868;
default: abort ();
}
}
}
}
