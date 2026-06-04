#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned char v5 (unsigned char, signed char, signed short);
extern unsigned char (*v6) (unsigned char, signed char, signed short);
unsigned int v7 (signed short, unsigned int);
unsigned int (*v8) (signed short, unsigned int) = v7;
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed short v11 (signed char);
extern signed short (*v12) (signed char);
extern signed short v13 (signed short, signed int, unsigned int, signed int);
extern signed short (*v14) (signed short, signed int, unsigned int, signed int);
signed char v15 (signed short, unsigned char);
signed char (*v16) (signed short, unsigned char) = v15;
extern unsigned char v17 (unsigned short, unsigned char);
extern unsigned char (*v18) (unsigned short, unsigned char);
static signed int v19 (unsigned char, unsigned short, signed char, signed char);
static signed int (*v20) (unsigned char, unsigned short, signed char, signed char) = v19;
extern unsigned short v21 (unsigned int);
extern unsigned short (*v22) (unsigned int);
extern unsigned short v23 (unsigned char, signed short, signed char);
extern unsigned short (*v24) (unsigned char, signed short, signed char);
extern unsigned short v25 (signed short, signed char);
extern unsigned short (*v26) (signed short, signed char);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed char v29 (unsigned int, signed char);
extern signed char (*v30) (unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v107 = 2U;
signed char v106 = 0;
signed short v105 = 0;

static signed int v19 (unsigned char v108, unsigned short v109, signed char v110, signed char v111)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed char v114 = 3;
unsigned short v113 = 5;
unsigned short v112 = 4;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v115;
signed short v116;
signed char v117;
unsigned short v118;
v115 = 5 + 4;
v116 = -3 - 3;
v117 = v110 + v111;
v118 = v23 (v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 6: 
return 3;
case 8: 
return 1;
case 10: 
return -4;
default: abort ();
}
}
}
}

signed char v15 (signed short v119, unsigned char v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned int v123 = 3U;
signed short v122 = -4;
signed int v121 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (signed short v124, unsigned int v125)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned short v128 = 7;
signed char v127 = 2;
unsigned char v126 = 2;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v129;
unsigned short v130;
signed char v131;
signed char v132;
signed int v133;
v129 = v126 + 0;
v130 = 3 - v128;
v131 = v127 + 2;
v132 = v127 - 1;
v133 = v19 (v129, v130, v131, v132);
history[history_index++] = (int)v133;
}
break;
case 7: 
{
unsigned char v134;
unsigned short v135;
signed char v136;
signed char v137;
signed int v138;
v134 = 5 - 1;
v135 = v128 - v128;
v136 = -4 + 2;
v137 = v127 + -1;
v138 = v19 (v134, v135, v136, v137);
history[history_index++] = (int)v138;
}
break;
case 9: 
{
unsigned char v139;
unsigned short v140;
signed char v141;
signed char v142;
signed int v143;
v139 = v126 + 3;
v140 = 6 - v128;
v141 = 1 + v127;
v142 = -2 + -2;
v143 = v19 (v139, v140, v141, v142);
history[history_index++] = (int)v143;
}
break;
case 11: 
return v125;
default: abort ();
}
}
}
}
