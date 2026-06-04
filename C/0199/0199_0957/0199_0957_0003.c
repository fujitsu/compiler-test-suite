#include <stdlib.h>
unsigned int v1 (unsigned char, unsigned char, signed short);
unsigned int (*v2) (unsigned char, unsigned char, signed short) = v1;
static unsigned short v3 (unsigned char, signed short, signed char, signed char);
static unsigned short (*v4) (unsigned char, signed short, signed char, signed char) = v3;
extern unsigned char v5 (unsigned int, unsigned short, unsigned int, unsigned int);
extern unsigned char (*v6) (unsigned int, unsigned short, unsigned int, unsigned int);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern void v11 (signed char, signed short, signed int, signed short);
extern void (*v12) (signed char, signed short, signed int, signed short);
extern unsigned char v13 (signed char);
extern unsigned char (*v14) (signed char);
extern unsigned int v15 (signed int, signed int, signed char, unsigned char);
extern unsigned int (*v16) (signed int, signed int, signed char, unsigned char);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned char v19 (unsigned short, signed char, signed short);
extern unsigned char (*v20) (unsigned short, signed char, signed short);
extern unsigned int v21 (unsigned int, signed int);
extern unsigned int (*v22) (unsigned int, signed int);
unsigned short v23 (unsigned short, signed char, signed short);
unsigned short (*v24) (unsigned short, signed char, signed short) = v23;
extern unsigned char v25 (unsigned int, unsigned short, signed short, signed short);
extern unsigned char (*v26) (unsigned int, unsigned short, signed short, signed short);
extern unsigned int v27 (unsigned short, unsigned short, signed short);
extern unsigned int (*v28) (unsigned short, unsigned short, signed short);
extern unsigned char v29 (signed char, unsigned char);
extern unsigned char (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v110 = -4;
unsigned int v109 = 5U;
signed int v108 = -3;

unsigned short v23 (unsigned short v111, signed char v112, signed short v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed short v116 = -3;
unsigned char v115 = 7;
unsigned short v114 = 1;
trace++;
switch (trace)
{
case 5: 
return v114;
case 7: 
return v111;
case 9: 
{
unsigned short v117;
unsigned short v118;
signed short v119;
unsigned int v120;
v117 = v111 - 0;
v118 = 2 - v111;
v119 = -3 + v116;
v120 = v27 (v117, v118, v119);
history[history_index++] = (int)v120;
}
break;
case 11: 
return 1;
default: abort ();
}
}
}
}

static unsigned short v3 (unsigned char v121, signed short v122, signed char v123, signed char v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 7;
signed char v126 = -2;
unsigned short v125 = 6;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v128;
signed char v129;
signed short v130;
unsigned char v131;
v128 = 0 - v125;
v129 = v126 + 3;
v130 = -1 + -2;
v131 = v19 (v128, v129, v130);
history[history_index++] = (int)v131;
}
break;
case 13: 
return v125;
default: abort ();
}
}
}
}

unsigned int v1 (unsigned char v132, unsigned char v133, signed short v134)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed short v137 = -3;
unsigned short v136 = 7;
signed short v135 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed char v138;
unsigned char v139;
unsigned char v140;
v138 = 3 + 0;
v139 = v132 - v132;
v140 = v29 (v138, v139);
history[history_index++] = (int)v140;
}
break;
case 2: 
{
unsigned char v141;
signed short v142;
signed char v143;
signed char v144;
unsigned short v145;
v141 = v132 - v132;
v142 = v137 - v137;
v143 = 3 - -4;
v144 = -4 - 3;
v145 = v3 (v141, v142, v143, v144);
history[history_index++] = (int)v145;
}
break;
case 14: 
return 6U;
default: abort ();
}
}
}
}
