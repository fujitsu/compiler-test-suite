#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned short v1 (signed char, unsigned char, unsigned char);
extern unsigned short (*v2) (signed char, unsigned char, unsigned char);
void v3 (unsigned char, signed char, signed int);
void (*v4) (unsigned char, signed char, signed int) = v3;
signed int v5 (void);
signed int (*v6) (void) = v5;
void v7 (float);
void (*v8) (float) = v7;
extern struct ss0 v9 (unsigned char, unsigned short);
extern struct ss0 (*v10) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
struct ss0 v41 = { 329775U, 99581U, 24099, };
double v40 = 4195552887235239890.27667;
unsigned int v39 = 3327105357U;

void v7 (float v42)
{
history[history_index++] = (int)v42;
{
for (;;) {
struct ss0 v45 = { 665695U, 273397U, 57751, };
struct ss1 v44 = { 57676, 40428714, 22250867U, 218U, };
double v43 = -1855595733303346090.31498;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (void)
{
{
for (;;) {
unsigned int v48 = 480975017U;
unsigned short v47 = 42290;
struct ss1 v46 = { 653, 65835234, 62447012U, 187U, };
trace++;
switch (trace)
{
case 3: 
return -1418590354;
case 7: 
{
signed char v49;
unsigned char v50;
unsigned char v51;
unsigned short v52;
v49 = 67 + 72;
v50 = 201 + 127;
v51 = 79 - 151;
v52 = (*v2) (v49, v50, v51);
history[history_index++] = (int)v52;
}
break;
case 13: 
return -1738547226;
default: abort ();
}
}
}
}

void v3 (unsigned char v53, signed char v54, signed int v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
double v58 = 6353162694673883109.1485;
signed char v57 = -110;
struct ss1 v56 = { 60993, 17935921, 22797407U, 128U, };
trace++;
switch (trace)
{
case 5: 
{
signed char v59;
unsigned char v60;
unsigned char v61;
unsigned short v62;
v59 = v57 + 124;
v60 = v53 - 6;
v61 = 92 + 24;
v62 = (*v2) (v59, v60, v61);
history[history_index++] = (int)v62;
}
break;
case 9: 
{
signed char v63;
unsigned char v64;
unsigned char v65;
unsigned short v66;
v63 = v54 + v54;
v64 = 207 + v53;
v65 = v53 + v53;
v66 = (*v2) (v63, v64, v65);
history[history_index++] = (int)v66;
}
break;
case 11: 
return;
case 15: 
return;
default: abort ();
}
}
}
}
