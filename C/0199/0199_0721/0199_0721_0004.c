#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
extern signed int v3 (void);
extern signed int (*v4) (void);
signed short v5 (signed char, signed short, unsigned char, signed char);
signed short (*v6) (signed char, signed short, unsigned char, signed char) = v5;
extern unsigned short v7 (unsigned short, unsigned short, unsigned int, unsigned char);
extern unsigned short (*v8) (unsigned short, unsigned short, unsigned int, unsigned char);
extern unsigned int v9 (signed short, unsigned int, unsigned char, unsigned char);
extern unsigned int (*v10) (signed short, unsigned int, unsigned char, unsigned char);
extern signed int v11 (unsigned int, signed int);
extern signed int (*v12) (unsigned int, signed int);
extern unsigned short v13 (unsigned int, unsigned short, signed short, unsigned short);
extern unsigned short (*v14) (unsigned int, unsigned short, signed short, unsigned short);
signed int v17 (unsigned char, signed short);
signed int (*v18) (unsigned char, signed short) = v17;
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern signed int v25 (signed char, unsigned int, unsigned int, unsigned short);
extern signed int (*v26) (signed char, unsigned int, unsigned int, unsigned short);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
unsigned int v29 (unsigned short, unsigned short, signed int, unsigned char);
unsigned int (*v30) (unsigned short, unsigned short, signed int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v126 = 2;
unsigned char v125 = 1;
unsigned int v124 = 5U;

unsigned int v29 (unsigned short v127, unsigned short v128, signed int v129, unsigned char v130)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed int v133 = 1;
unsigned short v132 = 6;
signed short v131 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned char v134, signed short v135)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed char v138 = -4;
unsigned char v137 = 7;
unsigned int v136 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed char v139, signed short v140, unsigned char v141, signed char v142)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
signed int v145 = 0;
unsigned char v144 = 6;
unsigned short v143 = 4;
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
unsigned char v148 = 5;
signed char v147 = -1;
unsigned int v146 = 7U;
trace++;
switch (trace)
{
case 0: 
{
signed int v149;
v149 = v3 ();
history[history_index++] = (int)v149;
}
break;
case 4: 
{
unsigned short v150;
unsigned short v151;
unsigned int v152;
unsigned char v153;
unsigned short v154;
v150 = 0 + 7;
v151 = 1 + 0;
v152 = 3U + 0U;
v153 = 0 + v148;
v154 = v7 (v150, v151, v152, v153);
history[history_index++] = (int)v154;
}
break;
case 16: 
return 1;
default: abort ();
}
}
}
}
