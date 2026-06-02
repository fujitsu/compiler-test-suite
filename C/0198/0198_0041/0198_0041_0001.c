#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern union uu1 v3 (unsigned short, float);
extern union uu1 (*v4) (unsigned short, float);
extern union uu1 v5 (float, signed short, signed short);
extern union uu1 (*v6) (float, signed short, signed short);
void v7 (struct ss0);
void (*v8) (struct ss0) = v7;
extern unsigned short v9 (unsigned char);
extern unsigned short (*v10) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v39 = 28303;
unsigned int v38 = 1993917129U;
union uu0 v37 = {429574378U };

void v7 (struct ss0 v40)
{
history[history_index++] = (int)v40.f2;
history[history_index++] = (int)v40.f1;
history[history_index++] = (int)v40.f0;
{
for (;;) {
double v43 = 5477638451775667883.65494;
signed short v42 = 27253;
struct ss0 v41 = { 244282U, 1042610U, 40743, };
trace++;
switch (trace)
{
case 1: 
{
struct ss0 v44;
v44.f2 = 392220U;
v44.f1 = 646336U;
v44.f0 = 13958;
(*v8) (v44);
}
break;
case 2: 
{
struct ss0 v45;
v45.f2 = 858171U;
v45.f1 = 286670U;
v45.f0 = 40370;
(*v8) (v45);
}
break;
case 3: 
return;
case 4: 
{
struct ss0 v46;
v46.f2 = 1029211U;
v46.f1 = 235911U;
v46.f0 = 23315;
(*v8) (v46);
}
break;
case 5: 
{
struct ss0 v47;
v47.f2 = 223949U;
v47.f1 = 787542U;
v47.f0 = 31705;
(*v8) (v47);
}
break;
case 6: 
{
struct ss0 v48;
v48.f2 = 618669U;
v48.f1 = 1011306U;
v48.f0 = 17342;
v7 (v48);
}
break;
case 7: 
{
struct ss0 v49;
v49.f2 = 375642U;
v49.f1 = 643170U;
v49.f0 = 60047;
v7 (v49);
}
break;
case 8: 
{
struct ss0 v50;
v50.f2 = 286508U;
v50.f1 = 442275U;
v50.f0 = 52049;
(*v8) (v50);
}
break;
case 9: 
{
struct ss0 v51;
v51.f2 = 821876U;
v51.f1 = 303632U;
v51.f0 = 50723;
(*v8) (v51);
}
break;
case 10: 
{
struct ss0 v52;
v52.f2 = 743325U;
v52.f1 = 49840U;
v52.f0 = 33618;
(*v8) (v52);
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
case 16: 
return;
case 17: 
return;
case 18: 
return;
case 19: 
return;
default: abort ();
}
}
}
}
