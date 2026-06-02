#include <stdlib.h>
extern signed int v1 (signed short, unsigned short, unsigned int);
extern signed int (*v2) (signed short, unsigned short, unsigned int);
extern unsigned char v3 (signed char, signed int);
extern unsigned char (*v4) (signed char, signed int);
void v5 (void);
void (*v6) (void) = v5;
extern void v7 (unsigned char);
extern void (*v8) (unsigned char);
unsigned char v9 (signed char);
unsigned char (*v10) (signed char) = v9;
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned char v13 (unsigned short, unsigned short, signed short);
extern unsigned char (*v14) (unsigned short, unsigned short, signed short);
extern void v15 (signed short, unsigned short, signed short);
extern void (*v16) (signed short, unsigned short, signed short);
unsigned short v17 (unsigned int, unsigned char, unsigned int, unsigned short);
unsigned short (*v18) (unsigned int, unsigned char, unsigned int, unsigned short) = v17;
extern unsigned char v19 (unsigned short, unsigned short, unsigned short, signed short);
extern unsigned char (*v20) (unsigned short, unsigned short, unsigned short, signed short);
extern unsigned int v21 (signed char, unsigned short, signed char, signed char);
extern unsigned int (*v22) (signed char, unsigned short, signed char, signed char);
extern void v23 (signed short, signed int, unsigned char);
extern void (*v24) (signed short, signed int, unsigned char);
extern signed char v25 (signed char, unsigned int, unsigned int, signed int);
extern signed char (*v26) (signed char, unsigned int, unsigned int, signed int);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
unsigned short v29 (unsigned short, signed short, signed char, signed short);
unsigned short (*v30) (unsigned short, signed short, signed char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v104 = 6;
unsigned short v103 = 0;
unsigned char v102 = 0;

unsigned short v29 (unsigned short v105, signed short v106, signed char v107, signed short v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed char v111 = 0;
signed int v110 = -4;
signed int v109 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed char v112;
unsigned short v113;
signed char v114;
signed char v115;
unsigned int v116;
v112 = -3 + 3;
v113 = v105 + v105;
v114 = 0 + v107;
v115 = v107 + 3;
v116 = v21 (v112, v113, v114, v115);
history[history_index++] = (int)v116;
}
break;
case 3: 
{
unsigned short v117;
unsigned short v118;
unsigned short v119;
signed short v120;
unsigned char v121;
v117 = 7 + 5;
v118 = 3 + v105;
v119 = v105 + 7;
v120 = -1 - v106;
v121 = v19 (v117, v118, v119, v120);
history[history_index++] = (int)v121;
}
break;
case 5: 
{
unsigned short v122;
unsigned short v123;
unsigned short v124;
signed short v125;
unsigned char v126;
v122 = v105 + 2;
v123 = 1 + 0;
v124 = v105 - 2;
v125 = -1 - -4;
v126 = v19 (v122, v123, v124, v125);
history[history_index++] = (int)v126;
}
break;
case 7: 
{
signed char v127;
unsigned short v128;
signed char v129;
signed char v130;
unsigned int v131;
v127 = v111 - -3;
v128 = v105 - v105;
v129 = v111 - -3;
v130 = v107 + v107;
v131 = v21 (v127, v128, v129, v130);
history[history_index++] = (int)v131;
}
break;
case 9: 
{
signed char v132;
unsigned short v133;
signed char v134;
signed char v135;
unsigned int v136;
v132 = v107 - -4;
v133 = v105 - v105;
v134 = 0 + v111;
v135 = -4 - v111;
v136 = v21 (v132, v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 13: 
return v105;
default: abort ();
}
}
}
}

unsigned short v17 (unsigned int v137, unsigned char v138, unsigned int v139, unsigned short v140)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned char v143 = 2;
signed short v142 = 0;
unsigned char v141 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed char v144)
{
history[history_index++] = (int)v144;
{
for (;;) {
signed short v147 = 3;
signed short v146 = 2;
unsigned char v145 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (void)
{
{
for (;;) {
unsigned short v150 = 7;
signed int v149 = -1;
signed char v148 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
