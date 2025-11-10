#include <stdlib.h>
extern signed short v1 (signed int);
extern signed short (*v2) (signed int);
signed int v3 (unsigned int, double, signed char, signed char);
signed int (*v4) (unsigned int, double, signed char, signed char) = v3;
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
extern float v7 (double, unsigned int, unsigned char, float);
extern float (*v8) (double, unsigned int, unsigned char, float);
float v9 (float, double, unsigned short);
float (*v10) (float, double, unsigned short) = v9;
extern int history[];
extern int history_index;
extern int trace;

float v9 (float v29, double v30, unsigned short v31) {
history[history_index++] = (int)v29;
history[history_index++] = (int)v30;
history[history_index++] = (int)v31;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

unsigned char v5 (void) {
for (;;) {
trace++;
switch (trace) {
case 11: return 'A';
case 9: 
{
double v32;
unsigned int v33;
unsigned char v34;
float v35;
float v36;
v32=111111.2222222;
v33=199999;
v34='A';
v35=1.234;
v36 = (*v8) (v32, v33, v34, v35);
history[history_index++] = (int)v36;
return 'A';
}
break;
case 3: 
{
signed int v37;
signed short v38;
v37=-199999;
v38 = (*v2) (v37);
history[history_index++] = (int)v38;
return 'A';
}
break;
case 1: 
{
double v39;
unsigned int v40;
unsigned char v41;
float v42;
float v43;
v39=111111.2222222;
v40=199999;
v41='A';
v42=1.234;
v43 = v7 (v39, v40, v41, v42);
history[history_index++] = (int)v43;
return 'A';
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed int v3 (unsigned int v44, double v45, signed char v46, signed char v47) {
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
for (;;) {
trace++;
switch (trace) {
case 7: return -199999;
case 5: return -199999;
default: abort ();
}
}
}
