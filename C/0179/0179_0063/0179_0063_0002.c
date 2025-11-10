#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
extern double v3 (unsigned char, signed short, unsigned short);
extern double (*v4) (unsigned char, signed short, unsigned short);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed int v7 (double, signed short, unsigned int);
extern signed int (*v8) (double, signed short, unsigned int);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;

signed short v1 (void) {
for (;;) {
trace++;
switch (trace) {
case 14: return -111;
case 12: return -111;
case 10: 
{
double v20;
signed short v21;
unsigned int v22;
signed int v23;
v20=111111.2222222;
v21=-111;
v22=199999;
v23 = v7 (v20, v21, v22);
history[history_index++] = (int)v23;
return -111;
}
break;
case 8: 
{
double v24;
signed short v25;
unsigned int v26;
signed int v27;
v24=111111.2222222;
v25=-111;
v26=199999;
v27 = (*v8) (v24, v25, v26);
history[history_index++] = (int)v27;
return -111;
}
break;
case 6: 
{
double v28;
signed short v29;
unsigned int v30;
signed int v31;
v28=111111.2222222;
v29=-111;
v30=199999;
v31 = (*v8) (v28, v29, v30);
history[history_index++] = (int)v31;
return -111;
}
break;
case 4: 
{
signed char v32;
v32 = v5 ();
history[history_index++] = (int)v32;
return -111;
}
break;
case 2: 
{
unsigned char v33;
signed short v34;
unsigned short v35;
double v36;
v33='A';
v34=-111;
v35=111;
v36 = (*v4) (v33, v34, v35);
history[history_index++] = (int)v36;
return -111;
}
break;
case 0: 
{
unsigned short v37;
v37=111;
(*v10) (v37);
return -111;
}
break;
default: abort ();
}
}
}
