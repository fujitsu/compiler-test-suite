#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern struct ss1 v1 (float, struct ss0);
extern struct ss1 (*v2) (float, struct ss0);
extern union uu0 v3 (float, unsigned short);
extern union uu0 (*v4) (float, unsigned short);
signed char v5 (void);
signed char (*v6) (void) = v5;
double v7 (signed char, struct ss0);
double (*v8) (signed char, struct ss0) = v7;
extern float v9 (signed char);
extern float (*v10) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v42 = 2043602022U;
signed int v41 = 527038000;
struct ss1 v40 = { 28401, 55910695, 19619512U, 163U, };

double v7 (signed char v43, struct ss0 v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44.f2;
history[history_index++] = (int)v44.f1;
history[history_index++] = (int)v44.f0;
{
for (;;) {
struct ss0 v47 = { 969564U, 976015U, 56039, };
struct ss0 v46 = { 275055U, 144786U, 13272, };
signed char v45 = -93;
trace++;
switch (trace)
{
case 2: 
{
signed char v48;
v48 = (*v6) ();
history[history_index++] = (int)v48;
}
break;
case 4: 
#if defined(__aarch64__)
  return -2147483648;
#else
return -285944057544921316.65242;
#endif
case 9: 
{
signed char v49;
v49 = v5 ();
history[history_index++] = (int)v49;
}
break;
case 11: 
#if defined(__aarch64__)
return -2147483648;
#else
return -3636484109666229316.29833;
#endif
case 16: 
#if defined(__aarch64__)
return -2147483648;
#else
return -4088403794417270522.35379;
#endif
default: abort ();
}
}
}
}

signed char v5 (void)
{
{
for (;;) {
signed char v52 = -18;
struct ss0 v51 = { 220672U, 492207U, 47027, };
signed int v50 = 1637152080;
trace++;
switch (trace)
{
case 3: 
{
signed char v53;
struct ss0 v54;
double v55;
v53 = 103 - 97;
v54.f2 = 204756U;
v54.f1 = 943120U;
v54.f0 = 31685;
v55 = v7 (v53, v54);
history[history_index++] = (int)v55;
}
break;
case 5: 
{
float v56;
struct ss0 v57;
struct ss1 v58;
v56 = 469217944.47180F;
v57.f2 = 581201U;
v57.f1 = 470708U;
v57.f0 = 2723;
v58 = v1 (v56, v57);
history[history_index++] = (int)v58.f3;
history[history_index++] = (int)v58.f2;
history[history_index++] = (int)v58.f1;
history[history_index++] = (int)v58.f0;
}
break;
case 7: 
{
float v59;
struct ss0 v60;
struct ss1 v61;
v59 = -2074524819.29087F;
v60.f2 = 91479U;
v60.f1 = 507147U;
v60.f0 = 32209;
v61 = (*v2) (v59, v60);
history[history_index++] = (int)v61.f3;
history[history_index++] = (int)v61.f2;
history[history_index++] = (int)v61.f1;
history[history_index++] = (int)v61.f0;
}
break;
case 10: 
return 126;
case 13: 
return 85;
case 15: 
return v52;
default: abort ();
}
}
}
}
