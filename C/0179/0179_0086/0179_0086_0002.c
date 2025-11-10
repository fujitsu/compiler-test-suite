#include <stdlib.h>
double v1 (signed char, signed char, unsigned short);
double (*v2) (signed char, signed char, unsigned short) = v1;
extern signed int v3 (unsigned short);
extern signed int (*v4) (unsigned short);
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern void v7 (unsigned int, double, signed int, unsigned short);
extern void (*v8) (unsigned int, double, signed int, unsigned short);
extern unsigned int v9 (unsigned char, signed int, signed int, signed int);
extern unsigned int (*v10) (unsigned char, signed int, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;

unsigned int v5 (void) {
for (;;) {
trace++;
switch (trace) {
case 5: return 199999;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

double v1 (signed char v28, signed char v29, unsigned short v30) {
history[history_index++] = (int)v28;
history[history_index++] = (int)v29;
history[history_index++] = (int)v30;
for (;;) {
trace++;
switch (trace) {
case 12: return 111111.2222222;
case 10: 
{
unsigned char v31;
signed int v32;
signed int v33;
signed int v34;
unsigned int v35;
v31='A';
v32=-199999;
v33=-199999;
v34=-199999;
v35 = (*v10) (v31, v32, v33, v34);
history[history_index++] = (int)v35;
return 111111.2222222;
}
break;
case 8: 
{
unsigned char v36;
signed int v37;
signed int v38;
signed int v39;
unsigned int v40;
v36='A';
v37=-199999;
v38=-199999;
v39=-199999;
v40 = (*v10) (v36, v37, v38, v39);
history[history_index++] = (int)v40;
return 111111.2222222;
}
break;
case 6: 
{
unsigned char v41;
signed int v42;
signed int v43;
signed int v44;
unsigned int v45;
v41='A';
v42=-199999;
v43=-199999;
v44=-199999;
v45 = v9 (v41, v42, v43, v44);
history[history_index++] = (int)v45;
return 111111.2222222;
}
break;
case 4: 
{
unsigned int v46;
v46 = v5 ();
history[history_index++] = (int)v46;
return 111111.2222222;
}
break;
case 2: return 111111.2222222;
case 0: 
{
unsigned int v47;
double v48;
signed int v49;
unsigned short v50;
v47=199999;
v48=111111.2222222;
v49=-199999;
v50=111;
(*v8) (v47, v48, v49, v50);
return 111111.2222222;
}
break;
default: abort ();
}
}
}
