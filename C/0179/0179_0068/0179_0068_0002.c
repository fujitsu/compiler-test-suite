#include <stdlib.h>
extern unsigned short v1 (unsigned char, signed int);
extern unsigned short (*v2) (unsigned char, signed int);
extern unsigned char v3 (unsigned int);
extern unsigned char (*v4) (unsigned int);
extern signed int v5 (unsigned int, unsigned short);
extern signed int (*v6) (unsigned int, unsigned short);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
void v9 (float, double);
void (*v10) (float, double) = v9;
extern int history[];
extern int history_index;
extern int trace;

void v9 (float v19, double v20) {
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
