#include <stdlib.h>
signed int v1 (signed short, unsigned char, signed short, unsigned short);
signed int (*v2) (signed short, unsigned char, signed short, unsigned short) = v1;
extern signed char v3 (unsigned short, unsigned short, signed short);
extern signed char (*v4) (unsigned short, unsigned short, signed short);
extern signed int v5 (void);
extern signed int (*v6) (void);
signed short v7 (signed int, signed char, unsigned short);
signed short (*v8) (signed int, signed char, unsigned short) = v7;
extern signed int v9 (signed int, unsigned int, unsigned int);
extern signed int (*v10) (signed int, unsigned int, unsigned int);
extern unsigned char v11 (unsigned char);
extern unsigned char (*v12) (unsigned char);
extern signed short v13 (signed char, signed short, signed char);
extern signed short (*v14) (signed char, signed short, signed char);
extern signed short v15 (signed int, signed int, signed char);
extern signed short (*v16) (signed int, signed int, signed char);
extern void v17 (unsigned short, unsigned short, signed int, signed char);
extern void (*v18) (unsigned short, unsigned short, signed int, signed char);
extern unsigned char v19 (signed int, signed int, unsigned char);
extern unsigned char (*v20) (signed int, signed int, unsigned char);
extern unsigned char v21 (signed int, unsigned int, signed char, unsigned int);
extern unsigned char (*v22) (signed int, unsigned int, signed char, unsigned int);
unsigned char v23 (signed int, unsigned short, signed char, signed char);
unsigned char (*v24) (signed int, unsigned short, signed char, signed char) = v23;
void v25 (unsigned short, signed short, signed short, signed char);
void (*v26) (unsigned short, signed short, signed short, signed char) = v25;
extern unsigned int v27 (signed char, signed char, signed short, signed char);
extern unsigned int (*v28) (signed char, signed char, signed short, signed char);
extern unsigned int v29 (signed char, signed short, signed char);
extern unsigned int (*v30) (signed char, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v133 = 2;
unsigned char v132 = 2;
signed char v131 = -3;

void v25 (unsigned short v134, signed short v135, signed short v136, signed char v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed char v140 = -3;
signed int v139 = 1;
signed short v138 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (signed int v141, unsigned short v142, signed char v143, signed char v144)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
unsigned short v147 = 2;
signed char v146 = -2;
unsigned short v145 = 3;
trace++;
switch (trace)
{
case 2: 
return 6;
default: abort ();
}
}
}
}

signed short v7 (signed int v148, signed char v149, unsigned short v150)
{
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
unsigned short v153 = 3;
signed char v152 = 0;
signed short v151 = -3;
trace++;
switch (trace)
{
case 6: 
{
unsigned char v154;
unsigned char v155;
v154 = 6 - 6;
v155 = v11 (v154);
history[history_index++] = (int)v155;
}
break;
case 12: 
return v151;
default: abort ();
}
}
}
}

signed int v1 (signed short v156, unsigned char v157, signed short v158, unsigned short v159)
{
history[history_index++] = (int)v156;
history[history_index++] = (int)v157;
history[history_index++] = (int)v158;
history[history_index++] = (int)v159;
{
for (;;) {
signed short v162 = 2;
signed char v161 = 0;
unsigned short v160 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v163;
unsigned short v164;
signed int v165;
signed char v166;
v163 = 1 + v159;
v164 = 5 + 5;
v165 = 3 + -2;
v166 = -4 + v161;
v17 (v163, v164, v165, v166);
}
break;
case 4: 
{
signed int v167;
v167 = v5 ();
history[history_index++] = (int)v167;
}
break;
case 14: 
return -4;
default: abort ();
}
}
}
}
