#include <stdlib.h>
extern signed char v3 (signed int, signed char, signed char);
extern signed char (*v4) (signed int, signed char, signed char);
extern void v5 (signed int, signed int);
extern void (*v6) (signed int, signed int);
extern signed int v7 (unsigned short, signed char);
extern signed int (*v8) (unsigned short, signed char);
extern signed int v9 (unsigned char, unsigned short, signed int, signed int);
extern signed int (*v10) (unsigned char, unsigned short, signed int, signed int);
signed short v11 (signed int, unsigned char, unsigned int, signed short);
signed short (*v12) (signed int, unsigned char, unsigned int, signed short) = v11;
extern signed char v13 (unsigned short, unsigned short, unsigned int);
extern signed char (*v14) (unsigned short, unsigned short, unsigned int);
signed short v15 (unsigned short, unsigned char);
signed short (*v16) (unsigned short, unsigned char) = v15;
extern void v17 (unsigned short, unsigned int, signed short, unsigned short);
extern void (*v18) (unsigned short, unsigned int, signed short, unsigned short);
extern signed short v19 (unsigned char, unsigned char, signed short);
extern signed short (*v20) (unsigned char, unsigned char, signed short);
extern signed int v21 (unsigned int, signed char);
extern signed int (*v22) (unsigned int, signed char);
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
extern void v25 (void);
extern void (*v26) (void);
extern signed short v27 (unsigned int, unsigned short);
extern signed short (*v28) (unsigned int, unsigned short);
extern signed char v29 (signed char, signed char);
extern signed char (*v30) (signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v126 = 7;
unsigned int v125 = 2U;
signed char v124 = 3;

signed short v15 (unsigned short v127, unsigned char v128)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed int v131 = -3;
unsigned short v130 = 3;
unsigned int v129 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed int v132, unsigned char v133, unsigned int v134, signed short v135)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned short v138 = 5;
signed int v137 = 2;
unsigned short v136 = 4;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v139;
unsigned int v140;
signed short v141;
unsigned short v142;
v139 = v136 + v138;
v140 = v134 - 6U;
v141 = 1 + -2;
v142 = v138 - 5;
v17 (v139, v140, v141, v142);
}
break;
case 13: 
return -4;
default: abort ();
}
}
}
}
