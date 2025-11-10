#include <stdlib.h>
signed char v1 (unsigned int, signed short);
signed char (*v2) (unsigned int, signed short) = v1;
signed char v3 (double, signed short, unsigned short);
signed char (*v4) (double, signed short, unsigned short) = v3;
extern double v5 (signed int);
extern double (*v6) (signed int);
extern unsigned char v7 (double, double, unsigned char);
extern unsigned char (*v8) (double, double, unsigned char);
float v9 (signed short, signed char, float, unsigned char);
float (*v10) (signed short, signed char, float, unsigned char) = v9;
extern int history[];
extern int history_index;
extern int trace;

float v9 (signed short v22, signed char v23, float v24, unsigned char v25) {
history[history_index++] = (int)v22;
history[history_index++] = (int)v23;
history[history_index++] = (int)v24;
history[history_index++] = (int)v25;
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

signed char v3 (double v26, signed short v27, unsigned short v28) {
history[history_index++] = (int)v26;
history[history_index++] = (int)v27;
history[history_index++] = (int)v28;
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

signed char v1 (unsigned int v29, signed short v30) {
history[history_index++] = (int)v29;
history[history_index++] = (int)v30;
for (;;) {
trace++;
switch (trace) {
case 6: return 'a';
case 4: 
{
signed int v31;
double v32;
v31=-199999;
v32 = v5 (v31);
history[history_index++] = (int)v32;
return 'a';
}
break;
case 0: 
{
signed int v33;
double v34;
v33=-199999;
v34 = (*v6) (v33);
history[history_index++] = (int)v34;
return 'a';
}
break;
default: abort ();
}
}
}
