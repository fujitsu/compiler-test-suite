#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
unsigned char v3 (signed short, unsigned char, signed int, unsigned char);
unsigned char (*v4) (signed short, unsigned char, signed int, unsigned char) = v3;
extern void v5 (void);
extern void (*v6) (void);
extern unsigned char v7 (signed int);
extern unsigned char (*v8) (signed int);
extern signed char v9 (signed char, unsigned int, unsigned short);
extern signed char (*v10) (signed char, unsigned int, unsigned short);
unsigned short v11 (unsigned char);
unsigned short (*v12) (unsigned char) = v11;
extern signed char v13 (unsigned int, unsigned char, unsigned int, signed int);
extern signed char (*v14) (unsigned int, unsigned char, unsigned int, signed int);
extern signed short v15 (unsigned char, signed char, unsigned char, signed int);
extern signed short (*v16) (unsigned char, signed char, unsigned char, signed int);
extern signed char v17 (unsigned int);
extern signed char (*v18) (unsigned int);
extern signed short v19 (unsigned int, signed int, unsigned short, unsigned int);
extern signed short (*v20) (unsigned int, signed int, unsigned short, unsigned int);
extern void v21 (unsigned short, unsigned short);
extern void (*v22) (unsigned short, unsigned short);
extern unsigned char v23 (unsigned char, signed short, unsigned int);
extern unsigned char (*v24) (unsigned char, signed short, unsigned int);
extern signed char v25 (unsigned char, unsigned int);
extern signed char (*v26) (unsigned char, unsigned int);
extern unsigned short v29 (signed int, signed int);
extern unsigned short (*v30) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v122 = 2U;
unsigned int v121 = 3U;
unsigned short v120 = 3;

unsigned short v11 (unsigned char v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
unsigned int v126 = 6U;
signed short v125 = 1;
unsigned int v124 = 2U;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v127;
signed int v128;
unsigned short v129;
unsigned int v130;
signed short v131;
v127 = 2U - v124;
v128 = -3 + 2;
v129 = 3 + 4;
v130 = v126 - v124;
v131 = v19 (v127, v128, v129, v130);
history[history_index++] = (int)v131;
}
break;
case 7: 
{
unsigned int v132;
unsigned char v133;
unsigned int v134;
signed int v135;
signed char v136;
v132 = v126 - v126;
v133 = v123 + v123;
v134 = v124 - v126;
v135 = -1 - -2;
v136 = v13 (v132, v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 9: 
{
unsigned char v137;
signed char v138;
unsigned char v139;
signed int v140;
signed short v141;
v137 = v123 + v123;
v138 = -1 + -2;
v139 = v123 + 3;
v140 = -2 - -2;
v141 = v15 (v137, v138, v139, v140);
history[history_index++] = (int)v141;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}

unsigned char v3 (signed short v142, unsigned char v143, signed int v144, unsigned char v145)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
unsigned char v148 = 1;
unsigned char v147 = 4;
unsigned char v146 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
