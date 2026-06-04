#include <stdlib.h>
signed char v1 (signed short, signed char, unsigned short, signed short);
signed char (*v2) (signed short, signed char, unsigned short, signed short) = v1;
extern signed int v3 (signed int, signed short);
extern signed int (*v4) (signed int, signed short);
extern signed short v5 (unsigned int, signed int, signed char, unsigned int);
extern signed short (*v6) (unsigned int, signed int, signed char, unsigned int);
extern unsigned char v7 (unsigned char, signed int, signed char);
extern unsigned char (*v8) (unsigned char, signed int, signed char);
extern unsigned int v9 (signed int, signed int);
extern unsigned int (*v10) (signed int, signed int);
extern unsigned int v11 (unsigned short, signed short);
extern unsigned int (*v12) (unsigned short, signed short);
signed char v13 (signed int, signed short, unsigned char);
signed char (*v14) (signed int, signed short, unsigned char) = v13;
extern signed int v15 (unsigned int, signed int, signed int);
extern signed int (*v16) (unsigned int, signed int, signed int);
extern signed short v17 (signed int, unsigned char, unsigned int, unsigned char);
extern signed short (*v18) (signed int, unsigned char, unsigned int, unsigned char);
void v19 (signed char, signed char, unsigned int, signed int);
void (*v20) (signed char, signed char, unsigned int, signed int) = v19;
extern signed char v21 (signed int, signed int, signed int, signed short);
extern signed char (*v22) (signed int, signed int, signed int, signed short);
void v23 (unsigned short, signed short, unsigned short);
void (*v24) (unsigned short, signed short, unsigned short) = v23;
extern unsigned char v25 (signed int, signed short, signed char, signed char);
extern unsigned char (*v26) (signed int, signed short, signed char, signed char);
unsigned short v27 (signed short, signed int, signed char);
unsigned short (*v28) (signed short, signed int, signed char) = v27;
extern void v29 (signed short, signed int, unsigned char);
extern void (*v30) (signed short, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v132 = 0;
signed short v131 = 3;
signed int v130 = -4;

unsigned short v27 (signed short v133, signed int v134, signed char v135)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed int v138 = 1;
unsigned char v137 = 2;
signed int v136 = 3;
trace++;
switch (trace)
{
case 2: 
return 2;
case 6: 
return 2;
default: abort ();
}
}
}
}

void v23 (unsigned short v139, signed short v140, unsigned short v141)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned int v144 = 1U;
unsigned short v143 = 6;
unsigned char v142 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (signed char v145, signed char v146, unsigned int v147, signed int v148)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
unsigned short v151 = 2;
signed char v150 = -2;
signed int v149 = 0;
trace++;
switch (trace)
{
case 9: 
{
signed int v152;
signed short v153;
signed char v154;
signed char v155;
unsigned char v156;
v152 = v148 - v148;
v153 = 1 + 2;
v154 = v146 - v150;
v155 = v150 + 1;
v156 = v25 (v152, v153, v154, v155);
history[history_index++] = (int)v156;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

signed char v13 (signed int v157, signed short v158, unsigned char v159)
{
history[history_index++] = (int)v157;
history[history_index++] = (int)v158;
history[history_index++] = (int)v159;
{
for (;;) {
unsigned int v162 = 5U;
signed int v161 = 1;
signed char v160 = 2;
trace++;
switch (trace)
{
case 4: 
return 2;
default: abort ();
}
}
}
}

signed char v1 (signed short v163, signed char v164, unsigned short v165, signed short v166)
{
history[history_index++] = (int)v163;
history[history_index++] = (int)v164;
history[history_index++] = (int)v165;
history[history_index++] = (int)v166;
{
for (;;) {
signed short v169 = -3;
signed char v168 = 2;
signed int v167 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v170;
signed int v171;
signed char v172;
unsigned char v173;
v170 = 1 - 3;
v171 = v167 + v167;
v172 = v164 - 3;
v173 = v7 (v170, v171, v172);
history[history_index++] = (int)v173;
}
break;
case 14: 
return v164;
default: abort ();
}
}
}
}
