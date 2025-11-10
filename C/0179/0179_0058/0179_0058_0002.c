#include <stdlib.h>
signed char v1 (signed char, signed int);
signed char (*v2) (signed char, signed int) = v1;
extern void v3 (signed short, double, signed int, float);
extern void (*v4) (signed short, double, signed int, float);
extern float v5 (unsigned char, float);
extern float (*v6) (unsigned char, float);
float v7 (unsigned short);
float (*v8) (unsigned short) = v7;
extern unsigned int v9 (signed char, signed short, double, signed int);
extern unsigned int (*v10) (signed char, signed short, double, signed int);
extern int history[];
extern int history_index;
extern int trace;

float v7 (unsigned short v24) {
history[history_index++] = (int)v24;
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

signed char v1 (signed char v25, signed int v26) {
history[history_index++] = (int)v25;
history[history_index++] = (int)v26;
for (;;) {
trace++;
switch (trace) {
case 2: return 'a';
case 0: 
{
unsigned char v27;
float v28;
float v29;
v27='A';
v28=1.234;
v29 = (*v6) (v27, v28);
history[history_index++] = (int)v29;
return 'a';
}
break;
default: abort ();
}
}
}
