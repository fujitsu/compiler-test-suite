#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
unsigned char v3 (unsigned char, unsigned char, unsigned int, signed short);
unsigned char (*v4) (unsigned char, unsigned char, unsigned int, signed short) = v3;
extern void v5 (unsigned int, signed int, unsigned short);
extern void (*v6) (unsigned int, signed int, unsigned short);
unsigned short v7 (unsigned int);
unsigned short (*v8) (unsigned int) = v7;
unsigned char v9 (double, double, unsigned char, unsigned char);
unsigned char (*v10) (double, double, unsigned char, unsigned char) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned char v9 (double v32, double v33, unsigned char v34, unsigned char v35) {
history[history_index++] = (int)v32;
history[history_index++] = (int)v33;
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
for (;;) {
trace++;
switch (trace) {
case 1: return 'A';
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

unsigned short v7 (unsigned int v36) {
history[history_index++] = (int)v36;
for (;;) {
trace++;
switch (trace) {
case 12: return 111;
case 10: 
{
unsigned char v37;
unsigned char v38;
unsigned int v39;
signed short v40;
unsigned char v41;
v37='A';
v38='A';
v39=199999;
v40=-111;
v41 = (*v4) (v37, v38, v39, v40);
history[history_index++] = (int)v41;
return 111;
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

unsigned char v3 (unsigned char v42, unsigned char v43, unsigned int v44, signed short v45) {
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
for (;;) {
trace++;
switch (trace) {
case 11: return 'A';
default: abort ();
}
}
}
