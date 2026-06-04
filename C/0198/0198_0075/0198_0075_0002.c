#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
signed int v1 (void);
signed int (*v2) (void) = v1;
static union uu0 v3 (signed char, signed short, struct ss0, unsigned int);
static union uu0 (*v4) (signed char, signed short, struct ss0, unsigned int) = v3;
extern struct ss1 v5 (struct ss1, unsigned int, struct ss0, unsigned int);
extern struct ss1 (*v6) (struct ss1, unsigned int, struct ss0, unsigned int);
static float v7 (unsigned int, struct ss0);
static float (*v8) (unsigned int, struct ss0) = v7;
struct ss1 v9 (signed char, unsigned char);
struct ss1 (*v10) (signed char, unsigned char) = v9;
extern int history[];
extern int history_index;
extern int trace;
signed char v31 = 8;
struct ss1 v30 = { 28171, -49782471, 2527127U, 278U, };
struct ss1 v29 = { 38222, 58913467, 34220865U, 75U, };

struct ss1 v9 (signed char v32, unsigned char v33)
{
history[history_index++] = (int)v32;
history[history_index++] = (int)v33;
{
for (;;) {
double v36 = -5604043171902802717.41042;
unsigned short v35 = 7920;
struct ss0 v34 = { 526375U, 564222U, 48081, };
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static float v7 (unsigned int v37, struct ss0 v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38.f2;
history[history_index++] = (int)v38.f1;
history[history_index++] = (int)v38.f0;
{
for (;;) {
double v41 = -4103349610463304990.61462;
union uu0 v40 = {1797343994U };
union uu0 v39 = {2853840187U };
trace++;
switch (trace)
{
case 10: 
{
signed int v42;
v42 = v1 ();
history[history_index++] = (int)v42;
}
break;
case 12: 
return 1126187474.46928F;
default: abort ();
}
}
}
}

static union uu0 v3 (signed char v43, signed short v44, struct ss0 v45, unsigned int v46)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45.f2;
history[history_index++] = (int)v45.f1;
history[history_index++] = (int)v45.f0;
history[history_index++] = (int)v46;
{
for (;;) {
signed char v49 = 28;
struct ss1 v48 = { 57935, 20885241, 9430527U, 206U, };
double v47 = 330858032873224922.22393;
trace++;
switch (trace)
{
case 1: 
{
signed int v50;
v50 = v1 ();
history[history_index++] = (int)v50;
}
break;
case 15: 
{
union uu0 v51;
v51.f1 = v46;
return v51;
}
default: abort ();
}
}
}
}

signed int v1 (void)
{
{
for (;;) {
signed char v54 = 39;
unsigned int v53 = 610215424U;
struct ss1 v52 = { 6175, 64469143, 48786950U, 82U, };
trace++;
switch (trace)
{
case 0: 
{
signed char v55;
signed short v56;
struct ss0 v57;
unsigned int v58;
union uu0 v59;
v55 = v54 - 58;
v56 = 28588 - 21417;
v57.f2 = 970139U;
v57.f1 = 295234U;
v57.f0 = 20808;
v58 = v53 - v53;
v59 = v3 (v55, v56, v57, v58);
history[history_index++] = (int)v59.f3;
}
break;
case 2: 
{
struct ss1 v60;
unsigned int v61;
struct ss0 v62;
unsigned int v63;
struct ss1 v64;
v60.f3 = 25528;
v60.f2 = -42354761;
v60.f1 = 53374283U;
v60.f0 = 136U;
v61 = 2149247567U + 1807975929U;
v62.f2 = 64690U;
v62.f1 = 727371U;
v62.f0 = 50662;
v63 = v53 - 2935874812U;
v64 = v5 (v60, v61, v62, v63);
history[history_index++] = (int)v64.f3;
history[history_index++] = (int)v64.f2;
history[history_index++] = (int)v64.f1;
history[history_index++] = (int)v64.f0;
}
break;
case 4: 
{
signed int v65;
v65 = (*v2) ();
history[history_index++] = (int)v65;
}
break;
case 5: 
{
signed int v66;
v66 = v1 ();
history[history_index++] = (int)v66;
}
break;
case 6: 
return 1652847736;
case 7: 
{
struct ss1 v67;
unsigned int v68;
struct ss0 v69;
unsigned int v70;
struct ss1 v71;
v67.f3 = 57879;
v67.f2 = -11993702;
v67.f1 = 65225193U;
v67.f0 = 505U;
v68 = v53 + 2700419729U;
v69.f2 = 644623U;
v69.f1 = 372631U;
v69.f0 = 46302;
v70 = v53 - v53;
v71 = (*v6) (v67, v68, v69, v70);
history[history_index++] = (int)v71.f3;
history[history_index++] = (int)v71.f2;
history[history_index++] = (int)v71.f1;
history[history_index++] = (int)v71.f0;
}
break;
case 9: 
{
unsigned int v72;
struct ss0 v73;
float v74;
v72 = 1992574882U - 1092197832U;
v73.f2 = 1013636U;
v73.f1 = 627229U;
v73.f0 = 40053;
v74 = (*v8) (v72, v73);
history[history_index++] = (int)v74;
}
break;
case 11: 
return 982113693;
case 13: 
return -941173666;
case 14: 
return -1904762111;
case 16: 
return -1865752773;
default: abort ();
}
}
}
}
