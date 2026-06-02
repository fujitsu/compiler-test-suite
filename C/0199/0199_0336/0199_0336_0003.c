#include <stdlib.h>
unsigned char v3 (unsigned char, unsigned short, signed int, unsigned short);
unsigned char (*v4) (unsigned char, unsigned short, signed int, unsigned short) = v3;
extern void v5 (void);
extern void (*v6) (void);
extern unsigned int v7 (unsigned short, signed char, signed char);
extern unsigned int (*v8) (unsigned short, signed char, signed char);
extern void v9 (signed short, unsigned short);
extern void (*v10) (signed short, unsigned short);
extern signed int v11 (unsigned short, unsigned short);
extern signed int (*v12) (unsigned short, unsigned short);
extern unsigned short v13 (signed int, unsigned char, signed short);
extern unsigned short (*v14) (signed int, unsigned char, signed short);
extern void v15 (signed short, unsigned short, signed int);
extern void (*v16) (signed short, unsigned short, signed int);
extern signed int v17 (signed short, unsigned short, unsigned int);
extern signed int (*v18) (signed short, unsigned short, unsigned int);
extern signed short v19 (unsigned int, unsigned short, unsigned int);
extern signed short (*v20) (unsigned int, unsigned short, unsigned int);
extern unsigned int v21 (unsigned int, signed short);
extern unsigned int (*v22) (unsigned int, signed short);
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
extern unsigned char v25 (unsigned int, signed short, signed char);
extern unsigned char (*v26) (unsigned int, signed short, signed char);
extern unsigned short v27 (unsigned char, unsigned short);
extern unsigned short (*v28) (unsigned char, unsigned short);
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v126 = -1;
signed int v125 = -1;
unsigned short v124 = 1;

unsigned char v3 (unsigned char v127, unsigned short v128, signed int v129, unsigned short v130)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed int v133 = -2;
unsigned char v132 = 4;
signed char v131 = -4;
trace++;
switch (trace)
{
case 1: 
{
signed short v134;
unsigned short v135;
signed int v136;
v134 = 0 - 3;
v135 = v128 - 6;
v136 = -4 - v133;
v15 (v134, v135, v136);
}
break;
case 3: 
{
signed short v137;
unsigned short v138;
signed int v139;
v137 = -2 + 2;
v138 = v130 + v128;
v139 = 0 - -2;
v15 (v137, v138, v139);
}
break;
case 7: 
{
signed short v140;
unsigned short v141;
signed int v142;
v140 = -2 + -2;
v141 = v128 - v130;
v142 = 2 + -2;
v15 (v140, v141, v142);
}
break;
case 9: 
{
signed short v143;
unsigned short v144;
signed int v145;
v143 = -2 - 1;
v144 = v128 + v130;
v145 = 1 - v133;
v15 (v143, v144, v145);
}
break;
case 13: 
return v132;
case 15: 
return v127;
default: abort ();
}
}
}
}
