#include <stdlib.h>
double v1 (unsigned int);
double (*v2) (unsigned int) = v1;
extern signed int v3 (double);
extern signed int (*v4) (double);
unsigned short v5 (signed short);
unsigned short (*v6) (signed short) = v5;
double v7 (unsigned char, signed char, float);
double (*v8) (unsigned char, signed char, float) = v7;
extern unsigned char v9 (signed int, signed char, signed short, signed int);
extern unsigned char (*v10) (signed int, signed char, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;

double v7 (unsigned char v18, signed char v19, float v20) {
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

unsigned short v5 (signed short v21) {
history[history_index++] = (int)v21;
for (;;) {
trace++;
switch (trace) {
case 1: return 111;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

double v1 (unsigned int v22) {
history[history_index++] = (int)v22;
for (;;) {
trace++;
switch (trace) {
case 2: return 111111.2222222;
case 0: 
{
signed short v23;
unsigned short v24;
v23=-111;
v24 = (*v6) (v23);
history[history_index++] = (int)v24;
return 111111.2222222;
}
break;
default: abort ();
}
}
}
