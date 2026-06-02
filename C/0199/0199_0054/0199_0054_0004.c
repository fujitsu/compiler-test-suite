#include <stdlib.h>
extern void v1 (unsigned int, unsigned short);
extern void (*v2) (unsigned int, unsigned short);
extern signed char v3 (unsigned char, unsigned char, signed short, signed short);
extern signed char (*v4) (unsigned char, unsigned char, signed short, signed short);
extern unsigned short v7 (unsigned char, signed short, signed char);
extern unsigned short (*v8) (unsigned char, signed short, signed char);
extern unsigned char v11 (unsigned int, signed char, signed short);
extern unsigned char (*v12) (unsigned int, signed char, signed short);
extern unsigned int v13 (signed int, unsigned short);
extern unsigned int (*v14) (signed int, unsigned short);
extern signed int v15 (signed int, signed short, unsigned short, signed char);
extern signed int (*v16) (signed int, signed short, unsigned short, signed char);
extern unsigned int v17 (unsigned short, unsigned int);
extern unsigned int (*v18) (unsigned short, unsigned int);
signed short v21 (signed char, signed int, unsigned int);
signed short (*v22) (signed char, signed int, unsigned int) = v21;
unsigned char v23 (signed short, unsigned int, signed char, signed char);
unsigned char (*v24) (signed short, unsigned int, signed char, signed char) = v23;
signed int v29 (unsigned short, signed char, signed int);
signed int (*v30) (unsigned short, signed char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v135 = 2;
unsigned short v134 = 4;
unsigned int v133 = 1U;

signed int v29 (unsigned short v136, signed char v137, signed int v138)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned int v141 = 1U;
signed int v140 = -2;
unsigned short v139 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (signed short v142, unsigned int v143, signed char v144, signed char v145)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
unsigned int v148 = 7U;
signed short v147 = 1;
unsigned int v146 = 3U;
trace++;
switch (trace)
{
case 10: 
{
unsigned int v149;
unsigned short v150;
v149 = v148 + v146;
v150 = 7 - 1;
v1 (v149, v150);
}
break;
case 12: 
return 5;
default: abort ();
}
}
}
}

signed short v21 (signed char v151, signed int v152, unsigned int v153)
{
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
{
for (;;) {
signed int v156 = 0;
unsigned int v155 = 6U;
unsigned char v154 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
