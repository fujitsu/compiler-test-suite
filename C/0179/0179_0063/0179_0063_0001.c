#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
double v3 (unsigned char, signed short, unsigned short);
double (*v4) (unsigned char, signed short, unsigned short) = v3;
signed char v5 (void);
signed char (*v6) (void) = v5;
signed int v7 (double, signed short, unsigned int);
signed int (*v8) (double, signed short, unsigned int) = v7;
void v9 (unsigned short);
void (*v10) (unsigned short) = v9;
extern int history[];
extern int history_index;
extern int trace;

void v9 (unsigned short v12) {
history[history_index++] = (int)v12;
for (;;) {
trace++;
switch (trace) {
case 1: return;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed int v7 (double v13, signed short v14, unsigned int v15) {
history[history_index++] = (int)v13;
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
for (;;) {
trace++;
switch (trace) {
case 11: return -199999;
case 9: return -199999;
case 7: return -199999;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed char v5 (void) {
for (;;) {
trace++;
switch (trace) {
case 13: return 'a';
case 5: 
{
signed short v16;
v16 = (*v2) ();
history[history_index++] = (int)v16;
return 'a';
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

double v3 (unsigned char v17, signed short v18, unsigned short v19) {
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
history[history_index++] = (int)v19;
for (;;) {
trace++;
switch (trace) {
case 3: return 111111.2222222;
default: abort ();
}
}
}
