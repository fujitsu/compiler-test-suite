#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed int);
extern unsigned short (*v2) (unsigned short, signed int);
extern signed int v3 (unsigned short, unsigned short, signed int, unsigned char);
extern signed int (*v4) (unsigned short, unsigned short, signed int, unsigned char);
extern signed int v5 (unsigned short, unsigned char, unsigned char, signed char);
extern signed int (*v6) (unsigned short, unsigned char, unsigned char, signed char);
signed short v7 (unsigned char, unsigned short, signed int, signed char);
signed short (*v8) (unsigned char, unsigned short, signed int, signed char) = v7;
extern unsigned char v9 (signed short, unsigned int, signed char, signed char);
extern unsigned char (*v10) (signed short, unsigned int, signed char, signed char);
extern void v11 (unsigned char, signed short, unsigned short, signed int);
extern void (*v12) (unsigned char, signed short, unsigned short, signed int);
extern signed int v13 (unsigned short, signed short, signed short, unsigned char);
extern signed int (*v14) (unsigned short, signed short, signed short, unsigned char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
unsigned short v19 (signed short, signed short);
unsigned short (*v20) (signed short, signed short) = v19;
extern signed int v21 (unsigned char, unsigned short, signed int, signed char);
extern signed int (*v22) (unsigned char, unsigned short, signed int, signed char);
unsigned int v23 (unsigned char);
unsigned int (*v24) (unsigned char) = v23;
signed short v25 (signed short);
signed short (*v26) (signed short) = v25;
extern void v27 (signed int, unsigned short);
extern void (*v28) (signed int, unsigned short);
signed int v29 (unsigned int, unsigned int);
signed int (*v30) (unsigned int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v122 = 3;
unsigned short v121 = 6;
signed short v120 = -1;

signed int v29 (unsigned int v123, unsigned int v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned int v127 = 1U;
signed int v126 = -4;
signed int v125 = -2;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v128;
v128 = v15 ();
history[history_index++] = (int)v128;
}
break;
case 7: 
return v126;
default: abort ();
}
}
}
}

signed short v25 (signed short v129)
{
history[history_index++] = (int)v129;
{
for (;;) {
signed int v132 = 0;
signed char v131 = -3;
signed short v130 = 3;
trace++;
switch (trace)
{
case 2: 
return 3;
case 11: 
return -1;
default: abort ();
}
}
}
}

unsigned int v23 (unsigned char v133)
{
history[history_index++] = (int)v133;
{
for (;;) {
unsigned int v136 = 3U;
signed char v135 = -2;
unsigned char v134 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (signed short v137, signed short v138)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed int v141 = 1;
unsigned short v140 = 2;
unsigned short v139 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned char v142, unsigned short v143, signed int v144, signed char v145)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
unsigned short v148 = 5;
signed char v147 = -2;
unsigned char v146 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
