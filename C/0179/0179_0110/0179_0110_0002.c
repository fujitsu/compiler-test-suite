#include <stdlib.h>
signed char v1 (float, signed int, signed char);
signed char (*v2) (float, signed int, signed char) = v1;
extern float v3 (signed int, unsigned int);
extern float (*v4) (signed int, unsigned int);
extern void v5 (signed short, unsigned short, signed short, double);
extern void (*v6) (signed short, unsigned short, signed short, double);
extern signed char v7 (signed int, signed short);
extern signed char (*v8) (signed int, signed short);
extern unsigned int v9 (unsigned int, float);
extern unsigned int (*v10) (unsigned int, float);
extern int history[];
extern int history_index;
extern int trace;

signed char v1 (float v34, signed int v35, signed char v36) {
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
for (;;) {
trace++;
switch (trace) {
case 14: return 'a';
case 6: 
{
signed short v37;
unsigned short v38;
signed short v39;
double v40;
v37=-111;
v38=111;
v39=-111;
v40=111111.2222222;
(*v6) (v37, v38, v39, v40);
return 'a';
}
break;
case 4: 
{
signed short v41;
unsigned short v42;
signed short v43;
double v44;
v41=-111;
v42=111;
v43=-111;
v44=111111.2222222;
v5 (v41, v42, v43, v44);
return 'a';
}
break;
case 2: 
{
signed int v45;
signed short v46;
signed char v47;
v45=-199999;
v46=-111;
v47 = v7 (v45, v46);
history[history_index++] = (int)v47;
return 'a';
}
break;
case 0: 
{
signed short v48;
unsigned short v49;
signed short v50;
double v51;
v48=-111;
v49=111;
v50=-111;
v51=111111.2222222;
(*v6) (v48, v49, v50, v51);
return 'a';
}
break;
default: abort ();
}
}
}
