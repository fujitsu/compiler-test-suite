#include <stdlib.h>
extern unsigned char v1 (signed char);
extern unsigned char (*v2) (signed char);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern signed int v5 (signed char, unsigned char, signed char);
extern signed int (*v6) (signed char, unsigned char, signed char);
extern unsigned char v7 (signed char, signed short);
extern unsigned char (*v8) (signed char, signed short);
extern signed short v9 (signed int, unsigned char, signed char);
extern signed short (*v10) (signed int, unsigned char, signed char);
signed short v11 (unsigned char, unsigned int, signed char, unsigned char);
signed short (*v12) (unsigned char, unsigned int, signed char, unsigned char) = v11;
unsigned char v13 (unsigned int);
unsigned char (*v14) (unsigned int) = v13;
extern void v15 (unsigned char, signed short, unsigned char, unsigned char);
extern void (*v16) (unsigned char, signed short, unsigned char, unsigned char);
extern signed char v17 (void);
extern signed char (*v18) (void);
signed short v19 (signed short, signed int, signed char, signed int);
signed short (*v20) (signed short, signed int, signed char, signed int) = v19;
unsigned short v21 (signed char);
unsigned short (*v22) (signed char) = v21;
extern signed short v23 (unsigned int, unsigned int, signed int, signed short);
extern signed short (*v24) (unsigned int, unsigned int, signed int, signed short);
extern unsigned char v27 (signed char, signed char);
extern unsigned char (*v28) (signed char, signed char);
extern unsigned short v29 (signed int, signed short);
extern unsigned short (*v30) (signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v130 = 2;
signed int v129 = 0;
signed char v128 = 3;

unsigned short v21 (signed char v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
signed char v134 = 3;
signed short v133 = -3;
unsigned char v132 = 1;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v135;
unsigned int v136;
signed int v137;
signed short v138;
signed short v139;
v135 = 0U - 1U;
v136 = 4U + 6U;
v137 = 3 + 2;
v138 = 2 - -3;
v139 = v23 (v135, v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}

signed short v19 (signed short v140, signed int v141, signed char v142, signed int v143)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned char v146 = 3;
signed int v145 = 0;
unsigned char v144 = 1;
trace++;
switch (trace)
{
case 1: 
return v140;
default: abort ();
}
}
}
}

unsigned char v13 (unsigned int v147)
{
history[history_index++] = (int)v147;
{
for (;;) {
signed char v150 = -2;
unsigned char v149 = 5;
signed int v148 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned char v151, unsigned int v152, signed char v153, unsigned char v154)
{
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
history[history_index++] = (int)v154;
{
for (;;) {
unsigned char v157 = 5;
unsigned int v156 = 6U;
unsigned short v155 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
