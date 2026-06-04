#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
float v1 (unsigned char);
float (*v2) (unsigned char) = v1;
static signed char v3 (void);
static signed char (*v4) (void) = v3;
static signed char v5 (void);
static signed char (*v6) (void) = v5;
extern struct ss1 v7 (unsigned int, unsigned char);
extern struct ss1 (*v8) (unsigned int, unsigned char);
static unsigned char v9 (struct ss0, union uu0);
static unsigned char (*v10) (struct ss0, union uu0) = v9;
extern int history[];
extern int history_index;
extern int trace;
float v35 = 1954153365.38515F;
union uu0 v34 = {2672722583U };
unsigned char v33 = 201;

static unsigned char v9 (struct ss0 v36, union uu0 v37)
{
history[history_index++] = (int)v36.f2;
history[history_index++] = (int)v36.f1;
history[history_index++] = (int)v36.f0;
history[history_index++] = (int)v37.f3;
{
for (;;) {
struct ss1 v40 = { 25472, 14157155, 42372645U, 119U, };
union uu1 v39 = {-1732851871 };
float v38 = 1209488438.22746F;
trace++;
switch (trace)
{
case 9: 
{
unsigned int v41;
unsigned char v42;
struct ss1 v43;
v41 = 3321868599U + 205283117U;
v42 = 23 + 34;
v43 = v7 (v41, v42);
history[history_index++] = (int)v43.f3;
history[history_index++] = (int)v43.f2;
history[history_index++] = (int)v43.f1;
history[history_index++] = (int)v43.f0;
}
break;
case 11: 
return 151;
default: abort ();
}
}
}
}

static signed char v5 (void)
{
{
for (;;) {
signed short v46 = -1639;
signed char v45 = 85;
unsigned char v44 = 177;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v47;
float v48;
v47 = v44 + v44;
v48 = v1 (v47);
history[history_index++] = (int)v48;
}
break;
case 13: 
return 80;
default: abort ();
}
}
}
}

static signed char v3 (void)
{
{
for (;;) {
double v51 = 1594545604302038055.2861;
unsigned short v50 = 28764;
struct ss0 v49 = { 998192U, 884522U, 8784, };
trace++;
switch (trace)
{
case 1: 
{
unsigned char v52;
float v53;
v52 = 23 - 183;
v53 = (*v2) (v52);
history[history_index++] = (int)v53;
}
break;
case 19: 
return 54;
default: abort ();
}
}
}
}

float v1 (unsigned char v54)
{
history[history_index++] = (int)v54;
{
for (;;) {
unsigned int v57 = 639306177U;
double v56 = -511212463614681351.60146;
float v55 = -1824550019.16094F;
trace++;
switch (trace)
{
case 0: 
{
signed char v58;
v58 = (*v4) ();
history[history_index++] = (int)v58;
}
break;
case 2: 
{
unsigned int v59;
unsigned char v60;
struct ss1 v61;
v59 = 1317445469U - 3815114494U;
v60 = 236 - v54;
v61 = (*v8) (v59, v60);
history[history_index++] = (int)v61.f3;
history[history_index++] = (int)v61.f2;
history[history_index++] = (int)v61.f1;
history[history_index++] = (int)v61.f0;
}
break;
case 4: 
{
unsigned int v62;
unsigned char v63;
struct ss1 v64;
v62 = 473767481U + 734506650U;
v63 = 121 - 228;
v64 = (*v8) (v62, v63);
history[history_index++] = (int)v64.f3;
history[history_index++] = (int)v64.f2;
history[history_index++] = (int)v64.f1;
history[history_index++] = (int)v64.f0;
}
break;
case 6: 
{
signed char v65;
v65 = (*v6) ();
history[history_index++] = (int)v65;
}
break;
case 8: 
{
struct ss0 v66;
union uu0 v67;
unsigned char v68;
v66.f2 = 456491U;
v66.f1 = 486197U;
v66.f0 = 25235;
v67.f0 = 111;
v68 = (*v10) (v66, v67);
history[history_index++] = (int)v68;
}
break;
case 12: 
return v55;
case 14: 
return v55;
case 16: 
return v55;
case 18: 
return v55;
case 20: 
return v55;
default: abort ();
}
}
}
}
