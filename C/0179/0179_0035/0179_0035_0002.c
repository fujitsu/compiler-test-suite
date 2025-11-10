#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
double v3 (signed short, signed short);
double (*v4) (signed short, signed short) = v3;
extern unsigned short v5 (signed char);
extern unsigned short (*v6) (signed char);
signed char v7 (float, float, unsigned char);
signed char (*v8) (float, float, unsigned char) = v7;
extern void v9 (unsigned short, unsigned char);
extern void (*v10) (unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;

signed char v7 (float v28, float v29, unsigned char v30) {
history[history_index++] = (int)v28;
history[history_index++] = (int)v29;
history[history_index++] = (int)v30;
for (;;) {
trace++;
switch (trace) {
case 9: return 'a';
case 7: 
{
unsigned short v31;
unsigned char v32;
v31=111;
v32='A';
v9 (v31, v32);
return 'a';
}
break;
case 5: return 'a';
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

double v3 (signed short v33, signed short v34) {
history[history_index++] = (int)v33;
history[history_index++] = (int)v34;
for (;;) {
trace++;
switch (trace) {
case 13: return 111111.2222222;
case 3: 
{
signed char v35;
v35 = v1 ();
history[history_index++] = (int)v35;
return 111111.2222222;
}
break;
case 2: return 111111.2222222;
case 1: 
{
signed short v36;
signed short v37;
double v38;
v36=-111;
v37=-111;
v38 = (*v4) (v36, v37);
history[history_index++] = (int)v38;
return 111111.2222222;
}
break;
default: abort ();
}
}
}
