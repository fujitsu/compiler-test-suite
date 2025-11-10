#include <stdlib.h>
double v1 (void);
double (*v2) (void) = v1;
signed short v3 (void);
signed short (*v4) (void) = v3;
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned int v7 (unsigned short, signed int, double);
extern unsigned int (*v8) (unsigned short, signed int, double);
float v9 (signed short, signed int, signed char, double);
float (*v10) (signed short, signed int, signed char, double) = v9;
extern int history[];
extern int history_index;
extern int trace;

float v9 (signed short v27, signed int v28, signed char v29, double v30) {
history[history_index++] = (int)v27;
history[history_index++] = (int)v28;
history[history_index++] = (int)v29;
history[history_index++] = (int)v30;
for (;;) {
trace++;
switch (trace) {
case 7: return 1.234;
case 5: return 1.234;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed short v3 (void) {
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

double v1 (void) {
for (;;) {
trace++;
switch (trace) {
case 12: return 111111.2222222;
case 2: 
{
unsigned short v31;
signed int v32;
double v33;
unsigned int v34;
v31=111;
v32=-199999;
v33=111111.2222222;
v34 = (*v8) (v31, v32, v33);
history[history_index++] = (int)v34;
return 111111.2222222;
}
break;
case 0: 
{
signed int v35;
v35 = (*v6) ();
history[history_index++] = (int)v35;
return 111111.2222222;
}
break;
default: abort ();
}
}
}
