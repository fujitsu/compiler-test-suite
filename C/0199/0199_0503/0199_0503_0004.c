#include <stdlib.h>
extern unsigned char v1 (signed int, unsigned short, signed char);
extern unsigned char (*v2) (signed int, unsigned short, signed char);
extern unsigned int v3 (signed char, signed char, signed short, signed int);
extern unsigned int (*v4) (signed char, signed char, signed short, signed int);
extern signed char v5 (signed int, unsigned int, unsigned char);
extern signed char (*v6) (signed int, unsigned int, unsigned char);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern signed short v9 (unsigned short);
extern signed short (*v10) (unsigned short);
extern void v11 (signed short, unsigned int);
extern void (*v12) (signed short, unsigned int);
extern void v13 (unsigned int);
extern void (*v14) (unsigned int);
extern unsigned char v15 (signed int, unsigned int);
extern unsigned char (*v16) (signed int, unsigned int);
unsigned short v17 (unsigned char);
unsigned short (*v18) (unsigned char) = v17;
extern void v19 (unsigned char, signed short, unsigned int);
extern void (*v20) (unsigned char, signed short, unsigned int);
unsigned int v21 (signed short, unsigned short);
unsigned int (*v22) (signed short, unsigned short) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned int v25 (signed int);
extern unsigned int (*v26) (signed int);
extern unsigned char v27 (unsigned short, unsigned char, signed short);
extern unsigned char (*v28) (unsigned short, unsigned char, signed short);
unsigned char v29 (unsigned int, unsigned char, signed int);
unsigned char (*v30) (unsigned int, unsigned char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v117 = -3;
unsigned short v116 = 1;
signed int v115 = -3;

unsigned char v29 (unsigned int v118, unsigned char v119, signed int v120)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned short v123 = 0;
unsigned char v122 = 5;
signed char v121 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (signed short v124, unsigned short v125)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned char v128 = 2;
unsigned int v127 = 7U;
signed int v126 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (unsigned char v129)
{
history[history_index++] = (int)v129;
{
for (;;) {
signed short v132 = -2;
unsigned int v131 = 3U;
signed char v130 = 1;
trace++;
switch (trace)
{
case 4: 
{
unsigned short v133;
unsigned char v134;
signed short v135;
unsigned char v136;
v133 = 7 + 2;
v134 = v129 + v129;
v135 = -3 - 3;
v136 = v27 (v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 6: 
{
unsigned short v137;
unsigned char v138;
signed short v139;
unsigned char v140;
v137 = 3 + 0;
v138 = 4 - 0;
v139 = 1 - -2;
v140 = v27 (v137, v138, v139);
history[history_index++] = (int)v140;
}
break;
case 8: 
{
unsigned short v141;
unsigned char v142;
signed short v143;
unsigned char v144;
v141 = 3 - 2;
v142 = v129 + v129;
v143 = -2 - v132;
v144 = v27 (v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 10: 
{
unsigned short v145;
unsigned char v146;
signed short v147;
unsigned char v148;
v145 = 4 + 1;
v146 = v129 - 4;
v147 = -2 + -2;
v148 = v27 (v145, v146, v147);
history[history_index++] = (int)v148;
}
break;
case 12: 
return 4;
default: abort ();
}
}
}
}
