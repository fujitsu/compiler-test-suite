#include <stdlib.h>
unsigned char v1 (signed int, signed short, unsigned short);
unsigned char (*v2) (signed int, signed short, unsigned short) = v1;
extern signed int v3 (unsigned short, unsigned char, signed char);
extern signed int (*v4) (unsigned short, unsigned char, signed char);
extern unsigned short v5 (unsigned int, unsigned short);
extern unsigned short (*v6) (unsigned int, unsigned short);
extern unsigned int v7 (signed char);
extern unsigned int (*v8) (signed char);
extern signed int v9 (unsigned int);
extern signed int (*v10) (unsigned int);
extern signed short v11 (unsigned short, signed char, signed short);
extern signed short (*v12) (unsigned short, signed char, signed short);
extern void v13 (signed short, unsigned short, signed char, unsigned int);
extern void (*v14) (signed short, unsigned short, signed char, unsigned int);
extern signed char v15 (unsigned int, unsigned short, signed char, unsigned int);
extern signed char (*v16) (unsigned int, unsigned short, signed char, unsigned int);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern void v21 (unsigned short, signed char, signed char);
extern void (*v22) (unsigned short, signed char, signed char);
extern void v23 (signed char, signed char);
extern void (*v24) (signed char, signed char);
static signed char v25 (unsigned int, unsigned int, unsigned short, unsigned char);
static signed char (*v26) (unsigned int, unsigned int, unsigned short, unsigned char) = v25;
extern signed int v27 (unsigned short);
extern signed int (*v28) (unsigned short);
signed short v29 (signed short);
signed short (*v30) (signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v111 = 4;
signed char v110 = 2;
signed short v109 = -4;

signed short v29 (signed short v112)
{
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = 1;
unsigned int v114 = 6U;
unsigned int v113 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v25 (unsigned int v116, unsigned int v117, unsigned short v118, unsigned char v119)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed short v122 = -4;
unsigned short v121 = 1;
unsigned int v120 = 4U;
trace++;
switch (trace)
{
case 1: 
return -1;
default: abort ();
}
}
}
}

unsigned char v1 (signed int v123, signed short v124, unsigned short v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = 0;
signed char v127 = -4;
signed char v126 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v129;
unsigned int v130;
unsigned short v131;
unsigned char v132;
signed char v133;
v129 = 1U - 4U;
v130 = 2U + 0U;
v131 = 0 - v125;
v132 = 1 + 7;
v133 = v25 (v129, v130, v131, v132);
history[history_index++] = (int)v133;
}
break;
case 2: 
{
unsigned short v134;
signed int v135;
v134 = 5 + v125;
v135 = v27 (v134);
history[history_index++] = (int)v135;
}
break;
case 4: 
{
unsigned int v136;
v136 = v17 ();
history[history_index++] = (int)v136;
}
break;
case 6: 
{
unsigned int v137;
v137 = v17 ();
history[history_index++] = (int)v137;
}
break;
case 8: 
{
unsigned short v138;
signed char v139;
signed short v140;
signed short v141;
v138 = 4 - v125;
v139 = v127 + v127;
v140 = v124 - v128;
v141 = v11 (v138, v139, v140);
history[history_index++] = (int)v141;
}
break;
case 10: 
{
signed short v142;
unsigned short v143;
signed char v144;
unsigned int v145;
v142 = 0 + v124;
v143 = 0 - 0;
v144 = 0 - v126;
v145 = 0U + 4U;
v13 (v142, v143, v144, v145);
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
