#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
struct ss1 v3 (unsigned short, signed short);
struct ss1 (*v4) (unsigned short, signed short) = v3;
signed char v5 (void);
signed char (*v6) (void) = v5;
extern double v7 (signed short, signed char);
extern double (*v8) (signed short, signed char);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v34 = 36360;
unsigned short v33 = 9392;
unsigned short v32 = 5852;

signed char v5 (void)
{
{
for (;;) {
double v37 = -7351381917708774044.39823;
union uu1 v36 = {-1012111422 };
unsigned char v35 = 82;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

struct ss1 v3 (unsigned short v38, signed short v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned int v42 = 3517238947U;
struct ss1 v41 = { 6059, -31419599, 5389954U, 262U, };
signed int v40 = -60286434;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v43;
signed short v44;
struct ss1 v45;
v43 = v38 - v38;
v44 = -22962 - v39;
v45 = v3 (v43, v44);
history[history_index++] = (int)v45.f3;
history[history_index++] = (int)v45.f2;
history[history_index++] = (int)v45.f1;
history[history_index++] = (int)v45.f0;
}
break;
case 2: 
{
struct ss1 v46;
v46.f3 = 32454;
v46.f2 = 48124396;
v46.f1 = 59536214U;
v46.f0 = 422U;
return v46;
}
case 3: 
{
unsigned short v47;
signed short v48;
struct ss1 v49;
v47 = 24015 + v38;
v48 = 12245 - 21598;
v49 = (*v4) (v47, v48);
history[history_index++] = (int)v49.f3;
history[history_index++] = (int)v49.f2;
history[history_index++] = (int)v49.f1;
history[history_index++] = (int)v49.f0;
}
break;
case 4: 
{
unsigned short v50;
signed short v51;
struct ss1 v52;
v50 = 24670 - v38;
v51 = -22247 + -10855;
v52 = (*v4) (v50, v51);
history[history_index++] = (int)v52.f3;
history[history_index++] = (int)v52.f2;
history[history_index++] = (int)v52.f1;
history[history_index++] = (int)v52.f0;
}
break;
case 5: 
{
struct ss1 v53;
v53.f3 = v38;
v53.f2 = -18070769;
v53.f1 = 51330267U;
v53.f0 = 32U;
return v53;
}
case 6: 
{
unsigned short v54;
signed short v55;
struct ss1 v56;
v54 = 58974 + 52831;
v55 = -3356 + -29102;
v56 = v3 (v54, v55);
history[history_index++] = (int)v56.f3;
history[history_index++] = (int)v56.f2;
history[history_index++] = (int)v56.f1;
history[history_index++] = (int)v56.f0;
}
break;
case 7: 
{
unsigned short v57;
signed short v58;
struct ss1 v59;
v57 = 44736 - 39087;
v58 = v39 + 5261;
v59 = v3 (v57, v58);
history[history_index++] = (int)v59.f3;
history[history_index++] = (int)v59.f2;
history[history_index++] = (int)v59.f1;
history[history_index++] = (int)v59.f0;
}
break;
case 8: 
{
struct ss1 v60;
v60.f3 = 4991;
v60.f2 = 39822070;
v60.f1 = 12942717U;
v60.f0 = 330U;
return v60;
}
case 9: 
{
struct ss1 v61;
v61.f3 = v38;
v61.f2 = -52219203;
v61.f1 = 61311706U;
v61.f0 = 35U;
return v61;
}
case 10: 
{
unsigned short v62;
signed short v63;
struct ss1 v64;
v62 = 31821 + v38;
v63 = 5746 - 23504;
v64 = (*v4) (v62, v63);
history[history_index++] = (int)v64.f3;
history[history_index++] = (int)v64.f2;
history[history_index++] = (int)v64.f1;
history[history_index++] = (int)v64.f0;
}
break;
case 11: 
{
struct ss1 v65;
v65.f3 = 35761;
v65.f2 = 53932538;
v65.f1 = 42727601U;
v65.f0 = 150U;
return v65;
}
case 12: 
{
struct ss1 v66;
v66.f3 = 56542;
v66.f2 = -10950120;
v66.f1 = 62823496U;
v66.f0 = 72U;
return v66;
}
case 13: 
{
struct ss1 v67;
v67.f3 = v38;
v67.f2 = 21653630;
v67.f1 = 21868813U;
v67.f0 = 383U;
return v67;
}
default: abort ();
}
}
}
}
