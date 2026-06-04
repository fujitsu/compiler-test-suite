#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed char, signed char, unsigned short);
extern unsigned char (*v2) (unsigned short, signed char, signed char, unsigned short);
extern unsigned short v3 (unsigned int);
extern unsigned short (*v4) (unsigned int);
extern void v7 (signed int, signed int);
extern void (*v8) (signed int, signed int);
unsigned short v9 (signed short, unsigned char);
unsigned short (*v10) (signed short, unsigned char) = v9;
extern void v11 (unsigned char, unsigned short, signed short, signed short);
extern void (*v12) (unsigned char, unsigned short, signed short, signed short);
extern unsigned int v15 (unsigned short, unsigned int, signed short, signed char);
extern unsigned int (*v16) (unsigned short, unsigned int, signed short, signed char);
extern unsigned char v17 (signed char, unsigned int, signed short);
extern unsigned char (*v18) (signed char, unsigned int, signed short);
extern signed char v19 (signed short);
extern signed char (*v20) (signed short);
signed short v21 (signed char);
signed short (*v22) (signed char) = v21;
extern signed short v23 (signed char, signed short, unsigned char, signed char);
extern signed short (*v24) (signed char, signed short, unsigned char, signed char);
extern void v25 (unsigned int, signed int);
extern void (*v26) (unsigned int, signed int);
extern unsigned short v27 (unsigned char, unsigned short);
extern unsigned short (*v28) (unsigned char, unsigned short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v129 = 7;
unsigned char v128 = 5;
signed short v127 = -3;

signed short v21 (signed char v130)
{
history[history_index++] = (int)v130;
{
for (;;) {
unsigned int v133 = 4U;
signed char v132 = -4;
unsigned int v131 = 4U;
trace++;
switch (trace)
{
case 2: 
return 0;
case 4: 
{
unsigned char v134;
unsigned short v135;
unsigned short v136;
v134 = 0 + 2;
v135 = 0 - 1;
v136 = v27 (v134, v135);
history[history_index++] = (int)v136;
}
break;
case 6: 
return 3;
default: abort ();
}
}
}
}

unsigned short v9 (signed short v137, unsigned char v138)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed char v141 = -1;
signed char v140 = 0;
unsigned char v139 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
