#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
static unsigned char v3 (signed char, unsigned int);
static unsigned char (*v4) (signed char, unsigned int) = v3;
struct ss0 v5 (signed int, unsigned short, unsigned short);
struct ss0 (*v6) (signed int, unsigned short, unsigned short) = v5;
union uu0 v7 (double);
union uu0 (*v8) (double) = v7;
union uu1 v9 (union uu0);
union uu1 (*v10) (union uu0) = v9;
extern int history[];
extern int history_index;
extern int trace;
signed short v19 = -4634;
unsigned short v18 = 37001;
signed char v17 = 26;

union uu1 v9 (union uu0 v20)
{
history[history_index++] = (int)v20.f3;
{
for (;;) {
unsigned char v23 = 179;
float v22 = -1687265399.19184F;
unsigned short v21 = 1382;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

union uu0 v7 (double v24)
{
history[history_index++] = (int)v24;
{
for (;;) {
signed int v27 = 997199736;
signed int v26 = 1422827969;
unsigned char v25 = 8;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

struct ss0 v5 (signed int v28, unsigned short v29, unsigned short v30)
{
history[history_index++] = (int)v28;
history[history_index++] = (int)v29;
history[history_index++] = (int)v30;
{
for (;;) {
unsigned char v33 = 102;
union uu1 v32 = {641128408 };
signed short v31 = -5016;
trace++;
switch (trace)
{
case 1: 
{
signed char v34;
unsigned int v35;
unsigned char v36;
v34 = -27 - 64;
v35 = 1051328363U + 1367522106U;
v36 = (*v4) (v34, v35);
history[history_index++] = (int)v36;
}
break;
case 3: 
{
signed char v37;
unsigned int v38;
unsigned char v39;
v37 = -55 - -29;
v38 = 3925613079U + 3950994458U;
v39 = v3 (v37, v38);
history[history_index++] = (int)v39;
}
break;
case 5: 
{
signed char v40;
unsigned int v41;
unsigned char v42;
v40 = 25 + -47;
v41 = 1473278560U + 664429418U;
v42 = (*v4) (v40, v41);
history[history_index++] = (int)v42;
}
break;
case 7: 
{
signed char v43;
unsigned int v44;
unsigned char v45;
v43 = -121 + 76;
v44 = 3716569255U + 787065018U;
v45 = (*v4) (v43, v44);
history[history_index++] = (int)v45;
}
break;
case 9: 
{
signed char v46;
unsigned int v47;
unsigned char v48;
v46 = -13 - -63;
v47 = 2455202109U + 3833160192U;
v48 = (*v4) (v46, v47);
history[history_index++] = (int)v48;
}
break;
case 11: 
{
struct ss0 v49;
v49.f2 = 556452U;
v49.f1 = 53951U;
v49.f0 = v29;
return v49;
}
case 13: 
{
struct ss0 v50;
v50.f2 = 76356U;
v50.f1 = 577701U;
v50.f0 = 30701;
return v50;
}
case 15: 
{
struct ss0 v51;
v51.f2 = 359140U;
v51.f1 = 556786U;
v51.f0 = v30;
return v51;
}
default: abort ();
}
}
}
}

static unsigned char v3 (signed char v52, unsigned int v53)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
float v56 = -1318442704.53468F;
signed char v55 = -81;
struct ss1 v54 = { 18020, -1906708, 63410220U, 136U, };
trace++;
switch (trace)
{
case 2: 
return 159;
case 4: 
{
signed int v57;
unsigned short v58;
unsigned short v59;
struct ss0 v60;
v57 = -882156021 - 1082253053;
v58 = 48840 + 9129;
v59 = 2318 + 1092;
v60 = (*v6) (v57, v58, v59);
history[history_index++] = (int)v60.f2;
history[history_index++] = (int)v60.f1;
history[history_index++] = (int)v60.f0;
}
break;
case 6: 
return 221;
case 8: 
{
signed int v61;
unsigned short v62;
unsigned short v63;
struct ss0 v64;
v61 = -1018444438 + -262110916;
v62 = 59548 + 55740;
v63 = 41193 + 25680;
v64 = (*v6) (v61, v62, v63);
history[history_index++] = (int)v64.f2;
history[history_index++] = (int)v64.f1;
history[history_index++] = (int)v64.f0;
}
break;
case 10: 
return 187;
case 12: 
return 0;
case 14: 
return 38;
default: abort ();
}
}
}
}
