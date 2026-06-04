#include <stdlib.h>
unsigned short v1 (signed int, signed char);
unsigned short (*v2) (signed int, signed char) = v1;
extern void v3 (void);
extern void (*v4) (void);
extern signed int v5 (unsigned char, unsigned int, unsigned char);
extern signed int (*v6) (unsigned char, unsigned int, unsigned char);
void v7 (unsigned short, signed char, signed int);
void (*v8) (unsigned short, signed char, signed int) = v7;
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
extern signed char v11 (signed short, unsigned char, unsigned short);
extern signed char (*v12) (signed short, unsigned char, unsigned short);
extern signed char v13 (signed char, unsigned short);
extern signed char (*v14) (signed char, unsigned short);
extern unsigned char v15 (signed short, signed int, signed int);
extern unsigned char (*v16) (signed short, signed int, signed int);
extern unsigned short v19 (signed int, signed short, unsigned char, signed int);
extern unsigned short (*v20) (signed int, signed short, unsigned char, signed int);
extern signed short v21 (signed short, signed char, signed short);
extern signed short (*v22) (signed short, signed char, signed short);
signed int v23 (signed short, unsigned short, signed char);
signed int (*v24) (signed short, unsigned short, signed char) = v23;
extern signed char v25 (signed char, signed short, signed int, signed int);
extern signed char (*v26) (signed char, signed short, signed int, signed int);
extern unsigned short v27 (unsigned char, unsigned short, signed int, unsigned char);
extern unsigned short (*v28) (unsigned char, unsigned short, signed int, unsigned char);
void v29 (signed short, unsigned short, unsigned char, unsigned int);
void (*v30) (signed short, unsigned short, unsigned char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v129 = 0;
signed char v128 = 2;
signed short v127 = 2;

void v29 (signed short v130, unsigned short v131, unsigned char v132, unsigned int v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed char v136 = 1;
unsigned short v135 = 1;
unsigned short v134 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (signed short v137, unsigned short v138, signed char v139)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned char v142 = 0;
signed short v141 = 1;
unsigned short v140 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (unsigned short v143, signed char v144, signed int v145)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
signed char v148 = -3;
unsigned char v147 = 2;
signed int v146 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed int v149, signed char v150)
{
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
unsigned char v153 = 6;
unsigned char v152 = 7;
signed char v151 = -2;
trace++;
switch (trace)
{
case 0: 
{
signed char v154;
unsigned short v155;
signed char v156;
v154 = v151 - v151;
v155 = 7 + 1;
v156 = v13 (v154, v155);
history[history_index++] = (int)v156;
}
break;
case 2: 
{
signed int v157;
signed short v158;
unsigned char v159;
signed int v160;
unsigned short v161;
v157 = v149 + v149;
v158 = 1 + -2;
v159 = 1 - v153;
v160 = v149 - v149;
v161 = v19 (v157, v158, v159, v160);
history[history_index++] = (int)v161;
}
break;
case 4: 
{
v3 ();
}
break;
case 16: 
return 6;
default: abort ();
}
}
}
}
