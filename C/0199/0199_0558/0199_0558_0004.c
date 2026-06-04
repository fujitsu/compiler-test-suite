#include <stdlib.h>
extern unsigned char v1 (unsigned short, unsigned char, unsigned char);
extern unsigned char (*v2) (unsigned short, unsigned char, unsigned char);
extern unsigned int v3 (signed int, unsigned int, signed short, unsigned char);
extern unsigned int (*v4) (signed int, unsigned int, signed short, unsigned char);
extern void v5 (void);
extern void (*v6) (void);
extern unsigned char v9 (unsigned short, unsigned short, signed short);
extern unsigned char (*v10) (unsigned short, unsigned short, signed short);
extern signed short v11 (unsigned short);
extern signed short (*v12) (unsigned short);
extern unsigned char v13 (signed char, unsigned char, signed short);
extern unsigned char (*v14) (signed char, unsigned char, signed short);
extern signed short v15 (signed short, unsigned short);
extern signed short (*v16) (signed short, unsigned short);
extern unsigned short v17 (unsigned int, unsigned int, signed int, signed char);
extern unsigned short (*v18) (unsigned int, unsigned int, signed int, signed char);
unsigned int v19 (signed int, unsigned int, signed char);
unsigned int (*v20) (signed int, unsigned int, signed char) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (signed short, unsigned short, signed short, unsigned int);
extern void (*v24) (signed short, unsigned short, signed short, unsigned int);
extern unsigned short v25 (signed int, signed char, signed char);
extern unsigned short (*v26) (signed int, signed char, signed char);
unsigned char v27 (unsigned int, unsigned short, signed int, signed short);
unsigned char (*v28) (unsigned int, unsigned short, signed int, signed short) = v27;
signed char v29 (signed int, signed int);
signed char (*v30) (signed int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v133 = 1;
signed short v132 = -3;
signed char v131 = -1;

signed char v29 (signed int v134, signed int v135)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed char v138 = -3;
unsigned int v137 = 3U;
signed int v136 = -2;
trace++;
switch (trace)
{
case 9: 
{
unsigned short v139;
signed short v140;
v139 = 4 + 2;
v140 = v11 (v139);
history[history_index++] = (int)v140;
}
break;
case 11: 
return v138;
case 13: 
return -2;
default: abort ();
}
}
}
}

unsigned char v27 (unsigned int v141, unsigned short v142, signed int v143, signed short v144)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
unsigned int v147 = 6U;
signed int v146 = -2;
signed char v145 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (signed int v148, unsigned int v149, signed char v150)
{
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
signed short v153 = 2;
unsigned short v152 = 4;
unsigned short v151 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
