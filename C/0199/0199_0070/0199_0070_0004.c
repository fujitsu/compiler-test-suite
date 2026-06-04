#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed char, signed int, signed int);
extern unsigned char (*v2) (unsigned int, signed char, signed int, signed int);
extern signed short v3 (signed char);
extern signed short (*v4) (signed char);
extern void v5 (unsigned int, unsigned char, unsigned int);
extern void (*v6) (unsigned int, unsigned char, unsigned int);
extern unsigned short v7 (signed short, signed short, unsigned char);
extern unsigned short (*v8) (signed short, signed short, unsigned char);
extern void v9 (signed short, unsigned int, signed char, unsigned char);
extern void (*v10) (signed short, unsigned int, signed char, unsigned char);
signed short v11 (void);
signed short (*v12) (void) = v11;
extern signed short v13 (signed char);
extern signed short (*v14) (signed char);
void v15 (unsigned short, unsigned char, signed char, unsigned char);
void (*v16) (unsigned short, unsigned char, signed char, unsigned char) = v15;
unsigned int v17 (unsigned short, unsigned int);
unsigned int (*v18) (unsigned short, unsigned int) = v17;
unsigned short v19 (unsigned int);
unsigned short (*v20) (unsigned int) = v19;
signed int v21 (signed int, unsigned int);
signed int (*v22) (signed int, unsigned int) = v21;
extern signed char v23 (unsigned char, unsigned int, unsigned int, unsigned int);
extern signed char (*v24) (unsigned char, unsigned int, unsigned int, unsigned int);
void v27 (unsigned int, signed char, unsigned int);
void (*v28) (unsigned int, signed char, unsigned int) = v27;
extern unsigned short v29 (unsigned char, unsigned short, unsigned short, signed char);
extern unsigned short (*v30) (unsigned char, unsigned short, unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v115 = -3;
signed short v114 = -4;
unsigned char v113 = 1;

void v27 (unsigned int v116, signed char v117, unsigned int v118)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned char v121 = 1;
signed short v120 = -1;
unsigned int v119 = 6U;
trace++;
switch (trace)
{
case 1: 
{
signed short v122;
unsigned int v123;
signed char v124;
unsigned char v125;
v122 = -2 - v120;
v123 = v118 - v118;
v124 = 0 - -2;
v125 = 4 - v121;
v9 (v122, v123, v124, v125);
}
break;
case 15: 
return;
default: abort ();
}
}
}
}

signed int v21 (signed int v126, unsigned int v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed int v130 = -4;
signed int v129 = 0;
signed char v128 = 2;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v131;
unsigned short v132;
unsigned short v133;
signed char v134;
unsigned short v135;
v131 = 3 + 2;
v132 = 4 - 7;
v133 = 7 - 3;
v134 = -2 + v128;
v135 = v29 (v131, v132, v133, v134);
history[history_index++] = (int)v135;
}
break;
case 7: 
return v129;
case 10: 
{
unsigned char v136;
unsigned short v137;
unsigned short v138;
signed char v139;
unsigned short v140;
v136 = 2 - 0;
v137 = 6 - 6;
v138 = 1 + 2;
v139 = v128 - v128;
v140 = v29 (v136, v137, v138, v139);
history[history_index++] = (int)v140;
}
break;
case 12: 
return v126;
default: abort ();
}
}
}
}

unsigned short v19 (unsigned int v141)
{
history[history_index++] = (int)v141;
{
for (;;) {
signed char v144 = 3;
signed char v143 = -3;
signed char v142 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (unsigned short v145, unsigned int v146)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
unsigned int v149 = 5U;
unsigned char v148 = 3;
signed int v147 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (unsigned short v150, unsigned char v151, signed char v152, unsigned char v153)
{
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
{
for (;;) {
signed short v156 = -2;
unsigned short v155 = 2;
signed int v154 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (void)
{
{
for (;;) {
signed int v159 = -3;
unsigned short v158 = 4;
unsigned char v157 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
