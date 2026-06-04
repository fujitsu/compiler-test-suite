#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
unsigned short v1 (struct ss0, float, struct ss0);
unsigned short (*v2) (struct ss0, float, struct ss0) = v1;
extern unsigned char v3 (struct ss1, signed short);
extern unsigned char (*v4) (struct ss1, signed short);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern union uu0 v7 (unsigned short, unsigned char, unsigned char);
extern union uu0 (*v8) (unsigned short, unsigned char, unsigned char);
extern unsigned short v9 (signed short, union uu0, unsigned char);
extern unsigned short (*v10) (signed short, union uu0, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
union uu0 v36 = {166255997U };
signed int v35 = 512563593;
signed int v34 = 1445758651;

unsigned short v1 (struct ss0 v37, float v38, struct ss0 v39)
{
history[history_index++] = (int)v37.f2;
history[history_index++] = (int)v37.f1;
history[history_index++] = (int)v37.f0;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39.f2;
history[history_index++] = (int)v39.f1;
history[history_index++] = (int)v39.f0;
{
for (;;) {
double v42 = -6852792089816118043.28304;
union uu0 v41 = {2536968842U };
double v40 = -6056167978001955642.33209;
trace++;
switch (trace)
{
case 0: 
return 19112;
case 1: 
{
struct ss1 v43;
signed short v44;
unsigned char v45;
v43.f3 = 2955;
v43.f2 = 27740076;
v43.f1 = 60945624U;
v43.f0 = 283U;
v44 = -22759 - 308;
v45 = (*v4) (v43, v44);
history[history_index++] = (int)v45;
}
break;
case 3: 
{
struct ss0 v46;
float v47;
struct ss0 v48;
unsigned short v49;
v46.f2 = 162498U;
v46.f1 = 486491U;
v46.f0 = 34050;
v47 = v38;
v48.f2 = 221136U;
v48.f1 = 975624U;
v48.f0 = 53317;
v49 = (*v2) (v46, v47, v48);
history[history_index++] = (int)v49;
}
break;
case 4: 
{
struct ss0 v50;
float v51;
struct ss0 v52;
unsigned short v53;
v50.f2 = 446253U;
v50.f1 = 534215U;
v50.f0 = 8209;
v51 = v38;
v52.f2 = 850172U;
v52.f1 = 699160U;
v52.f0 = 58447;
v53 = v1 (v50, v51, v52);
history[history_index++] = (int)v53;
}
break;
case 5: 
return 56933;
case 6: 
{
struct ss0 v54;
float v55;
struct ss0 v56;
unsigned short v57;
v54.f2 = 181329U;
v54.f1 = 793188U;
v54.f0 = 58824;
v55 = v38;
v56.f2 = 98836U;
v56.f1 = 244977U;
v56.f0 = 57302;
v57 = (*v2) (v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 7: 
{
struct ss0 v58;
float v59;
struct ss0 v60;
unsigned short v61;
v58.f2 = 758653U;
v58.f1 = 391731U;
v58.f0 = 4076;
v59 = 1482770568.23714F;
v60.f2 = 552877U;
v60.f1 = 734583U;
v60.f0 = 56374;
v61 = v1 (v58, v59, v60);
history[history_index++] = (int)v61;
}
break;
case 8: 
{
struct ss0 v62;
float v63;
struct ss0 v64;
unsigned short v65;
v62.f2 = 978253U;
v62.f1 = 426263U;
v62.f0 = 30741;
v63 = 1247025355.12160F;
v64.f2 = 114745U;
v64.f1 = 66248U;
v64.f0 = 63281;
v65 = (*v2) (v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 9: 
return 48745;
case 10: 
{
struct ss1 v66;
signed short v67;
unsigned char v68;
v66.f3 = 48297;
v66.f2 = 42500315;
v66.f1 = 23715062U;
v66.f0 = 14U;
v67 = 26151 - -3971;
v68 = v3 (v66, v67);
history[history_index++] = (int)v68;
}
break;
case 12: 
return 19534;
case 13: 
return 4040;
case 14: 
return 4083;
case 15: 
return 55181;
default: abort ();
}
}
}
}
