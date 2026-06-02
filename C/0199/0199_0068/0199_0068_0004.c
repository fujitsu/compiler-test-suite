#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern signed short v3 (unsigned char, signed char);
extern signed short (*v4) (unsigned char, signed char);
extern signed short v5 (signed char, unsigned char, unsigned char);
extern signed short (*v6) (signed char, unsigned char, unsigned char);
signed int v7 (signed short, signed int);
signed int (*v8) (signed short, signed int) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned char v11 (signed short, unsigned char, signed int);
extern unsigned char (*v12) (signed short, unsigned char, signed int);
extern signed short v13 (signed char);
extern signed short (*v14) (signed char);
extern unsigned char v15 (signed int, unsigned char, unsigned short);
extern unsigned char (*v16) (signed int, unsigned char, unsigned short);
extern signed int v17 (unsigned short, signed int);
extern signed int (*v18) (unsigned short, signed int);
extern void v19 (signed int, unsigned int, signed char, signed char);
extern void (*v20) (signed int, unsigned int, signed char, signed char);
extern void v21 (unsigned int, signed int, unsigned short, signed int);
extern void (*v22) (unsigned int, signed int, unsigned short, signed int);
extern signed short v23 (unsigned char, signed int);
extern signed short (*v24) (unsigned char, signed int);
extern signed char v25 (unsigned short, unsigned short);
extern signed char (*v26) (unsigned short, unsigned short);
extern unsigned char v27 (unsigned short, unsigned short, unsigned short, unsigned int);
extern unsigned char (*v28) (unsigned short, unsigned short, unsigned short, unsigned int);
extern unsigned int v29 (signed char, signed int);
extern unsigned int (*v30) (signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v119 = 2;
signed short v118 = 1;
signed int v117 = 1;

signed int v7 (signed short v120, signed int v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed char v124 = -1;
unsigned int v123 = 6U;
signed char v122 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
unsigned int v127 = 0U;
unsigned int v126 = 5U;
unsigned char v125 = 4;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v128;
signed int v129;
signed int v130;
v128 = 0 + 4;
v129 = -3 - 2;
v130 = v17 (v128, v129);
history[history_index++] = (int)v130;
}
break;
case 2: 
{
unsigned short v131;
unsigned short v132;
signed char v133;
v131 = 7 - 1;
v132 = 7 + 5;
v133 = v25 (v131, v132);
history[history_index++] = (int)v133;
}
break;
case 4: 
{
unsigned char v134;
v134 = v9 ();
history[history_index++] = (int)v134;
}
break;
case 6: 
{
unsigned char v135;
signed int v136;
signed short v137;
v135 = 0 + 7;
v136 = -4 + -1;
v137 = v23 (v135, v136);
history[history_index++] = (int)v137;
}
break;
case 8: 
{
unsigned short v138;
signed int v139;
signed int v140;
v138 = 2 - 2;
v139 = -2 - -3;
v140 = v17 (v138, v139);
history[history_index++] = (int)v140;
}
break;
case 10: 
{
unsigned char v141;
signed int v142;
signed short v143;
v141 = 7 - v125;
v142 = -4 - 2;
v143 = v23 (v141, v142);
history[history_index++] = (int)v143;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
