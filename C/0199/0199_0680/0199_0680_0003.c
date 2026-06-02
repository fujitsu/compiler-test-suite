#include <stdlib.h>
extern unsigned char v1 (unsigned int);
extern unsigned char (*v2) (unsigned int);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned char v9 (signed int, unsigned char, signed int, signed short);
extern unsigned char (*v10) (signed int, unsigned char, signed int, signed short);
extern void v11 (unsigned int, unsigned short, unsigned short);
extern void (*v12) (unsigned int, unsigned short, unsigned short);
unsigned char v13 (unsigned int, unsigned char, signed int);
unsigned char (*v14) (unsigned int, unsigned char, signed int) = v13;
extern signed char v15 (unsigned char, unsigned short, signed short, unsigned char);
extern signed char (*v16) (unsigned char, unsigned short, signed short, unsigned char);
extern void v17 (signed int, unsigned int, unsigned int, signed int);
extern void (*v18) (signed int, unsigned int, unsigned int, signed int);
extern void v19 (unsigned char, signed char, unsigned char, signed int);
extern void (*v20) (unsigned char, signed char, unsigned char, signed int);
signed short v21 (unsigned short, signed char, signed short);
signed short (*v22) (unsigned short, signed char, signed short) = v21;
extern signed char v23 (unsigned char, signed char);
extern signed char (*v24) (unsigned char, signed char);
extern unsigned int v25 (signed short, signed short, signed char);
extern unsigned int (*v26) (signed short, signed short, signed char);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned short v29 (unsigned short);
extern unsigned short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v114 = 1;
unsigned int v113 = 0U;
signed int v112 = 2;

signed short v21 (unsigned short v115, signed char v116, signed short v117)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned short v120 = 5;
signed short v119 = -3;
unsigned int v118 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned int v121, unsigned char v122, signed int v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned int v126 = 4U;
signed char v125 = 3;
signed char v124 = 2;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v127;
signed char v128;
unsigned char v129;
signed int v130;
v127 = 4 + v122;
v128 = v125 - v124;
v129 = v122 - 6;
v130 = -1 + -2;
v19 (v127, v128, v129, v130);
}
break;
case 4: 
{
unsigned char v131;
signed char v132;
unsigned char v133;
signed int v134;
v131 = 2 - 5;
v132 = 2 - v124;
v133 = v122 + v122;
v134 = v123 - -3;
v19 (v131, v132, v133, v134);
}
break;
case 6: 
{
signed int v135;
v135 = v27 ();
history[history_index++] = (int)v135;
}
break;
case 8: 
{
signed int v136;
unsigned char v137;
signed int v138;
signed short v139;
unsigned char v140;
v136 = 0 - v123;
v137 = 3 - v122;
v138 = -2 + 3;
v139 = 3 + -2;
v140 = v9 (v136, v137, v138, v139);
history[history_index++] = (int)v140;
}
break;
case 12: 
return v122;
default: abort ();
}
}
}
}
