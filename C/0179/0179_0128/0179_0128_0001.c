#include <stdlib.h>
extern void v1 (signed int);
extern void (*v2) (signed int);
float v3 (void);
float (*v4) (void) = v3;
extern float v5 (double, signed int);
extern float (*v6) (double, signed int);
float v7 (void);
float (*v8) (void) = v7;
float v9 (double);
float (*v10) (double) = v9;
extern int history[];
extern int history_index;
extern int trace;

float v9 (double v14) {
history[history_index++] = (int)v14;
for (;;) {
trace++;
switch (trace) {
case 9: return 1.234;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

float v7 (void) {
for (;;) {
trace++;
switch (trace) {
case 2: return 1.234;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

float v3 (void) {
for (;;) {
trace++;
switch (trace) {
case 6: return 1.234;
case 3: return 1.234;
case 1: 
{
float v15;
v15 = (*v8) ();
history[history_index++] = (int)v15;
return 1.234;
}
break;
default: abort ();
}
}
}
