#include <stdlib.h>
double v1 (signed short, double);
double (*v2) (signed short, double) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
signed char v5 (double, double, unsigned char, signed short);
signed char (*v6) (double, double, unsigned char, signed short) = v5;
extern signed int v7 (unsigned int, float, signed int, signed short);
extern signed int (*v8) (unsigned int, float, signed int, signed short);
extern double v9 (void);
extern double (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;

signed char v5 (double v24, double v25, unsigned char v26, signed short v27) {
history[history_index++] = (int)v24;
history[history_index++] = (int)v25;
history[history_index++] = (int)v26;
history[history_index++] = (int)v27;
for (;;) {
trace++;
switch (trace) {
case 3: return 'a';
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

double v1 (signed short v28, double v29) {
history[history_index++] = (int)v28;
history[history_index++] = (int)v29;
for (;;) {
trace++;
switch (trace) {
case 14: return 111111.2222222;
case 12: return 111111.2222222;
case 11: return 111111.2222222;
case 10: 
{
signed short v30;
double v31;
double v32;
v30=-111;
v31=111111.2222222;
v32 = (*v2) (v30, v31);
history[history_index++] = (int)v32;
return 111111.2222222;
}
break;
case 8: 
{
double v33;
v33 = (*v10) ();
history[history_index++] = (int)v33;
return 111111.2222222;
}
break;
case 6: return 111111.2222222;
case 4: 
{
signed char v34;
v34 = v3 ();
history[history_index++] = (int)v34;
return 111111.2222222;
}
break;
case 2: 
{
double v35;
double v36;
unsigned char v37;
signed short v38;
signed char v39;
v35=111111.2222222;
v36=111111.2222222;
v37='A';
v38=-111;
v39 = v5 (v35, v36, v37, v38);
history[history_index++] = (int)v39;
return 111111.2222222;
}
break;
case 0: 
{
signed char v40;
v40 = v3 ();
history[history_index++] = (int)v40;
return 111111.2222222;
}
break;
default: abort ();
}
}
}
