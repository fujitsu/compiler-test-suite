#include <stdlib.h>
extern unsigned short v1 (signed char, signed int, signed char);
extern unsigned short (*v2) (signed char, signed int, signed char);
signed int v3 (signed int, signed char);
signed int (*v4) (signed int, signed char) = v3;
extern unsigned short v5 (signed char, signed char, signed char);
extern unsigned short (*v6) (signed char, signed char, signed char);
extern unsigned char v7 (unsigned int, unsigned short, signed int);
extern unsigned char (*v8) (unsigned int, unsigned short, signed int);
extern unsigned short v9 (unsigned short, unsigned int, signed int);
extern unsigned short (*v10) (unsigned short, unsigned int, signed int);
unsigned int v11 (signed int, unsigned short);
unsigned int (*v12) (signed int, unsigned short) = v11;
signed char v13 (unsigned short, unsigned short, unsigned short, signed char);
signed char (*v14) (unsigned short, unsigned short, unsigned short, signed char) = v13;
unsigned char v15 (signed short, signed int, signed int);
unsigned char (*v16) (signed short, signed int, signed int) = v15;
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned char v19 (unsigned short, unsigned short, signed char);
extern unsigned char (*v20) (unsigned short, unsigned short, signed char);
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern signed int v23 (signed short);
extern signed int (*v24) (signed short);
extern signed char v25 (signed char, unsigned char);
extern signed char (*v26) (signed char, unsigned char);
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern signed short v29 (unsigned int, signed short, unsigned short, signed short);
extern signed short (*v30) (unsigned int, signed short, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v123 = 6U;
unsigned char v122 = 5;
unsigned char v121 = 4;

unsigned char v15 (signed short v124, signed int v125, signed int v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed short v129 = 2;
unsigned short v128 = 5;
unsigned char v127 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned short v130, unsigned short v131, unsigned short v132, signed char v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed int v136 = -4;
signed short v135 = 3;
signed char v134 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed int v137, unsigned short v138)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned int v141 = 2U;
signed int v140 = 1;
signed short v139 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed int v142, signed char v143)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
signed short v146 = 0;
signed short v145 = -3;
unsigned char v144 = 1;
trace++;
switch (trace)
{
case 3: 
{
signed char v147;
unsigned char v148;
signed char v149;
v147 = 0 + v143;
v148 = 7 - 2;
v149 = v25 (v147, v148);
history[history_index++] = (int)v149;
}
break;
case 15: 
return 3;
default: abort ();
}
}
}
}
