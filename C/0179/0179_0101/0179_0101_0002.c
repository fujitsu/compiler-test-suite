#include <stdlib.h>
extern unsigned int v1 (signed short);
extern unsigned int (*v2) (signed short);
extern void v3 (unsigned char);
extern void (*v4) (unsigned char);
extern signed short v5 (float, unsigned int, signed short);
extern signed short (*v6) (float, unsigned int, signed short);
extern unsigned char v7 (unsigned short, unsigned int);
extern unsigned char (*v8) (unsigned short, unsigned int);
unsigned short v9 (float);
unsigned short (*v10) (float) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned short v9 (float v24) {
history[history_index++] = (int)v24;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
