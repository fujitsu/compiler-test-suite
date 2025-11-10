#include <stdlib.h>
signed int v1 (void);
signed int (*v2) (void) = v1;
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern float v5 (unsigned short, unsigned short, signed short, unsigned char);
extern float (*v6) (unsigned short, unsigned short, signed short, unsigned char);
extern unsigned char v7 (double, float, signed short);
extern unsigned char (*v8) (double, float, signed short);
extern signed int v9 (signed short, signed short, unsigned short);
extern signed int (*v10) (signed short, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;

signed int v1 (void) {
for (;;) {
trace++;
switch (trace) {
case 14: return -199999;
case 11: return -199999;
case 9: 
{
unsigned short v24;
unsigned short v25;
signed short v26;
unsigned char v27;
float v28;
v24=111;
v25=111;
v26=-111;
v27='A';
v28 = (*v6) (v24, v25, v26, v27);
history[history_index++] = (int)v28;
return -199999;
}
break;
case 5: 
{
unsigned short v29;
unsigned short v30;
signed short v31;
unsigned char v32;
float v33;
v29=111;
v30=111;
v31=-111;
v32='A';
v33 = (*v6) (v29, v30, v31, v32);
history[history_index++] = (int)v33;
return -199999;
}
break;
case 2: 
{
unsigned short v34;
unsigned short v35;
signed short v36;
unsigned char v37;
float v38;
v34=111;
v35=111;
v36=-111;
v37='A';
v38 = (*v6) (v34, v35, v36, v37);
history[history_index++] = (int)v38;
return -199999;
}
break;
case 0: 
{
double v39;
float v40;
signed short v41;
unsigned char v42;
v39=111111.2222222;
v40=1.234;
v41=-111;
v42 = (*v8) (v39, v40, v41);
history[history_index++] = (int)v42;
return -199999;
}
break;
default: abort ();
}
}
}
