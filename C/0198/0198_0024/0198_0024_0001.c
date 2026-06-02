#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned int v1 (unsigned int, float);
extern unsigned int (*v2) (unsigned int, float);
unsigned int v3 (unsigned int, unsigned char, unsigned int, unsigned short);
unsigned int (*v4) (unsigned int, unsigned char, unsigned int, unsigned short) = v3;
extern unsigned short v5 (float, struct ss0);
extern unsigned short (*v6) (float, struct ss0);
extern union uu1 v7 (signed int, unsigned int, union uu1);
extern union uu1 (*v8) (signed int, unsigned int, union uu1);
extern union uu0 v9 (unsigned char);
extern union uu0 (*v10) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
struct ss1 v26 = { 52357, 32181690, 36299795U, 359U, };
unsigned int v25 = 1244812719U;
signed short v24 = -764;

unsigned int v3 (unsigned int v27, unsigned char v28, unsigned int v29, unsigned short v30)
{
history[history_index++] = (int)v27;
history[history_index++] = (int)v28;
history[history_index++] = (int)v29;
history[history_index++] = (int)v30;
{
for (;;) {
union uu0 v33 = {1262137542U };
double v32 = 6288910057225186092.59529;
unsigned int v31 = 3854730390U;
trace++;
switch (trace)
{
case 1: 
{
float v34;
struct ss0 v35;
unsigned short v36;
v34 = 2016935478.36178F;
v35.f2 = 751904U;
v35.f1 = 999470U;
v35.f0 = 60729;
v36 = v5 (v34, v35);
history[history_index++] = (int)v36;
}
break;
case 3: 
{
unsigned int v37;
unsigned char v38;
unsigned int v39;
unsigned short v40;
unsigned int v41;
v37 = v27 - v29;
v38 = v28 - 232;
v39 = v31 - 2443621863U;
v40 = v30 + 26448;
v41 = (*v4) (v37, v38, v39, v40);
history[history_index++] = (int)v41;
}
break;
case 4: 
{
unsigned int v42;
unsigned char v43;
unsigned int v44;
unsigned short v45;
unsigned int v46;
v42 = v27 - v29;
v43 = 91 + 19;
v44 = v31 - v29;
v45 = 10652 - v30;
v46 = v3 (v42, v43, v44, v45);
history[history_index++] = (int)v46;
}
break;
case 5: 
{
unsigned char v47;
union uu0 v48;
v47 = v28 + 190;
v48 = (*v10) (v47);
history[history_index++] = (int)v48.f3;
}
break;
case 7: 
{
unsigned int v49;
unsigned char v50;
unsigned int v51;
unsigned short v52;
unsigned int v53;
v49 = v27 - 3493913695U;
v50 = 203 + 118;
v51 = v27 - v31;
v52 = v30 + v30;
v53 = v3 (v49, v50, v51, v52);
history[history_index++] = (int)v53;
}
break;
case 8: 
{
unsigned int v54;
unsigned char v55;
unsigned int v56;
unsigned short v57;
unsigned int v58;
v54 = v31 - v31;
v55 = 12 + v28;
v56 = v27 + v29;
v57 = 58040 - v30;
v58 = v3 (v54, v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 9: 
{
unsigned int v59;
unsigned char v60;
unsigned int v61;
unsigned short v62;
unsigned int v63;
v59 = v27 + 585122422U;
v60 = v28 - 130;
v61 = 254326111U + v27;
v62 = 650 - v30;
v63 = (*v4) (v59, v60, v61, v62);
history[history_index++] = (int)v63;
}
break;
case 10: 
{
unsigned int v64;
unsigned char v65;
unsigned int v66;
unsigned short v67;
unsigned int v68;
v64 = v31 - v31;
v65 = 169 - v28;
v66 = v27 - v31;
v67 = v30 + v30;
v68 = (*v4) (v64, v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 11: 
return 1739833075U;
case 12: 
return v31;
case 13: 
return v31;
case 14: 
return v27;
case 15: 
return v29;
case 16: 
return v29;
case 17: 
return 176691600U;
default: abort ();
}
}
}
}
