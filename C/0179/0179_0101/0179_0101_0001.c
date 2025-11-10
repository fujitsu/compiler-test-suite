#include <stdlib.h>
extern unsigned int v1 (signed short);
extern unsigned int (*v2) (signed short);
void v3 (unsigned char);
void (*v4) (unsigned char) = v3;
extern signed short v5 (float, unsigned int, signed short);
extern signed short (*v6) (float, unsigned int, signed short);
unsigned char v7 (unsigned short, unsigned int);
unsigned char (*v8) (unsigned short, unsigned int) = v7;
extern unsigned short v9 (float);
extern unsigned short (*v10) (float);
extern int history[];
extern int history_index;
extern int trace;

unsigned char v7 (unsigned short v21, unsigned int v22) {
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
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

void v3 (unsigned char v23) {
history[history_index++] = (int)v23;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
