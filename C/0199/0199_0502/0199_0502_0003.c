#include <stdlib.h>
extern unsigned char v1 (signed short);
extern unsigned char (*v2) (signed short);
extern unsigned char v3 (signed short, signed char, unsigned char);
extern unsigned char (*v4) (signed short, signed char, unsigned char);
unsigned int v5 (unsigned char);
unsigned int (*v6) (unsigned char) = v5;
extern signed short v7 (signed int, signed int, signed int);
extern signed short (*v8) (signed int, signed int, signed int);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern signed int v11 (signed short, unsigned short, unsigned char);
extern signed int (*v12) (signed short, unsigned short, unsigned char);
extern unsigned int v13 (signed short, signed char, unsigned int);
extern unsigned int (*v14) (signed short, signed char, unsigned int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned short v17 (signed short, unsigned int);
extern unsigned short (*v18) (signed short, unsigned int);
extern unsigned int v19 (unsigned char);
extern unsigned int (*v20) (unsigned char);
extern signed int v21 (unsigned int, signed char, signed short);
extern signed int (*v22) (unsigned int, signed char, signed short);
static unsigned short v23 (signed int);
static unsigned short (*v24) (signed int) = v23;
extern signed short v25 (signed short, unsigned int, unsigned char, unsigned int);
extern signed short (*v26) (signed short, unsigned int, unsigned char, unsigned int);
extern unsigned short v27 (signed short, unsigned short, unsigned char);
extern unsigned short (*v28) (signed short, unsigned short, unsigned char);
extern signed int v29 (signed int, signed int, signed short);
extern signed int (*v30) (signed int, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v113 = 0U;
signed int v112 = -3;
signed short v111 = -2;

static unsigned short v23 (signed int v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
unsigned int v117 = 0U;
signed int v116 = -2;
unsigned int v115 = 4U;
trace++;
switch (trace)
{
case 2: 
{
signed int v118;
signed int v119;
signed short v120;
signed int v121;
v118 = v114 + v114;
v119 = v114 + v116;
v120 = 0 - 0;
v121 = v29 (v118, v119, v120);
history[history_index++] = (int)v121;
}
break;
case 4: 
{
signed int v122;
signed int v123;
signed short v124;
signed int v125;
v122 = v116 - 3;
v123 = v116 + v116;
v124 = 3 - 0;
v125 = v29 (v122, v123, v124);
history[history_index++] = (int)v125;
}
break;
case 6: 
{
signed int v126;
signed int v127;
signed short v128;
signed int v129;
v126 = 1 + v116;
v127 = v116 - v116;
v128 = -2 + 3;
v129 = v29 (v126, v127, v128);
history[history_index++] = (int)v129;
}
break;
case 8: 
{
signed int v130;
signed int v131;
signed short v132;
signed int v133;
v130 = -1 - v116;
v131 = v116 - v114;
v132 = -3 - 3;
v133 = v29 (v130, v131, v132);
history[history_index++] = (int)v133;
}
break;
case 10: 
{
signed int v134;
signed int v135;
signed short v136;
signed int v137;
v134 = 1 - 1;
v135 = -4 + v114;
v136 = 1 + 3;
v137 = v29 (v134, v135, v136);
history[history_index++] = (int)v137;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}

unsigned int v5 (unsigned char v138)
{
history[history_index++] = (int)v138;
{
for (;;) {
unsigned int v141 = 0U;
unsigned short v140 = 5;
signed char v139 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed int v142;
unsigned short v143;
v142 = -3 - 0;
v143 = v23 (v142);
history[history_index++] = (int)v143;
}
break;
case 13: 
return 4U;
default: abort ();
}
}
}
}
