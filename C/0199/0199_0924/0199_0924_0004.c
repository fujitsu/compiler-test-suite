#include <stdlib.h>
extern unsigned int v1 (signed short, signed short);
extern unsigned int (*v2) (signed short, signed short);
extern unsigned short v3 (unsigned short);
extern unsigned short (*v4) (unsigned short);
extern signed int v5 (unsigned char, unsigned int);
extern signed int (*v6) (unsigned char, unsigned int);
extern void v7 (unsigned int, signed char);
extern void (*v8) (unsigned int, signed char);
extern signed int v9 (unsigned int, unsigned short, signed int);
extern signed int (*v10) (unsigned int, unsigned short, signed int);
unsigned short v11 (signed char, signed char);
unsigned short (*v12) (signed char, signed char) = v11;
signed char v13 (unsigned int, signed int, signed short);
signed char (*v14) (unsigned int, signed int, signed short) = v13;
signed short v15 (void);
signed short (*v16) (void) = v15;
extern void v19 (signed char, signed char, unsigned int, signed char);
extern void (*v20) (signed char, signed char, unsigned int, signed char);
extern signed char v21 (unsigned short, unsigned char, signed int, unsigned char);
extern signed char (*v22) (unsigned short, unsigned char, signed int, unsigned char);
signed char v23 (unsigned int, unsigned char, signed short, unsigned char);
signed char (*v24) (unsigned int, unsigned char, signed short, unsigned char) = v23;
extern unsigned short v25 (unsigned char, unsigned char, signed char);
extern unsigned short (*v26) (unsigned char, unsigned char, signed char);
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
signed int v29 (signed char);
signed int (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v117 = -2;
unsigned int v116 = 3U;
unsigned short v115 = 7;

signed int v29 (signed char v118)
{
history[history_index++] = (int)v118;
{
for (;;) {
signed short v121 = 1;
signed short v120 = 1;
unsigned int v119 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (unsigned int v122, unsigned char v123, signed short v124, unsigned char v125)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned int v128 = 4U;
signed short v127 = -3;
unsigned int v126 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (void)
{
{
for (;;) {
unsigned int v131 = 4U;
signed char v130 = 2;
unsigned int v129 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned int v132, signed int v133, signed short v134)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed char v137 = -1;
unsigned int v136 = 5U;
signed int v135 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (signed char v138, signed char v139)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned char v142 = 6;
signed int v141 = -4;
signed char v140 = 0;
trace++;
switch (trace)
{
case 10: 
{
signed char v143;
signed char v144;
unsigned int v145;
signed char v146;
v143 = v140 + v138;
v144 = v138 + 2;
v145 = 7U - 5U;
v146 = v140 + v138;
v19 (v143, v144, v145, v146);
}
break;
case 12: 
return 4;
default: abort ();
}
}
}
}
