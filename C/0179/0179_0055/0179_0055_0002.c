#include <stdlib.h>
signed int v1 (unsigned short, signed int);
signed int (*v2) (unsigned short, signed int) = v1;
signed short v3 (signed int, unsigned int, unsigned short, signed int);
signed short (*v4) (signed int, unsigned int, unsigned short, signed int) = v3;
extern unsigned int v5 (unsigned short, signed short, signed char);
extern unsigned int (*v6) (unsigned short, signed short, signed char);
extern signed int v7 (signed short);
extern signed int (*v8) (signed short);
signed char v9 (void);
signed char (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed char v9 (void) {
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

signed short v3 (signed int v18, unsigned int v19, unsigned short v20, signed int v21) {
history[history_index++] = (int)v18;
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
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

signed int v1 (unsigned short v22, signed int v23) {
history[history_index++] = (int)v22;
history[history_index++] = (int)v23;
for (;;) {
trace++;
switch (trace) {
case 0: return -199999;
default: abort ();
}
}
}
