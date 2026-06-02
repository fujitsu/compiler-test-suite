#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
extern unsigned short v5 (signed char, signed int);
extern unsigned short (*v6) (signed char, signed int);
extern void v7 (signed short);
extern void (*v8) (signed short);
signed short v9 (void);
signed short (*v10) (void) = v9;
signed short v11 (signed short, unsigned int, signed char);
signed short (*v12) (signed short, unsigned int, signed char) = v11;
extern unsigned short v13 (unsigned char, unsigned short);
extern unsigned short (*v14) (unsigned char, unsigned short);
extern unsigned short v15 (signed char, unsigned short);
extern unsigned short (*v16) (signed char, unsigned short);
extern unsigned short v17 (unsigned int, signed char, unsigned int, signed short);
extern unsigned short (*v18) (unsigned int, signed char, unsigned int, signed short);
extern signed char v19 (unsigned int);
extern signed char (*v20) (unsigned int);
extern signed short v23 (unsigned char, signed char, signed char, signed short);
extern signed short (*v24) (unsigned char, signed char, signed char, signed short);
signed int v25 (unsigned short, unsigned char, unsigned short, signed char);
signed int (*v26) (unsigned short, unsigned char, unsigned short, signed char) = v25;
extern void v27 (unsigned char, signed int, unsigned short);
extern void (*v28) (unsigned char, signed int, unsigned short);
extern void v29 (unsigned char, unsigned short, unsigned int);
extern void (*v30) (unsigned char, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v120 = 5;
unsigned char v119 = 5;
signed char v118 = -2;

signed int v25 (unsigned short v121, unsigned char v122, unsigned short v123, signed char v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed int v127 = 3;
signed short v126 = 2;
signed int v125 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed short v128, unsigned int v129, signed char v130)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed char v133 = -3;
unsigned short v132 = 3;
unsigned int v131 = 1U;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v134;
unsigned short v135;
unsigned short v136;
v134 = 3 - 6;
v135 = 2 + v132;
v136 = v13 (v134, v135);
history[history_index++] = (int)v136;
}
break;
case 11: 
return v128;
default: abort ();
}
}
}
}

signed short v9 (void)
{
{
for (;;) {
unsigned short v139 = 2;
unsigned char v138 = 6;
signed char v137 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
