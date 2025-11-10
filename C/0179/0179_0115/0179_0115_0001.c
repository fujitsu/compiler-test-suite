#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
void v3 (unsigned char, double, double, unsigned short);
void (*v4) (unsigned char, double, double, unsigned short) = v3;
extern float v5 (unsigned short);
extern float (*v6) (unsigned short);
extern unsigned short v7 (unsigned int, unsigned int, signed int);
extern unsigned short (*v8) (unsigned int, unsigned int, signed int);
unsigned int v9 (void);
unsigned int (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned int v9 (void) {
for (;;) {
trace++;
switch (trace) {
case 9: return 199999;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

void v3 (unsigned char v24, double v25, double v26, unsigned short v27) {
history[history_index++] = (int)v24;
history[history_index++] = (int)v25;
history[history_index++] = (int)v26;
history[history_index++] = (int)v27;
for (;;) {
trace++;
switch (trace) {
case 4: return;
case 2: return;
default: abort ();
}
}
}
