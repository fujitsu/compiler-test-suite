#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern struct ss1 v1 (void);
extern struct ss1 (*v2) (void);
extern double v3 (float, struct ss1);
extern double (*v4) (float, struct ss1);
struct ss1 v5 (double, union uu1, unsigned int);
struct ss1 (*v6) (double, union uu1, unsigned int) = v5;
void v7 (float, unsigned char);
void (*v8) (float, unsigned char) = v7;
static signed char v9 (signed short, unsigned int, struct ss1, struct ss0);
static signed char (*v10) (signed short, unsigned int, struct ss1, struct ss0) = v9;
extern int history[];
extern int history_index;
extern int trace;
struct ss1 v38 = { 26790, 5748406, 36613811U, 322U, };
unsigned char v37 = 39;
union uu1 v36 = {659846869 };

static signed char v9 (signed short v39, unsigned int v40, struct ss1 v41, struct ss0 v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41.f3;
history[history_index++] = (int)v41.f2;
history[history_index++] = (int)v41.f1;
history[history_index++] = (int)v41.f0;
history[history_index++] = (int)v42.f2;
history[history_index++] = (int)v42.f1;
history[history_index++] = (int)v42.f0;
{
for (;;) {
struct ss0 v45 = { 918797U, 582485U, 20242, };
union uu1 v44 = {-1752485975 };
signed int v43 = 1104382344;
trace++;
switch (trace)
{
case 6: 
{
signed short v46;
unsigned int v47;
struct ss1 v48;
struct ss0 v49;
signed char v50;
v46 = v39 - v39;
v47 = 1689795476U - 1978707628U;
v48.f3 = 36409;
v48.f2 = -52243884;
v48.f1 = 31975114U;
v48.f0 = 282U;
v49.f2 = 409397U;
v49.f1 = 243133U;
v49.f0 = 9635;
v50 = v9 (v46, v47, v48, v49);
history[history_index++] = (int)v50;
}
break;
case 7: 
{
signed short v51;
unsigned int v52;
struct ss1 v53;
struct ss0 v54;
signed char v55;
v51 = v39 + v39;
v52 = 508139736U + v40;
v53.f3 = 44372;
v53.f2 = -31929400;
v53.f1 = 36353726U;
v53.f0 = 442U;
v54.f2 = 865774U;
v54.f1 = 643491U;
v54.f0 = 16696;
v55 = (*v10) (v51, v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 8: 
return -17;
case 9: 
{
signed short v56;
unsigned int v57;
struct ss1 v58;
struct ss0 v59;
signed char v60;
v56 = v39 + v39;
v57 = 89553149U - 3647872904U;
v58.f3 = 16244;
v58.f2 = -64961143;
v58.f1 = 36027007U;
v58.f0 = 491U;
v59.f2 = 522342U;
v59.f1 = 491689U;
v59.f0 = 10396;
v60 = v9 (v56, v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 10: 
{
signed short v61;
unsigned int v62;
struct ss1 v63;
struct ss0 v64;
signed char v65;
v61 = v39 - v39;
v62 = v40 + v40;
v63.f3 = 47101;
v63.f2 = -36467568;
v63.f1 = 42619668U;
v63.f0 = 410U;
v64.f2 = 46360U;
v64.f1 = 38069U;
v64.f0 = 5792;
v65 = v9 (v61, v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 11: 
return -102;
case 12: 
return 115;
case 13: 
return -96;
case 14: 
return -100;
default: abort ();
}
}
}
}

void v7 (float v66, unsigned char v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
float v70 = 1576548595.786F;
struct ss1 v69 = { 32404, 52644128, 33242470U, 67U, };
unsigned char v68 = 49;
trace++;
switch (trace)
{
case 5: 
{
signed short v71;
unsigned int v72;
struct ss1 v73;
struct ss0 v74;
signed char v75;
v71 = 21874 + -28408;
v72 = 2965044883U - 2233169808U;
v73.f3 = 23173;
v73.f2 = -52051424;
v73.f1 = 43405585U;
v73.f0 = 330U;
v74.f2 = 142334U;
v74.f1 = 734983U;
v74.f0 = 61360;
v75 = v9 (v71, v72, v73, v74);
history[history_index++] = (int)v75;
}
break;
case 15: 
return;
default: abort ();
}
}
}
}

struct ss1 v5 (double v76, union uu1 v77, unsigned int v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77.f2;
history[history_index++] = (int)v78;
{
for (;;) {
signed char v81 = -10;
signed int v80 = 1738597569;
unsigned char v79 = 222;
trace++;
switch (trace)
{
case 1: 
{
struct ss1 v82;
v82 = (*v2) ();
history[history_index++] = (int)v82.f3;
history[history_index++] = (int)v82.f2;
history[history_index++] = (int)v82.f1;
history[history_index++] = (int)v82.f0;
}
break;
case 3: 
{
float v83;
struct ss1 v84;
double v85;
v83 = -1558435910.23579F;
v84.f3 = 4023;
v84.f2 = -19016373;
v84.f1 = 1027831U;
v84.f0 = 56U;
v85 = (*v4) (v83, v84);
history[history_index++] = (int)v85;
}
break;
case 17: 
{
struct ss1 v86;
v86.f3 = 41724;
v86.f2 = -23025088;
v86.f1 = 19246317U;
v86.f0 = 154U;
return v86;
}
default: abort ();
}
}
}
}
