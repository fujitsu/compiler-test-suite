#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
struct ss0 v1 (void);
struct ss0 (*v2) (void) = v1;
static signed char v3 (struct ss1, unsigned short, unsigned char);
static signed char (*v4) (struct ss1, unsigned short, unsigned char) = v3;
extern signed short v5 (signed short, union uu1);
extern signed short (*v6) (signed short, union uu1);
extern signed int v7 (struct ss0);
extern signed int (*v8) (struct ss0);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
double v34 = -6058436617588413102.35157;
double v33 = -2623485585060145748.42971;
signed int v32 = 1591609945;

static signed char v3 (struct ss1 v35, unsigned short v36, unsigned char v37)
{
history[history_index++] = (int)v35.f3;
history[history_index++] = (int)v35.f2;
history[history_index++] = (int)v35.f1;
history[history_index++] = (int)v35.f0;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
double v40 = -2610980655691881495.31350;
union uu1 v39 = {2012168448 };
unsigned int v38 = 1167870698U;
trace++;
switch (trace)
{
case 1: 
{
struct ss1 v41;
unsigned short v42;
unsigned char v43;
signed char v44;
v41.f3 = 29374;
v41.f2 = -11883602;
v41.f1 = 53287858U;
v41.f0 = 262U;
v42 = 9703 + v36;
v43 = v37 - 145;
v44 = (*v4) (v41, v42, v43);
history[history_index++] = (int)v44;
}
break;
case 2: 
{
struct ss1 v45;
unsigned short v46;
unsigned char v47;
signed char v48;
v45.f3 = v36;
v45.f2 = -155213;
v45.f1 = 56547606U;
v45.f0 = 218U;
v46 = v36 + 14228;
v47 = v37 - v37;
v48 = v3 (v45, v46, v47);
history[history_index++] = (int)v48;
}
break;
case 3: 
{
struct ss1 v49;
unsigned short v50;
unsigned char v51;
signed char v52;
v49.f3 = 45682;
v49.f2 = 30129048;
v49.f1 = 55234028U;
v49.f0 = 191U;
v50 = v36 - 39791;
v51 = v37 - v37;
v52 = (*v4) (v49, v50, v51);
history[history_index++] = (int)v52;
}
break;
case 4: 
{
struct ss1 v53;
unsigned short v54;
unsigned char v55;
signed char v56;
v53.f3 = v36;
v53.f2 = 17884228;
v53.f1 = 27777736U;
v53.f0 = 241U;
v54 = v36 - v36;
v55 = v37 - v37;
v56 = (*v4) (v53, v54, v55);
history[history_index++] = (int)v56;
}
break;
case 5: 
return -12;
case 6: 
{
struct ss1 v57;
unsigned short v58;
unsigned char v59;
signed char v60;
v57.f3 = v36;
v57.f2 = 45492117;
v57.f1 = 65538220U;
v57.f0 = 264U;
v58 = v36 + 45215;
v59 = v37 - 13;
v60 = v3 (v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 7: 
{
struct ss1 v61;
unsigned short v62;
unsigned char v63;
signed char v64;
v61.f3 = v36;
v61.f2 = 47707935;
v61.f1 = 56828616U;
v61.f0 = 118U;
v62 = v36 + v36;
v63 = v37 + 193;
v64 = (*v4) (v61, v62, v63);
history[history_index++] = (int)v64;
}
break;
case 8: 
{
struct ss1 v65;
unsigned short v66;
unsigned char v67;
signed char v68;
v65.f3 = 48574;
v65.f2 = -16851276;
v65.f1 = 41665110U;
v65.f0 = 14U;
v66 = 9736 - v36;
v67 = 125 - 67;
v68 = (*v4) (v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 9: 
return 35;
case 10: 
return -41;
case 11: 
return -67;
case 12: 
return 5;
case 13: 
return -59;
case 14: 
return -11;
case 15: 
return 76;
default: abort ();
}
}
}
}

struct ss0 v1 (void)
{
{
for (;;) {
struct ss1 v71 = { 31677, -24284755, 15491154U, 37U, };
signed char v70 = -29;
signed short v69 = 30375;
trace++;
switch (trace)
{
case 0: 
{
struct ss1 v72;
unsigned short v73;
unsigned char v74;
signed char v75;
v72.f3 = 49288;
v72.f2 = 12510674;
v72.f1 = 4860051U;
v72.f0 = 334U;
v73 = 6562 + 5468;
v74 = 47 + 10;
v75 = (*v4) (v72, v73, v74);
history[history_index++] = (int)v75;
}
break;
case 16: 
{
struct ss0 v76;
v76.f2 = 511566U;
v76.f1 = 279477U;
v76.f0 = 26453;
return v76;
}
default: abort ();
}
}
}
}
