#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned int v3 (signed char);
extern unsigned int (*v4) (signed char);
double v5 (signed short, signed char);
double (*v6) (signed short, signed char) = v5;
extern unsigned short v7 (double, unsigned char);
extern unsigned short (*v8) (double, unsigned char);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;

double v5 (signed short v19, signed char v20) {
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
for (;;) {
trace++;
switch (trace) {
case 2: return 111111.2222222;
default: abort ();
}
}
}
