#include <stdlib.h>
unsigned short v1 (signed char, unsigned short, signed short, unsigned short);
unsigned short (*v2) (signed char, unsigned short, signed short, unsigned short) = v1;
unsigned int v3 (unsigned short, signed int, unsigned int, signed char);
unsigned int (*v4) (unsigned short, signed int, unsigned int, signed char) = v3;
extern unsigned char v5 (signed char, signed int, unsigned short, unsigned char);
extern unsigned char (*v6) (signed char, signed int, unsigned short, unsigned char);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed short v9 (unsigned int, unsigned short);
extern signed short (*v10) (unsigned int, unsigned short);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
extern unsigned char v15 (signed char);
extern unsigned char (*v16) (signed char);
extern unsigned char v17 (unsigned int, signed short);
extern unsigned char (*v18) (unsigned int, signed short);
signed short v19 (signed short, signed char);
signed short (*v20) (signed short, signed char) = v19;
extern signed char v21 (void);
extern signed char (*v22) (void);
extern void v23 (void);
extern void (*v24) (void);
extern signed int v25 (void);
extern signed int (*v26) (void);
signed short v27 (unsigned int, unsigned char, unsigned char, signed char);
signed short (*v28) (unsigned int, unsigned char, unsigned char, signed char) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed short v114 = 1;
signed char v113 = -3;
signed int v112 = -3;

signed short v27 (unsigned int v115, unsigned char v116, unsigned char v117, signed char v118)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed char v121 = -4;
signed int v120 = 2;
unsigned short v119 = 5;
trace++;
switch (trace)
{
case 2: 
return 1;
default: abort ();
}
}
}
}

signed short v19 (signed short v122, signed char v123)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned char v126 = 1;
signed int v125 = 2;
unsigned char v124 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned short v127, signed int v128, unsigned int v129, signed char v130)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed int v133 = -3;
unsigned char v132 = 1;
unsigned char v131 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed char v134, unsigned short v135, signed short v136, unsigned short v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed short v140 = 2;
signed char v139 = 1;
signed short v138 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed char v141;
unsigned char v142;
v141 = v139 + v139;
v142 = v15 (v141);
history[history_index++] = (int)v142;
}
break;
case 12: 
return v137;
default: abort ();
}
}
}
}
