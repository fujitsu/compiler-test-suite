#include <stdlib.h>
signed short v1 (unsigned short, unsigned int, float);
signed short (*v2) (unsigned short, unsigned int, float) = v1;
extern signed short v3 (unsigned short, double, unsigned short);
extern signed short (*v4) (unsigned short, double, unsigned short);
float v5 (float, unsigned char, unsigned int);
float (*v6) (float, unsigned char, unsigned int) = v5;
unsigned short v7 (signed short);
unsigned short (*v8) (signed short) = v7;
extern unsigned short v9 (double, signed char, float);
extern unsigned short (*v10) (double, signed char, float);
extern int history[];
extern int history_index;
extern int trace;

unsigned short v7 (signed short v15) {
history[history_index++] = (int)v15;
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

float v5 (float v16, unsigned char v17, unsigned int v18) {
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
for (;;) {
trace++;
switch (trace) {
case 1: return 1.234;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed short v1 (unsigned short v19, unsigned int v20, float v21) {
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
for (;;) {
trace++;
switch (trace) {
case 2: return -111;
case 0: 
{
float v22;
unsigned char v23;
unsigned int v24;
float v25;
v22=1.234;
v23='A';
v24=199999;
v25 = (*v6) (v22, v23, v24);
history[history_index++] = (int)v25;
return -111;
}
break;
default: abort ();
}
}
}
