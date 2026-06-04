#include <stdlib.h>
extern unsigned int v1 (unsigned char, unsigned char, signed short);
extern unsigned int (*v2) (unsigned char, unsigned char, signed short);
unsigned char v3 (signed char, signed char, unsigned short, unsigned char);
unsigned char (*v4) (signed char, signed char, unsigned short, unsigned char) = v3;
extern unsigned short v5 (signed short, signed int, signed char);
extern unsigned short (*v6) (signed short, signed int, signed char);
extern signed int v7 (unsigned int);
extern signed int (*v8) (unsigned int);
extern signed int v9 (unsigned short, unsigned int);
extern signed int (*v10) (unsigned short, unsigned int);
signed char v11 (signed int, unsigned short, signed short, unsigned char);
signed char (*v12) (signed int, unsigned short, signed short, unsigned char) = v11;
extern signed short v13 (signed int, unsigned int, signed char, unsigned char);
extern signed short (*v14) (signed int, unsigned int, signed char, unsigned char);
extern void v15 (signed char, unsigned short);
extern void (*v16) (signed char, unsigned short);
extern unsigned char v17 (unsigned char, signed int);
extern unsigned char (*v18) (unsigned char, signed int);
extern signed short v19 (unsigned char);
extern signed short (*v20) (unsigned char);
extern signed short v21 (signed short, signed short, unsigned short);
extern signed short (*v22) (signed short, signed short, unsigned short);
unsigned short v23 (signed char, signed int, signed short, signed short);
unsigned short (*v24) (signed char, signed int, signed short, signed short) = v23;
extern signed int v25 (unsigned int);
extern signed int (*v26) (unsigned int);
void v29 (unsigned short, unsigned int);
void (*v30) (unsigned short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v127 = 0;
unsigned short v126 = 4;
unsigned int v125 = 3U;

void v29 (unsigned short v128, unsigned int v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned short v132 = 3;
unsigned int v131 = 3U;
signed char v130 = 0;
trace++;
switch (trace)
{
case 6: 
return;
case 8: 
return;
default: abort ();
}
}
}
}

unsigned short v23 (signed char v133, signed int v134, signed short v135, signed short v136)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed char v139 = 1;
signed int v138 = 1;
unsigned char v137 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (signed int v140, unsigned short v141, signed short v142, unsigned char v143)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned char v146 = 6;
unsigned int v145 = 7U;
signed int v144 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed char v147, signed char v148, unsigned short v149, unsigned char v150)
{
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
unsigned short v153 = 3;
unsigned short v152 = 6;
unsigned char v151 = 5;
trace++;
switch (trace)
{
case 2: 
return 3;
default: abort ();
}
}
}
}
