#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
extern void v3 (unsigned int, signed short, signed char);
extern void (*v4) (unsigned int, signed short, signed char);
extern unsigned short v5 (unsigned int);
extern unsigned short (*v6) (unsigned int);
extern unsigned short v7 (signed char);
extern unsigned short (*v8) (signed char);
extern unsigned int v9 (signed short, unsigned short, signed short, signed int);
extern unsigned int (*v10) (signed short, unsigned short, signed short, signed int);
extern signed char v11 (signed int, signed short, unsigned char, unsigned int);
extern signed char (*v12) (signed int, signed short, unsigned char, unsigned int);
signed char v13 (signed int, unsigned short, signed short, unsigned int);
signed char (*v14) (signed int, unsigned short, signed short, unsigned int) = v13;
extern void v15 (signed char, unsigned char, signed short);
extern void (*v16) (signed char, unsigned char, signed short);
signed short v17 (unsigned short, signed char, signed int);
signed short (*v18) (unsigned short, signed char, signed int) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned int v21 (unsigned char, signed short);
extern unsigned int (*v22) (unsigned char, signed short);
extern unsigned short v23 (signed short, signed short, unsigned short, unsigned int);
extern unsigned short (*v24) (signed short, signed short, unsigned short, unsigned int);
extern unsigned short v27 (signed int, unsigned char, unsigned int);
extern unsigned short (*v28) (signed int, unsigned char, unsigned int);
void v29 (signed short, unsigned int, signed char);
void (*v30) (signed short, unsigned int, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v122 = -4;
unsigned int v121 = 7U;
signed int v120 = -2;

void v29 (signed short v123, unsigned int v124, signed char v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned int v128 = 6U;
unsigned char v127 = 1;
signed short v126 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (unsigned short v129, signed char v130, signed int v131)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned int v134 = 5U;
signed int v133 = 2;
signed short v132 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed int v135, unsigned short v136, signed short v137, unsigned int v138)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed char v141 = 0;
unsigned char v140 = 1;
signed short v139 = 1;
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
unsigned int v144 = 6U;
unsigned char v143 = 1;
unsigned short v142 = 5;
trace++;
switch (trace)
{
case 0: 
{
signed int v145;
signed short v146;
unsigned char v147;
unsigned int v148;
signed char v149;
v145 = 0 - -4;
v146 = 3 - -4;
v147 = 1 - 7;
v148 = v144 - v144;
v149 = v11 (v145, v146, v147, v148);
history[history_index++] = (int)v149;
}
break;
case 2: 
{
unsigned int v150;
unsigned short v151;
v150 = v144 - 3U;
v151 = v5 (v150);
history[history_index++] = (int)v151;
}
break;
case 10: 
{
unsigned int v152;
signed short v153;
signed char v154;
v152 = v144 + 1U;
v153 = -1 + 0;
v154 = 3 + 0;
v3 (v152, v153, v154);
}
break;
case 12: 
return v143;
default: abort ();
}
}
}
}
