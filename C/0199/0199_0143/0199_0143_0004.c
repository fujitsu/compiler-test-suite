#include <stdlib.h>
unsigned int v1 (signed int, unsigned char, signed char);
unsigned int (*v2) (signed int, unsigned char, signed char) = v1;
signed int v3 (signed char);
signed int (*v4) (signed char) = v3;
extern signed char v5 (signed char, signed int);
extern signed char (*v6) (signed char, signed int);
extern void v7 (void);
extern void (*v8) (void);
extern void v9 (void);
extern void (*v10) (void);
extern signed char v11 (unsigned int, signed int);
extern signed char (*v12) (unsigned int, signed int);
extern signed short v13 (unsigned char, signed char, unsigned char, signed short);
extern signed short (*v14) (unsigned char, signed char, unsigned char, signed short);
signed char v15 (unsigned char, signed short);
signed char (*v16) (unsigned char, signed short) = v15;
extern unsigned char v17 (signed short);
extern unsigned char (*v18) (signed short);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern unsigned short v21 (unsigned char, unsigned int);
extern unsigned short (*v22) (unsigned char, unsigned int);
signed short v23 (signed short, unsigned char, unsigned short);
signed short (*v24) (signed short, unsigned char, unsigned short) = v23;
unsigned short v25 (unsigned int, unsigned int, unsigned int);
unsigned short (*v26) (unsigned int, unsigned int, unsigned int) = v25;
extern unsigned short v27 (signed char);
extern unsigned short (*v28) (signed char);
extern unsigned char v29 (signed char);
extern unsigned char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v112 = 3;
unsigned char v111 = 7;
unsigned short v110 = 4;

unsigned short v25 (unsigned int v113, unsigned int v114, unsigned int v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned int v118 = 7U;
unsigned short v117 = 4;
signed int v116 = 0;
trace++;
switch (trace)
{
case 9: 
{
v9 ();
}
break;
case 11: 
return 1;
case 13: 
return v117;
default: abort ();
}
}
}
}

signed short v23 (signed short v119, unsigned char v120, unsigned short v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed char v124 = -3;
signed short v123 = -2;
signed char v122 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (unsigned char v125, signed short v126)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned short v129 = 1;
signed int v128 = -1;
unsigned short v127 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed char v130)
{
history[history_index++] = (int)v130;
{
for (;;) {
unsigned char v133 = 6;
unsigned short v132 = 1;
signed char v131 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed int v134, unsigned char v135, signed char v136)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed short v139 = 0;
unsigned int v138 = 7U;
unsigned char v137 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v140;
signed int v141;
signed char v142;
v140 = v138 - v138;
v141 = v134 + v134;
v142 = v11 (v140, v141);
history[history_index++] = (int)v142;
}
break;
case 16: 
return 6U;
default: abort ();
}
}
}
}
