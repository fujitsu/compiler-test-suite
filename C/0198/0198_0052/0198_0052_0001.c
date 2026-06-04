#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
void v3 (unsigned int, struct ss1, signed short, unsigned int);
void (*v4) (unsigned int, struct ss1, signed short, unsigned int) = v3;
extern double v5 (unsigned int, union uu1);
extern double (*v6) (unsigned int, union uu1);
extern struct ss1 v7 (float, signed int);
extern struct ss1 (*v8) (float, signed int);
extern float v9 (void);
extern float (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
struct ss0 v36 = { 861992U, 721266U, 52858, };
unsigned int v35 = 153226708U;
signed char v34 = -58;

void v3 (unsigned int v37, struct ss1 v38, signed short v39, unsigned int v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38.f3;
history[history_index++] = (int)v38.f2;
history[history_index++] = (int)v38.f1;
history[history_index++] = (int)v38.f0;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
union uu1 v43 = {1291804606 };
signed int v42 = 1379942611;
union uu0 v41 = {2638876648U };
trace++;
switch (trace)
{
case 1: 
{
unsigned int v44;
struct ss1 v45;
signed short v46;
unsigned int v47;
v44 = v37 - 985304073U;
v45.f3 = 18339;
v45.f2 = 60615975;
v45.f1 = 53198518U;
v45.f0 = 23U;
v46 = v39 - 3600;
v47 = v40 + v37;
v3 (v44, v45, v46, v47);
}
break;
case 2: 
{
unsigned int v48;
struct ss1 v49;
signed short v50;
unsigned int v51;
v48 = v37 - v37;
v49.f3 = 1301;
v49.f2 = 65975374;
v49.f1 = 23263619U;
v49.f0 = 508U;
v50 = 31222 - -1660;
v51 = v40 - v37;
v3 (v48, v49, v50, v51);
}
break;
case 3: 
return;
case 4: 
{
unsigned int v52;
struct ss1 v53;
signed short v54;
unsigned int v55;
v52 = v40 - v37;
v53.f3 = 2433;
v53.f2 = -38071889;
v53.f1 = 52337914U;
v53.f0 = 62U;
v54 = 17172 + -23623;
v55 = v37 - 1359356935U;
v3 (v52, v53, v54, v55);
}
break;
case 5: 
{
unsigned int v56;
struct ss1 v57;
signed short v58;
unsigned int v59;
v56 = v40 + 3274515052U;
v57.f3 = 42712;
v57.f2 = 61794136;
v57.f1 = 36276816U;
v57.f0 = 348U;
v58 = 17328 - 21610;
v59 = v37 - v37;
v3 (v56, v57, v58, v59);
}
break;
case 6: 
{
unsigned int v60;
struct ss1 v61;
signed short v62;
unsigned int v63;
v60 = v40 + v37;
v61.f3 = 57332;
v61.f2 = -4918622;
v61.f1 = 49385497U;
v61.f0 = 495U;
v62 = 28564 - -25863;
v63 = v37 - v37;
(*v4) (v60, v61, v62, v63);
}
break;
case 7: 
return;
case 8: 
{
unsigned int v64;
struct ss1 v65;
signed short v66;
unsigned int v67;
v64 = v37 - v40;
v65.f3 = 49494;
v65.f2 = -42057241;
v65.f1 = 57755664U;
v65.f0 = 41U;
v66 = v39 - 17777;
v67 = v40 + 4261720017U;
(*v4) (v64, v65, v66, v67);
}
break;
case 9: 
return;
case 10: 
{
unsigned int v68;
struct ss1 v69;
signed short v70;
unsigned int v71;
v68 = v37 + v40;
v69.f3 = 30523;
v69.f2 = 21451141;
v69.f1 = 5603587U;
v69.f0 = 302U;
v70 = v39 - v39;
v71 = 314678297U + 3049637100U;
v3 (v68, v69, v70, v71);
}
break;
case 11: 
return;
case 12: 
return;
case 13: 
return;
case 14: 
return;
case 15: 
return;
default: abort ();
}
}
}
}
