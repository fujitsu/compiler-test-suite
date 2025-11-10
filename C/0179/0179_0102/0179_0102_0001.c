#include <stdlib.h>
unsigned int v1 (float, unsigned char, unsigned int, unsigned int);
unsigned int (*v2) (float, unsigned char, unsigned int, unsigned int) = v1;
extern unsigned short v3 (signed short, float, double);
extern unsigned short (*v4) (signed short, float, double);
signed char v5 (unsigned short, signed short, unsigned char);
signed char (*v6) (unsigned short, signed short, unsigned char) = v5;
void v7 (signed char, double, unsigned int);
void (*v8) (signed char, double, unsigned int) = v7;
extern unsigned char v9 (float, unsigned int);
extern unsigned char (*v10) (float, unsigned int);
extern int history[];
extern int history_index;
extern int trace;

void v7 (signed char v21, double v22, unsigned int v23) {
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
history[history_index++] = (int)v23;
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

signed char v5 (unsigned short v24, signed short v25, unsigned char v26) {
history[history_index++] = (int)v24;
history[history_index++] = (int)v25;
history[history_index++] = (int)v26;
for (;;) {
trace++;
switch (trace) {
case 1: return 'a';
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

unsigned int v1 (float v27, unsigned char v28, unsigned int v29, unsigned int v30) {
history[history_index++] = (int)v27;
history[history_index++] = (int)v28;
history[history_index++] = (int)v29;
history[history_index++] = (int)v30;
for (;;) {
trace++;
switch (trace) {
case 2: return 199999;
case 0: 
{
unsigned short v31;
signed short v32;
unsigned char v33;
signed char v34;
v31=111;
v32=-111;
v33='A';
v34 = (*v6) (v31, v32, v33);
history[history_index++] = (int)v34;
return 199999;
}
break;
default: abort ();
}
}
}
