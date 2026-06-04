#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed int v1 (signed int, unsigned short, signed char);
extern signed int (*v2) (signed int, unsigned short, signed char);
struct ss1 v3 (union uu1, signed char);
struct ss1 (*v4) (union uu1, signed char) = v3;
static struct ss0 v5 (unsigned char, double);
static struct ss0 (*v6) (unsigned char, double) = v5;
void v7 (struct ss1, struct ss0, unsigned int);
void (*v8) (struct ss1, struct ss0, unsigned int) = v7;
signed int v9 (unsigned int, struct ss0, signed char);
signed int (*v10) (unsigned int, struct ss0, signed char) = v9;
extern int history[];
extern int history_index;
extern int trace;
signed short v22 = -8299;
signed int v21 = 1912126110;
struct ss0 v20 = { 1020451U, 315548U, 27574, };

signed int v9 (unsigned int v23, struct ss0 v24, signed char v25)
{
history[history_index++] = (int)v23;
history[history_index++] = (int)v24.f2;
history[history_index++] = (int)v24.f1;
history[history_index++] = (int)v24.f0;
history[history_index++] = (int)v25;
{
for (;;) {
unsigned char v28 = 228;
signed short v27 = 13818;
struct ss0 v26 = { 427548U, 980411U, 17567, };
trace++;
switch (trace)
{
case 1: 
{
unsigned char v29;
double v30;
struct ss0 v31;
v29 = v28 + 14;
#if defined(__aarch64__) || defined(__x86_64__)
 v30 = -2147483648;
#else
v30 = -4846360403273525590.8931;
#endif
v31 = (*v6) (v29, v30);
history[history_index++] = (int)v31.f2;
history[history_index++] = (int)v31.f1;
history[history_index++] = (int)v31.f0;
}
break;
case 3: 
{
unsigned char v32;
double v33;
struct ss0 v34;
v32 = v28 + 232;
#if defined(__aarch64__) || defined(__x86_64__)
v33 = -2147483648;
#else
v33 = -1337166515181464545.41017;
#endif

v34 = (*v6) (v32, v33);
history[history_index++] = (int)v34.f2;
history[history_index++] = (int)v34.f1;
history[history_index++] = (int)v34.f0;
}
break;
case 5: 
{
unsigned char v35;
double v36;
struct ss0 v37;
v35 = 6 - 111;
#if defined(__aarch64__) || defined(__x86_64__)
v36 = -2147483648;
#else
v36 = -6452841411241468382.20463;
#endif
v37 = v5 (v35, v36);
history[history_index++] = (int)v37.f2;
history[history_index++] = (int)v37.f1;
history[history_index++] = (int)v37.f0;
}
break;
case 9: 
{
unsigned char v38;
double v39;
struct ss0 v40;
v38 = v28 - v28;
#if defined(__aarch64__) || defined(__x86_64__)
v39 = -2147483648;
#else
v39 = -9022276454877763427.53301;
#endif
v40 = (*v6) (v38, v39);
history[history_index++] = (int)v40.f2;
history[history_index++] = (int)v40.f1;
history[history_index++] = (int)v40.f0;
}
break;
case 11: 
return -961168596;
case 13: 
return 506120291;
case 15: 
return -852924123;
case 17: 
return -1132461584;
default: abort ();
}
}
}
}

void v7 (struct ss1 v41, struct ss0 v42, unsigned int v43)
{
history[history_index++] = (int)v41.f3;
history[history_index++] = (int)v41.f2;
history[history_index++] = (int)v41.f1;
history[history_index++] = (int)v41.f0;
history[history_index++] = (int)v42.f2;
history[history_index++] = (int)v42.f1;
history[history_index++] = (int)v42.f0;
history[history_index++] = (int)v43;
{
for (;;) {
double v46 = -1899447691784883612.6390;
struct ss1 v45 = { 34578, -28708796, 15562090U, 83U, };
unsigned char v44 = 24;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static struct ss0 v5 (unsigned char v47, double v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned char v51 = 154;
union uu0 v50 = {3506166780U };
unsigned int v49 = 838721500U;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v52;
struct ss0 v53;
signed char v54;
signed int v55;
v52 = v49 + v49;
v53.f2 = 906188U;
v53.f1 = 200781U;
v53.f0 = 52144;
v54 = -66 - -110;
v55 = v9 (v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 4: 
{
struct ss0 v56;
v56.f2 = 81551U;
v56.f1 = 845673U;
v56.f0 = 31284;
return v56;
}
case 6: 
{
signed int v57;
unsigned short v58;
signed char v59;
signed int v60;
v57 = -405718495 - 1339736205;
v58 = 46363 + 52400;
v59 = -82 - 46;
v60 = (*v2) (v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 8: 
{
unsigned int v61;
struct ss0 v62;
signed char v63;
signed int v64;
v61 = v49 - 4030249164U;
v62.f2 = 830666U;
v62.f1 = 135506U;
v62.f0 = 11570;
v63 = -58 - 9;
v64 = (*v10) (v61, v62, v63);
history[history_index++] = (int)v64;
}
break;
case 10: 
{
unsigned int v65;
struct ss0 v66;
signed char v67;
signed int v68;
v65 = v49 - v49;
v66.f2 = 339490U;
v66.f1 = 627317U;
v66.f0 = 12260;
v67 = 123 - -127;
v68 = (*v10) (v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 12: 
{
struct ss0 v69;
v69.f2 = 378942U;
v69.f1 = 645185U;
v69.f0 = 33633;
return v69;
}
case 14: 
{
struct ss0 v70;
v70.f2 = 893376U;
v70.f1 = 17272U;
v70.f0 = 20843;
return v70;
}
case 16: 
{
struct ss0 v71;
v71.f2 = 933528U;
v71.f1 = 694741U;
v71.f0 = 56184;
return v71;
}
default: abort ();
}
}
}
}

struct ss1 v3 (union uu1 v72, signed char v73)
{
history[history_index++] = (int)v72.f2;
history[history_index++] = (int)v73;
{
for (;;) {
double v76 = -7291602529747716275.23090;
struct ss1 v75 = { 49302, 28034010, 34506498U, 362U, };
float v74 = 387215514.12175F;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
