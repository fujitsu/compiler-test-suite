#include <stdlib.h>
extern signed int v1 (unsigned char, signed char, float);
extern signed int (*v2) (unsigned char, signed char, float);
extern signed int v3 (void);
extern signed int (*v4) (void);
float v5 (unsigned int, unsigned short);
float (*v6) (unsigned int, unsigned short) = v5;
extern void v7 (unsigned int, unsigned char, float, unsigned int);
extern void (*v8) (unsigned int, unsigned char, float, unsigned int);
float v9 (unsigned short, unsigned int, unsigned int, float);
float (*v10) (unsigned short, unsigned int, unsigned int, float) = v9;
extern int history[];
extern int history_index;
extern int trace;

float v9 (unsigned short v15, unsigned int v16, unsigned int v17, float v18) {
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
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

float v5 (unsigned int v19, unsigned short v20) {
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
for (;;) {
trace++;
switch (trace) {
case 5: return 1.234;
default: abort ();
}
}
}
