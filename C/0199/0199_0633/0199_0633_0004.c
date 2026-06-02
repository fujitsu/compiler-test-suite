#include <stdlib.h>
extern unsigned int v1 (unsigned char);
extern unsigned int (*v2) (unsigned char);
extern unsigned char v3 (signed char, unsigned char, signed char);
extern unsigned char (*v4) (signed char, unsigned char, signed char);
extern signed char v5 (signed char, signed int);
extern signed char (*v6) (signed char, signed int);
extern signed char v7 (signed short);
extern signed char (*v8) (signed short);
extern unsigned int v9 (signed int);
extern unsigned int (*v10) (signed int);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
signed short v13 (signed int, signed short, signed short, signed int);
signed short (*v14) (signed int, signed short, signed short, signed int) = v13;
signed int v15 (unsigned int, signed short, unsigned char, unsigned short);
signed int (*v16) (unsigned int, signed short, unsigned char, unsigned short) = v15;
extern signed char v17 (unsigned short, signed short, unsigned char, unsigned int);
extern signed char (*v18) (unsigned short, signed short, unsigned char, unsigned int);
extern unsigned int v19 (signed int, signed char);
extern unsigned int (*v20) (signed int, signed char);
extern void v21 (signed short, signed char);
extern void (*v22) (signed short, signed char);
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern unsigned int v25 (unsigned short, unsigned int, unsigned int);
extern unsigned int (*v26) (unsigned short, unsigned int, unsigned int);
signed char v27 (signed char, signed int, unsigned char, signed char);
signed char (*v28) (signed char, signed int, unsigned char, signed char) = v27;
extern signed short v29 (unsigned short);
extern signed short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v121 = 5;
unsigned int v120 = 3U;
unsigned int v119 = 6U;

signed char v27 (signed char v122, signed int v123, unsigned char v124, signed char v125)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed int v128 = -3;
signed short v127 = -4;
signed int v126 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (void)
{
{
for (;;) {
signed short v131 = -3;
unsigned short v130 = 5;
unsigned short v129 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (unsigned int v132, signed short v133, unsigned char v134, unsigned short v135)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned char v138 = 2;
unsigned char v137 = 2;
signed int v136 = 1;
trace++;
switch (trace)
{
case 11: 
return -2;
default: abort ();
}
}
}
}

signed short v13 (signed int v139, signed short v140, signed short v141, signed int v142)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
unsigned short v145 = 0;
unsigned short v144 = 1;
unsigned short v143 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
