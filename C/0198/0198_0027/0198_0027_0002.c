#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
static float v3 (unsigned char);
static float (*v4) (unsigned char) = v3;
extern struct ss1 v5 (unsigned short, signed short);
extern struct ss1 (*v6) (unsigned short, signed short);
static float v7 (struct ss0);
static float (*v8) (struct ss0) = v7;
signed char v9 (void);
signed char (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v32 = 14914;
struct ss0 v31 = { 46107U, 134728U, 28892, };
unsigned char v30 = 76;

signed char v9 (void)
{
{
for (;;) {
signed char v35 = -79;
struct ss0 v34 = { 304136U, 461192U, 55677, };
struct ss0 v33 = { 327559U, 570752U, 65313, };
trace++;
switch (trace)
{
case 2: 
{
struct ss0 v36;
float v37;
v36.f2 = 453689U;
v36.f1 = 498930U;
v36.f0 = 13209;
v37 = (*v8) (v36);
history[history_index++] = (int)v37;
}
break;
case 6: 
return v35;
case 10: 
{
unsigned short v38;
v38 = v1 ();
history[history_index++] = (int)v38;
}
break;
case 12: 
return v35;
default: abort ();
}
}
}
}

static float v7 (struct ss0 v39)
{
history[history_index++] = (int)v39.f2;
history[history_index++] = (int)v39.f1;
history[history_index++] = (int)v39.f0;
{
for (;;) {
unsigned int v42 = 2435511489U;
struct ss1 v41 = { 46149, 49187479, 35896622U, 109U, };
union uu0 v40 = {2701768569U };
trace++;
switch (trace)
{
case 3: 
{
unsigned char v43;
float v44;
v43 = 78 - 146;
v44 = (*v4) (v43);
history[history_index++] = (int)v44;
}
break;
case 5: 
return 2113754019.26446F;
default: abort ();
}
}
}
}

static float v3 (unsigned char v45)
{
history[history_index++] = (int)v45;
{
for (;;) {
struct ss0 v48 = { 967451U, 271883U, 58443, };
union uu0 v47 = {752129226U };
signed int v46 = -434270879;
trace++;
switch (trace)
{
case 4: 
return -407175057.27273F;
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
struct ss0 v51 = { 181362U, 882779U, 47336, };
float v50 = -1916768557.53103F;
struct ss0 v49 = { 204293U, 253443U, 11790, };
trace++;
switch (trace)
{
case 0: 
{
unsigned short v52;
signed short v53;
struct ss1 v54;
v52 = 50847 + 899;
v53 = -19439 + -15400;
v54 = v5 (v52, v53);
history[history_index++] = (int)v54.f3;
history[history_index++] = (int)v54.f2;
history[history_index++] = (int)v54.f1;
history[history_index++] = (int)v54.f0;
}
break;
case 8: 
{
unsigned short v55;
signed short v56;
struct ss1 v57;
v55 = 8924 + 11802;
v56 = 27542 + 2607;
v57 = (*v6) (v55, v56);
history[history_index++] = (int)v57.f3;
history[history_index++] = (int)v57.f2;
history[history_index++] = (int)v57.f1;
history[history_index++] = (int)v57.f0;
}
break;
case 11: 
return 64509;
case 14: 
return 51978;
case 16: 
return 11637;
default: abort ();
}
}
}
}
