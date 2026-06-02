#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
extern signed int v3 (unsigned int, signed char, unsigned char, unsigned char);
extern signed int (*v4) (unsigned int, signed char, unsigned char, unsigned char);
extern unsigned short v5 (signed short, signed char, unsigned short, unsigned char);
extern unsigned short (*v6) (signed short, signed char, unsigned short, unsigned char);
extern unsigned short v7 (unsigned char, unsigned int, signed int, unsigned int);
extern unsigned short (*v8) (unsigned char, unsigned int, signed int, unsigned int);
extern unsigned int v9 (signed char, unsigned char, unsigned char);
extern unsigned int (*v10) (signed char, unsigned char, unsigned char);
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
void v13 (unsigned int);
void (*v14) (unsigned int) = v13;
extern signed short v15 (unsigned char, unsigned char, unsigned int, unsigned int);
extern signed short (*v16) (unsigned char, unsigned char, unsigned int, unsigned int);
extern signed int v17 (unsigned int);
extern signed int (*v18) (unsigned int);
unsigned char v19 (unsigned char, signed short, unsigned char);
unsigned char (*v20) (unsigned char, signed short, unsigned char) = v19;
extern unsigned short v21 (unsigned short, signed char, unsigned short, signed char);
extern unsigned short (*v22) (unsigned short, signed char, unsigned short, signed char);
unsigned int v23 (unsigned short, unsigned char, signed short, signed char);
unsigned int (*v24) (unsigned short, unsigned char, signed short, signed char) = v23;
extern unsigned int v25 (unsigned int, unsigned int);
extern unsigned int (*v26) (unsigned int, unsigned int);
extern unsigned int v27 (unsigned int);
extern unsigned int (*v28) (unsigned int);
extern signed char v29 (unsigned char, signed int, unsigned short, signed short);
extern signed char (*v30) (unsigned char, signed int, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v126 = 1U;
signed char v125 = -4;
unsigned char v124 = 4;

unsigned int v23 (unsigned short v127, unsigned char v128, signed short v129, signed char v130)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed char v133 = 0;
unsigned int v132 = 6U;
unsigned char v131 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (unsigned char v134, signed short v135, unsigned char v136)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
unsigned short v139 = 4;
signed short v138 = 3;
unsigned char v137 = 4;
trace++;
switch (trace)
{
case 7: 
return v134;
case 11: 
return v134;
default: abort ();
}
}
}
}

void v13 (unsigned int v140)
{
history[history_index++] = (int)v140;
{
for (;;) {
signed short v143 = 1;
unsigned short v142 = 6;
unsigned char v141 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (void)
{
{
for (;;) {
unsigned short v146 = 1;
signed int v145 = 0;
unsigned char v144 = 4;
trace++;
switch (trace)
{
case 0: 
return 4;
case 1: 
{
unsigned int v147;
unsigned int v148;
v147 = 1U + 5U;
v148 = v27 (v147);
history[history_index++] = (int)v148;
}
break;
case 3: 
{
unsigned char v149;
unsigned int v150;
signed int v151;
unsigned int v152;
unsigned short v153;
v149 = v144 + 4;
v150 = 3U + 1U;
v151 = v145 + -2;
v152 = 4U - 2U;
v153 = v7 (v149, v150, v151, v152);
history[history_index++] = (int)v153;
}
break;
case 5: 
{
unsigned int v154;
signed char v155;
unsigned char v156;
unsigned char v157;
signed int v158;
v154 = 7U - 7U;
v155 = -4 + 0;
v156 = v144 - v144;
v157 = 0 + 7;
v158 = v3 (v154, v155, v156, v157);
history[history_index++] = (int)v158;
}
break;
case 13: 
return 5;
default: abort ();
}
}
}
}
