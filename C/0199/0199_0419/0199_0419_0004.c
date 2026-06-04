#include <stdlib.h>
unsigned char v3 (signed int, signed char);
unsigned char (*v4) (signed int, signed char) = v3;
unsigned char v5 (unsigned short, signed int);
unsigned char (*v6) (unsigned short, signed int) = v5;
unsigned char v7 (unsigned short, signed short);
unsigned char (*v8) (unsigned short, signed short) = v7;
signed char v9 (signed short, signed char, signed int, unsigned int);
signed char (*v10) (signed short, signed char, signed int, unsigned int) = v9;
extern signed int v11 (unsigned short, signed char, signed int);
extern signed int (*v12) (unsigned short, signed char, signed int);
extern signed short v13 (signed char, signed short);
extern signed short (*v14) (signed char, signed short);
signed short v15 (unsigned char, unsigned int);
signed short (*v16) (unsigned char, unsigned int) = v15;
extern signed short v17 (unsigned int, signed char);
extern signed short (*v18) (unsigned int, signed char);
unsigned char v19 (signed short, unsigned short, signed short, unsigned short);
unsigned char (*v20) (signed short, unsigned short, signed short, unsigned short) = v19;
extern unsigned short v21 (unsigned char, signed int, signed short);
extern unsigned short (*v22) (unsigned char, signed int, signed short);
extern signed short v23 (signed int, unsigned char, signed short);
extern signed short (*v24) (signed int, unsigned char, signed short);
signed char v25 (unsigned int, unsigned char);
signed char (*v26) (unsigned int, unsigned char) = v25;
extern void v27 (signed short, unsigned short, signed char, signed short);
extern void (*v28) (signed short, unsigned short, signed char, signed short);
extern signed int v29 (unsigned char, signed char);
extern signed int (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v122 = 0;
unsigned int v121 = 1U;
unsigned int v120 = 1U;

signed char v25 (unsigned int v123, unsigned char v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed int v127 = -1;
unsigned int v126 = 6U;
unsigned short v125 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (signed short v128, unsigned short v129, signed short v130, unsigned short v131)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed short v134 = -4;
signed int v133 = -3;
signed char v132 = -2;
trace++;
switch (trace)
{
case 5: 
{
signed int v135;
unsigned char v136;
signed short v137;
signed short v138;
v135 = v133 + v133;
v136 = 2 - 0;
v137 = v130 + 0;
v138 = v23 (v135, v136, v137);
history[history_index++] = (int)v138;
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}

signed short v15 (unsigned char v139, unsigned int v140)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed char v143 = -1;
signed char v142 = -2;
signed char v141 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (signed short v144, signed char v145, signed int v146, unsigned int v147)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
signed short v150 = -1;
signed int v149 = -1;
unsigned short v148 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned short v151, signed short v152)
{
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
{
for (;;) {
unsigned char v155 = 3;
signed char v154 = -4;
unsigned int v153 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned short v156, signed int v157)
{
history[history_index++] = (int)v156;
history[history_index++] = (int)v157;
{
for (;;) {
signed short v160 = -3;
unsigned short v159 = 5;
signed int v158 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed int v161, signed char v162)
{
history[history_index++] = (int)v161;
history[history_index++] = (int)v162;
{
for (;;) {
unsigned short v165 = 2;
unsigned short v164 = 7;
unsigned short v163 = 1;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v166;
signed char v167;
signed short v168;
v166 = 2U - 6U;
v167 = v162 - v162;
v168 = v17 (v166, v167);
history[history_index++] = (int)v168;
}
break;
case 15: 
return 0;
default: abort ();
}
}
}
}
