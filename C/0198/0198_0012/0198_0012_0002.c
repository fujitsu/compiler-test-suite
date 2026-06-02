#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed short v3 (signed short);
extern signed short (*v4) (signed short);
signed int v5 (struct ss0, unsigned short);
signed int (*v6) (struct ss0, unsigned short) = v5;
extern void v7 (struct ss0, unsigned int, struct ss0, struct ss1);
extern void (*v8) (struct ss0, unsigned int, struct ss0, struct ss1);
float v9 (void);
float (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
signed int v50 = 1577548667;
unsigned char v49 = 6;
struct ss1 v48 = { 19323, 12062323, 15747535U, 282U, };

float v9 (void)
{
{
for (;;) {
unsigned short v53 = 19800;
union uu1 v52 = {-753311993 };
signed short v51 = 32281;
trace++;
switch (trace)
{
case 7: 
{
struct ss0 v54;
unsigned int v55;
struct ss0 v56;
struct ss1 v57;
v54.f2 = 487696U;
v54.f1 = 593560U;
v54.f0 = v53;
v55 = 464539918U + 1949235885U;
v56.f2 = 845588U;
v56.f1 = 605370U;
v56.f0 = v53;
v57.f3 = 64044;
v57.f2 = 23470444;
v57.f1 = 21762180U;
v57.f0 = 200U;
(*v8) (v54, v55, v56, v57);
}
break;
case 9: 
{
struct ss0 v58;
unsigned short v59;
signed int v60;
v58.f2 = 130724U;
v58.f1 = 386426U;
v58.f0 = v53;
v59 = v53 + v53;
v60 = v5 (v58, v59);
history[history_index++] = (int)v60;
}
break;
case 11: 
return 694342956.42062F;
default: abort ();
}
}
}
}

signed int v5 (struct ss0 v61, unsigned short v62)
{
history[history_index++] = (int)v61.f2;
history[history_index++] = (int)v61.f1;
history[history_index++] = (int)v61.f0;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned short v65 = 61594;
signed int v64 = 1909010489;
struct ss0 v63 = { 738752U, 581092U, 44525, };
trace++;
switch (trace)
{
case 4: 
return v64;
case 10: 
return v64;
default: abort ();
}
}
}
}
