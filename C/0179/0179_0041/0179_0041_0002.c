#include <stdlib.h>
extern double v1 (void);
extern double (*v2) (void);
void v3 (unsigned char);
void (*v4) (unsigned char) = v3;
extern double v5 (double, signed char, unsigned int, signed short);
extern double (*v6) (double, signed char, unsigned int, signed short);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern void v9 (unsigned short, double, signed char);
extern void (*v10) (unsigned short, double, signed char);
extern int history[];
extern int history_index;
extern int trace;

void v3 (unsigned char v29) {
history[history_index++] = (int)v29;
for (;;) {
trace++;
switch (trace) {
case 10: return;
case 8: return;
case 6: return;
case 4: return;
case 2: return;
default: abort ();
}
}
}
