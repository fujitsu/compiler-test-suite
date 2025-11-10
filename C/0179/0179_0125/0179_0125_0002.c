#include <stdlib.h>
extern unsigned int v1 (signed short, double, float, unsigned int);
extern unsigned int (*v2) (signed short, double, float, unsigned int);
unsigned int v3 (void);
unsigned int (*v4) (void) = v3;
float v5 (signed char, signed int, signed short);
float (*v6) (signed char, signed int, signed short) = v5;
extern unsigned char v7 (signed short, unsigned short, unsigned char, float);
extern unsigned char (*v8) (signed short, unsigned short, unsigned char, float);
extern float v9 (void);
extern float (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;

float v5 (signed char v33, signed int v34, signed short v35) {
history[history_index++] = (int)v33;
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
for (;;) {
trace++;
switch (trace) {
case 3: return 1.234;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

unsigned int v3 (void) {
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
