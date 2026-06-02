#include <stdlib.h>
unsigned int v1 (unsigned short);
unsigned int (*v2) (unsigned short) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern unsigned char v7 (unsigned int, signed char, signed short);
extern unsigned char (*v8) (unsigned int, signed char, signed short);
extern signed int v9 (signed short);
extern signed int (*v10) (signed short);
extern unsigned char v11 (signed char, signed int, signed int);
extern unsigned char (*v12) (signed char, signed int, signed int);
static unsigned int v13 (unsigned short);
static unsigned int (*v14) (unsigned short) = v13;
extern signed short v15 (signed int, signed int, unsigned char);
extern signed short (*v16) (signed int, signed int, unsigned char);
extern signed char v17 (signed int, signed char, signed char, signed int);
extern signed char (*v18) (signed int, signed char, signed char, signed int);
static unsigned int v19 (unsigned char);
static unsigned int (*v20) (unsigned char) = v19;
unsigned short v21 (signed char, signed char);
unsigned short (*v22) (signed char, signed char) = v21;
extern void v23 (void);
extern void (*v24) (void);
extern signed int v25 (signed int, unsigned short, signed int);
extern signed int (*v26) (signed int, unsigned short, signed int);
extern signed short v27 (unsigned char, signed char);
extern signed short (*v28) (unsigned char, signed char);
extern signed int v29 (unsigned char, unsigned char);
extern signed int (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v110 = -2;
signed char v109 = 1;
signed short v108 = -1;

unsigned short v21 (signed char v111, signed char v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed short v115 = -1;
unsigned short v114 = 6;
signed short v113 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v19 (unsigned char v116)
{
history[history_index++] = (int)v116;
{
for (;;) {
signed short v119 = -2;
unsigned char v118 = 3;
unsigned char v117 = 6;
trace++;
switch (trace)
{
case 1: 
return 0U;
default: abort ();
}
}
}
}

static unsigned int v13 (unsigned short v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
unsigned short v123 = 6;
signed char v122 = -3;
signed short v121 = -1;
trace++;
switch (trace)
{
case 3: 
{
signed int v124;
unsigned short v125;
signed int v126;
signed int v127;
v124 = 3 + -1;
v125 = v123 + v123;
v126 = 1 - 0;
v127 = v25 (v124, v125, v126);
history[history_index++] = (int)v127;
}
break;
case 7: 
{
signed int v128;
signed char v129;
signed char v130;
signed int v131;
signed char v132;
v128 = -1 + 0;
v129 = v122 - v122;
v130 = -4 - -4;
v131 = -3 - -4;
v132 = v17 (v128, v129, v130, v131);
history[history_index++] = (int)v132;
}
break;
case 9: 
{
signed int v133;
unsigned short v134;
signed int v135;
signed int v136;
v133 = -3 - -4;
v134 = v123 + v120;
v135 = 0 - 0;
v136 = v25 (v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 13: 
return 6U;
default: abort ();
}
}
}
}

unsigned int v1 (unsigned short v137)
{
history[history_index++] = (int)v137;
{
for (;;) {
unsigned short v140 = 1;
unsigned int v139 = 0U;
signed short v138 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v141;
unsigned int v142;
v141 = 4 + 5;
v142 = v19 (v141);
history[history_index++] = (int)v142;
}
break;
case 2: 
{
unsigned short v143;
unsigned int v144;
v143 = v137 - v140;
v144 = v13 (v143);
history[history_index++] = (int)v144;
}
break;
case 14: 
return v139;
default: abort ();
}
}
}
}
