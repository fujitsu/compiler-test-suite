#include <stdlib.h>
extern unsigned char v1 (unsigned char);
extern unsigned char (*v2) (unsigned char);
extern unsigned char v3 (signed short, signed char);
extern unsigned char (*v4) (signed short, signed char);
void v5 (unsigned char, unsigned int, signed int, unsigned char);
void (*v6) (unsigned char, unsigned int, signed int, unsigned char) = v5;
extern unsigned short v7 (unsigned int, signed char, signed int, unsigned int);
extern unsigned short (*v8) (unsigned int, signed char, signed int, unsigned int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
signed int v15 (unsigned char, unsigned char);
signed int (*v16) (unsigned char, unsigned char) = v15;
signed char v17 (signed short);
signed char (*v18) (signed short) = v17;
extern void v19 (signed int, unsigned int, signed int, signed char);
extern void (*v20) (signed int, unsigned int, signed int, signed char);
extern signed char v21 (signed short, unsigned int);
extern signed char (*v22) (signed short, unsigned int);
extern signed char v23 (unsigned char);
extern signed char (*v24) (unsigned char);
static signed short v25 (unsigned int, signed int, unsigned char, signed int);
static signed short (*v26) (unsigned int, signed int, unsigned char, signed int) = v25;
extern unsigned int v27 (signed char, unsigned char, signed short, unsigned short);
extern unsigned int (*v28) (signed char, unsigned char, signed short, unsigned short);
extern signed short v29 (unsigned int, signed int);
extern signed short (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v105 = 4;
signed int v104 = 3;
signed char v103 = -4;

static signed short v25 (unsigned int v106, signed int v107, unsigned char v108, signed int v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned short v112 = 5;
signed char v111 = 2;
signed int v110 = -1;
trace++;
switch (trace)
{
case 8: 
return 0;
case 10: 
return 2;
default: abort ();
}
}
}
}

signed char v17 (signed short v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
unsigned char v116 = 7;
unsigned int v115 = 3U;
signed short v114 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (unsigned char v117, unsigned char v118)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned short v121 = 4;
signed char v120 = 0;
signed char v119 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v122;
signed int v123;
signed short v124;
v122 = 3U - 6U;
v123 = -3 + 2;
v124 = v29 (v122, v123);
history[history_index++] = (int)v124;
}
break;
case 3: 
{
unsigned int v125;
signed int v126;
signed short v127;
v125 = 2U + 1U;
v126 = -2 - -3;
v127 = v29 (v125, v126);
history[history_index++] = (int)v127;
}
break;
case 5: 
{
unsigned int v128;
signed int v129;
signed short v130;
v128 = 2U + 7U;
v129 = -3 + 1;
v130 = v29 (v128, v129);
history[history_index++] = (int)v130;
}
break;
case 7: 
{
unsigned int v131;
signed int v132;
unsigned char v133;
signed int v134;
signed short v135;
v131 = 4U - 6U;
v132 = 3 - 1;
v133 = v117 + 4;
v134 = -2 + -3;
v135 = v25 (v131, v132, v133, v134);
history[history_index++] = (int)v135;
}
break;
case 9: 
{
unsigned int v136;
signed int v137;
unsigned char v138;
signed int v139;
signed short v140;
v136 = 0U - 1U;
v137 = -4 - -4;
v138 = 4 - 5;
v139 = -4 + -1;
v140 = v25 (v136, v137, v138, v139);
history[history_index++] = (int)v140;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}

void v5 (unsigned char v141, unsigned int v142, signed int v143, unsigned char v144)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
signed char v147 = 0;
signed int v146 = 3;
unsigned int v145 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
