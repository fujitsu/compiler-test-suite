#include <stdlib.h>
void v1 (signed char, unsigned short);
void (*v2) (signed char, unsigned short) = v1;
extern void v3 (unsigned int, unsigned short, signed short, unsigned short);
extern void (*v4) (unsigned int, unsigned short, signed short, unsigned short);
extern void v5 (unsigned char);
extern void (*v6) (unsigned char);
unsigned short v7 (unsigned int, signed short, signed short);
unsigned short (*v8) (unsigned int, signed short, signed short) = v7;
unsigned int v9 (signed int, signed int, unsigned short);
unsigned int (*v10) (signed int, signed int, unsigned short) = v9;
signed short v11 (unsigned int, unsigned short, unsigned int, unsigned short);
signed short (*v12) (unsigned int, unsigned short, unsigned int, unsigned short) = v11;
extern void v13 (signed char, unsigned short, signed int, unsigned short);
extern void (*v14) (signed char, unsigned short, signed int, unsigned short);
extern signed int v15 (unsigned int, unsigned int);
extern signed int (*v16) (unsigned int, unsigned int);
signed short v17 (signed short, unsigned int, signed char);
signed short (*v18) (signed short, unsigned int, signed char) = v17;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed short v21 (unsigned short, unsigned int, signed short, unsigned char);
extern signed short (*v22) (unsigned short, unsigned int, signed short, unsigned char);
extern signed short v23 (unsigned char, signed char, unsigned char);
extern signed short (*v24) (unsigned char, signed char, unsigned char);
extern signed char v25 (signed short, signed int, unsigned int, signed short);
extern signed char (*v26) (signed short, signed int, unsigned int, signed short);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned short v29 (unsigned short, signed short);
extern unsigned short (*v30) (unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v122 = 0;
signed char v121 = 3;
signed short v120 = -3;

signed short v17 (signed short v123, unsigned int v124, signed char v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed int v128 = -2;
unsigned char v127 = 6;
signed short v126 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned int v129, unsigned short v130, unsigned int v131, unsigned short v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed int v135 = 3;
unsigned char v134 = 4;
unsigned short v133 = 4;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v136;
signed char v137;
unsigned char v138;
signed short v139;
v136 = v134 - 1;
v137 = -4 + -4;
v138 = v134 + 7;
v139 = v23 (v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 6: 
{
unsigned short v140;
unsigned int v141;
signed short v142;
unsigned char v143;
signed short v144;
v140 = 7 + 7;
v141 = v131 + v129;
v142 = 3 - -1;
v143 = v134 - 3;
v144 = v21 (v140, v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 8: 
{
unsigned short v145;
unsigned int v146;
signed short v147;
unsigned char v148;
signed short v149;
v145 = v132 - v132;
v146 = 5U - v129;
v147 = 1 + 3;
v148 = 6 - 3;
v149 = v21 (v145, v146, v147, v148);
history[history_index++] = (int)v149;
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}

unsigned int v9 (signed int v150, signed int v151, unsigned short v152)
{
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
{
for (;;) {
unsigned char v155 = 6;
signed short v154 = 3;
unsigned char v153 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned int v156, signed short v157, signed short v158)
{
history[history_index++] = (int)v156;
history[history_index++] = (int)v157;
history[history_index++] = (int)v158;
{
for (;;) {
signed short v161 = 1;
unsigned int v160 = 4U;
unsigned int v159 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed char v162, unsigned short v163)
{
history[history_index++] = (int)v162;
history[history_index++] = (int)v163;
{
for (;;) {
unsigned int v166 = 5U;
signed char v165 = -2;
signed short v164 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v167;
v167 = 7 - 5;
v5 (v167);
}
break;
case 16: 
return;
default: abort ();
}
}
}
}
