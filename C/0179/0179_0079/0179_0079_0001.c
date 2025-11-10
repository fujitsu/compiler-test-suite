#include <stdlib.h>
extern void v1 (unsigned short, unsigned char, float);
extern void (*v2) (unsigned short, unsigned char, float);
unsigned short v3 (unsigned short, unsigned short);
unsigned short (*v4) (unsigned short, unsigned short) = v3;
signed char v5 (double);
signed char (*v6) (double) = v5;
extern void v7 (double, float);
extern void (*v8) (double, float);
extern unsigned int v9 (unsigned short);
extern unsigned int (*v10) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;

signed char v5 (double v30) {
history[history_index++] = (int)v30;
for (;;) {
trace++;
switch (trace) {
case 12: return 'a';
case 6: 
{
unsigned short v31;
unsigned char v32;
float v33;
v31=111;
v32='A';
v33=1.234;
v1 (v31, v32, v33);
return 'a';
}
break;
case 4: 
{
double v34;
float v35;
v34=111111.2222222;
v35=1.234;
(*v8) (v34, v35);
return 'a';
}
break;
case 2: 
{
double v36;
float v37;
v36=111111.2222222;
v37=1.234;
v7 (v36, v37);
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

unsigned short v3 (unsigned short v38, unsigned short v39) {
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
