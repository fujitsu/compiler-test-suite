#include <stdlib.h>
extern float v1 (unsigned int, signed int, unsigned int, signed short);
extern float (*v2) (unsigned int, signed int, unsigned int, signed short);
unsigned char v3 (unsigned char);
unsigned char (*v4) (unsigned char) = v3;
extern void v5 (void);
extern void (*v6) (void);
extern float v7 (signed short, signed char, unsigned short);
extern float (*v8) (signed short, signed char, unsigned short);
unsigned short v9 (signed short, float);
unsigned short (*v10) (signed short, float) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned short v9 (signed short v33, float v34) {
history[history_index++] = (int)v33;
history[history_index++] = (int)v34;
for (;;) {
trace++;
switch (trace) {
case 11: return 111;
case 9: 
{
v5 ();
return 111;
}
break;
case 5: return 111;
case 3: 
{
unsigned int v35;
signed int v36;
unsigned int v37;
signed short v38;
float v39;
v35=199999;
v36=-199999;
v37=199999;
v38=-111;
v39 = v1 (v35, v36, v37, v38);
history[history_index++] = (int)v39;
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

unsigned char v3 (unsigned char v40) {
history[history_index++] = (int)v40;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
