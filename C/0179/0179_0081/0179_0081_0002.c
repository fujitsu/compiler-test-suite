#include <stdlib.h>
extern signed char v1 (unsigned short);
extern signed char (*v2) (unsigned short);
double v3 (unsigned int, signed short);
double (*v4) (unsigned int, signed short) = v3;
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern double v7 (unsigned short, unsigned int, signed char);
extern double (*v8) (unsigned short, unsigned int, signed char);
extern unsigned char v9 (signed int);
extern unsigned char (*v10) (signed int);
extern int history[];
extern int history_index;
extern int trace;

unsigned int v5 (void) {
for (;;) {
trace++;
switch (trace) {
case 16: return 199999;
case 14: return 199999;
case 13: return 199999;
case 12: return 199999;
case 11: return 199999;
case 10: 
{
unsigned int v21;
v21 = v5 ();
history[history_index++] = (int)v21;
return 199999;
}
break;
case 9: 
{
unsigned int v22;
v22 = (*v6) ();
history[history_index++] = (int)v22;
return 199999;
}
break;
case 8: 
{
unsigned int v23;
v23 = (*v6) ();
history[history_index++] = (int)v23;
return 199999;
}
break;
case 6: 
{
unsigned int v24;
signed short v25;
double v26;
v24=199999;
v25=-111;
v26 = (*v4) (v24, v25);
history[history_index++] = (int)v26;
return 199999;
}
break;
case 5: return 199999;
case 4: 
{
unsigned int v27;
v27 = (*v6) ();
history[history_index++] = (int)v27;
return 199999;
}
break;
case 2: 
{
unsigned int v28;
signed short v29;
double v30;
v28=199999;
v29=-111;
v30 = v3 (v28, v29);
history[history_index++] = (int)v30;
return 199999;
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

double v3 (unsigned int v31, signed short v32) {
history[history_index++] = (int)v31;
history[history_index++] = (int)v32;
for (;;) {
trace++;
switch (trace) {
case 17: return 111111.2222222;
case 15: return 111111.2222222;
case 7: return 111111.2222222;
case 3: 
{
unsigned int v33;
v33 = (*v6) ();
history[history_index++] = (int)v33;
return 111111.2222222;
}
break;
case 1: 
{
unsigned int v34;
v34 = (*v6) ();
history[history_index++] = (int)v34;
return 111111.2222222;
}
break;
default: abort ();
}
}
}
