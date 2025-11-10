#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
double v3 (float);
double (*v4) (float) = v3;
extern unsigned char v5 (signed char, unsigned short);
extern unsigned char (*v6) (signed char, unsigned short);
extern signed char v7 (unsigned char);
extern signed char (*v8) (unsigned char);
extern signed short v9 (unsigned short, unsigned int);
extern signed short (*v10) (unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;

double v3 (float v15) {
history[history_index++] = (int)v15;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
