#include <stdlib.h>
unsigned short v1 (double, signed int);
unsigned short (*v2) (double, signed int) = v1;
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
signed int v5 (void);
signed int (*v6) (void) = v5;
extern unsigned short v7 (unsigned int, signed int, unsigned short);
extern unsigned short (*v8) (unsigned int, signed int, unsigned short);
extern unsigned char v9 (signed short, unsigned short, double);
extern unsigned char (*v10) (signed short, unsigned short, double);
extern int history[];
extern int history_index;
extern int trace;

signed int v5 (void) {
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

unsigned short v1 (double v34, signed int v35) {
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
for (;;) {
trace++;
switch (trace) {
case 16: return 111;
case 13: return 111;
case 3: 
{
signed short v36;
unsigned short v37;
double v38;
unsigned char v39;
v36=-111;
v37=111;
v38=111111.2222222;
v39 = (*v10) (v36, v37, v38);
history[history_index++] = (int)v39;
return 111;
}
break;
case 0: 
{
signed short v40;
unsigned short v41;
double v42;
unsigned char v43;
v40=-111;
v41=111;
v42=111111.2222222;
v43 = (*v10) (v40, v41, v42);
history[history_index++] = (int)v43;
return 111;
}
break;
default: abort ();
}
}
}
