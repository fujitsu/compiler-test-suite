#include <stdlib.h>
unsigned int v1 (void);
unsigned int (*v2) (void) = v1;
extern unsigned char v3 (unsigned char, unsigned char, unsigned int, signed short);
extern unsigned char (*v4) (unsigned char, unsigned char, unsigned int, signed short);
extern void v5 (unsigned int, signed int, unsigned short);
extern void (*v6) (unsigned int, signed int, unsigned short);
extern unsigned short v7 (unsigned int);
extern unsigned short (*v8) (unsigned int);
extern unsigned char v9 (double, double, unsigned char, unsigned char);
extern unsigned char (*v10) (double, double, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;

unsigned int v1 (void) {
for (;;) {
trace++;
switch (trace) {
case 14: return 199999;
case 13: return 199999;
case 9: 
{
unsigned int v18;
unsigned short v19;
v18=199999;
v19 = v7 (v18);
history[history_index++] = (int)v19;
return 199999;
}
break;
case 5: 
{
unsigned int v20;
signed int v21;
unsigned short v22;
v20=199999;
v21=-199999;
v22=111;
(*v6) (v20, v21, v22);
return 199999;
}
break;
case 3: 
{
unsigned int v23;
signed int v24;
unsigned short v25;
v23=199999;
v24=-199999;
v25=111;
(*v6) (v23, v24, v25);
return 199999;
}
break;
case 2: 
{
unsigned int v26;
v26 = v1 ();
history[history_index++] = (int)v26;
return 199999;
}
break;
case 0: 
{
double v27;
double v28;
unsigned char v29;
unsigned char v30;
unsigned char v31;
v27=111111.2222222;
v28=111111.2222222;
v29='A';
v30='A';
v31 = (*v10) (v27, v28, v29, v30);
history[history_index++] = (int)v31;
return 199999;
}
break;
default: abort ();
}
}
}
