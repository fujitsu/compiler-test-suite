#include <stdlib.h>
double v1 (signed short, double, signed short);
double (*v2) (signed short, double, signed short) = v1;
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
float v5 (double, double, float, double);
float (*v6) (double, double, float, double) = v5;
extern signed char v7 (void);
extern signed char (*v8) (void);
unsigned int v9 (signed short);
unsigned int (*v10) (signed short) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned int v9 (signed short v16) {
history[history_index++] = (int)v16;
for (;;) {
trace++;
switch (trace) {
case 1: return 199999;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

float v5 (double v17, double v18, float v19, double v20) {
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
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

double v1 (signed short v21, double v22, signed short v23) {
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
history[history_index++] = (int)v23;
for (;;) {
trace++;
switch (trace) {
case 2: return 111111.2222222;
case 0: 
{
signed short v24;
unsigned int v25;
v24=-111;
v25 = (*v10) (v24);
history[history_index++] = (int)v25;
return 111111.2222222;
}
break;
default: abort ();
}
}
}
