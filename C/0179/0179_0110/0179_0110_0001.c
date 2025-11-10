#include <stdlib.h>
extern signed char v1 (float, signed int, signed char);
extern signed char (*v2) (float, signed int, signed char);
float v3 (signed int, unsigned int);
float (*v4) (signed int, unsigned int) = v3;
void v5 (signed short, unsigned short, signed short, double);
void (*v6) (signed short, unsigned short, signed short, double) = v5;
signed char v7 (signed int, signed short);
signed char (*v8) (signed int, signed short) = v7;
extern unsigned int v9 (unsigned int, float);
extern unsigned int (*v10) (unsigned int, float);
extern int history[];
extern int history_index;
extern int trace;

signed char v7 (signed int v20, signed short v21) {
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
for (;;) {
trace++;
switch (trace) {
case 12: return 'a';
case 10: return 'a';
case 8: 
{
unsigned int v22;
float v23;
unsigned int v24;
v22=199999;
v23=1.234;
v24 = (*v10) (v22, v23);
history[history_index++] = (int)v24;
return 'a';
}
break;
case 3: return 'a';
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

void v5 (signed short v25, unsigned short v26, signed short v27, double v28) {
history[history_index++] = (int)v25;
history[history_index++] = (int)v26;
history[history_index++] = (int)v27;
history[history_index++] = (int)v28;
for (;;) {
trace++;
switch (trace) {
case 13: return;
case 7: 
{
signed int v29;
signed short v30;
signed char v31;
v29=-199999;
v30=-111;
v31 = v7 (v29, v30);
history[history_index++] = (int)v31;
return;
}
break;
case 5: return;
case 1: return;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

float v3 (signed int v32, unsigned int v33) {
history[history_index++] = (int)v32;
history[history_index++] = (int)v33;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
