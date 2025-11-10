#include <stdlib.h>
extern signed short v1 (unsigned int, signed short, signed short, signed short);
extern signed short (*v2) (unsigned int, signed short, signed short, signed short);
void v3 (unsigned short, signed int, unsigned char, signed int);
void (*v4) (unsigned short, signed int, unsigned char, signed int) = v3;
extern signed int v5 (unsigned char, float, signed char, unsigned char);
extern signed int (*v6) (unsigned char, float, signed char, unsigned char);
float v7 (signed int, double, float);
float (*v8) (signed int, double, float) = v7;
extern float v9 (signed char, signed int, unsigned char, float);
extern float (*v10) (signed char, signed int, unsigned char, float);
extern int history[];
extern int history_index;
extern int trace;

float v7 (signed int v36, double v37, float v38) {
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
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

void v3 (unsigned short v39, signed int v40, unsigned char v41, signed int v42) {
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
for (;;) {
trace++;
switch (trace) {
case 7: return;
case 5: return;
case 3: return;
case 1: 
{
unsigned char v43;
float v44;
signed char v45;
unsigned char v46;
signed int v47;
v43='A';
v44=1.234;
v45='a';
v46='A';
v47 = (*v6) (v43, v44, v45, v46);
history[history_index++] = (int)v47;
return;
}
break;
default: abort ();
}
}
}
