#include <stdlib.h>
extern signed short v1 (float, double, double);
extern signed short (*v2) (float, double, double);
extern float v3 (unsigned int);
extern float (*v4) (unsigned int);
extern float v5 (double, double, unsigned int, signed short);
extern float (*v6) (double, double, unsigned int, signed short);
double v7 (signed int, unsigned short);
double (*v8) (signed int, unsigned short) = v7;
extern signed char v9 (signed short, float, double, signed short);
extern signed char (*v10) (signed short, float, double, signed short);
extern int history[];
extern int history_index;
extern int trace;

double v7 (signed int v52, unsigned short v53) {
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
for (;;) {
trace++;
switch (trace) {
case 17: return 111111.2222222;
case 13: return 111111.2222222;
case 9: 
{
float v54;
double v55;
double v56;
signed short v57;
v54=1.234;
v55=111111.2222222;
v56=111111.2222222;
v57 = (*v2) (v54, v55, v56);
history[history_index++] = (int)v57;
return 111111.2222222;
}
break;
case 5: 
{
float v58;
double v59;
double v60;
signed short v61;
v58=1.234;
v59=111111.2222222;
v60=111111.2222222;
v61 = v1 (v58, v59, v60);
history[history_index++] = (int)v61;
return 111111.2222222;
}
break;
default: abort ();
}
}
}
