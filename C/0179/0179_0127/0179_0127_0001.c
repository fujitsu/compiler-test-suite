#include <stdlib.h>
unsigned char v1 (signed char, unsigned short);
unsigned char (*v2) (signed char, unsigned short) = v1;
extern void v3 (float);
extern void (*v4) (float);
unsigned short v5 (unsigned short, float);
unsigned short (*v6) (unsigned short, float) = v5;
extern double v7 (float, unsigned int, double);
extern double (*v8) (float, unsigned int, double);
extern void v9 (unsigned char);
extern void (*v10) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;

unsigned short v5 (unsigned short v15, float v16) {
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
for (;;) {
trace++;
switch (trace) {
case 11: return 111;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

unsigned char v1 (signed char v17, unsigned short v18) {
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
for (;;) {
trace++;
switch (trace) {
case 14: return 'A';
case 12: return 'A';
case 10: 
{
unsigned short v19;
float v20;
unsigned short v21;
v19=111;
v20=1.234;
v21 = (*v6) (v19, v20);
history[history_index++] = (int)v21;
return 'A';
}
break;
case 8: 
{
unsigned char v22;
v22='A';
(*v10) (v22);
return 'A';
}
break;
case 6: 
{
unsigned char v23;
v23='A';
v9 (v23);
return 'A';
}
break;
case 4: 
{
unsigned char v24;
v24='A';
(*v10) (v24);
return 'A';
}
break;
case 2: 
{
float v25;
unsigned int v26;
double v27;
double v28;
v25=1.234;
v26=199999;
v27=111111.2222222;
v28 = v7 (v25, v26, v27);
history[history_index++] = (int)v28;
return 'A';
}
break;
case 0: 
{
unsigned char v29;
v29='A';
v9 (v29);
return 'A';
}
break;
default: abort ();
}
}
}
