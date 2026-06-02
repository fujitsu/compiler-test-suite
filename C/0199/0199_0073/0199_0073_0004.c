#include <stdlib.h>
extern signed int v1 (unsigned short, signed int, unsigned short);
extern signed int (*v2) (unsigned short, signed int, unsigned short);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern void v5 (signed short);
extern void (*v6) (signed short);
signed short v7 (unsigned short);
signed short (*v8) (unsigned short) = v7;
extern void v9 (unsigned char, signed short, signed int, signed short);
extern void (*v10) (unsigned char, signed short, signed int, signed short);
extern signed short v11 (signed short);
extern signed short (*v12) (signed short);
unsigned char v13 (unsigned short, unsigned char, unsigned int);
unsigned char (*v14) (unsigned short, unsigned char, unsigned int) = v13;
extern unsigned char v15 (signed short, signed short);
extern unsigned char (*v16) (signed short, signed short);
unsigned short v17 (signed char, unsigned char);
unsigned short (*v18) (signed char, unsigned char) = v17;
unsigned char v21 (unsigned char, unsigned char, signed char);
unsigned char (*v22) (unsigned char, unsigned char, signed char) = v21;
extern unsigned char v23 (signed char, unsigned char, signed int);
extern unsigned char (*v24) (signed char, unsigned char, signed int);
unsigned int v25 (unsigned int);
unsigned int (*v26) (unsigned int) = v25;
extern unsigned int v27 (unsigned char, unsigned char, signed char);
extern unsigned int (*v28) (unsigned char, unsigned char, signed char);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v110 = 3U;
signed char v109 = -2;
signed char v108 = -1;

unsigned int v25 (unsigned int v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
signed char v114 = -3;
unsigned int v113 = 5U;
signed char v112 = -4;
trace++;
switch (trace)
{
case 7: 
return 1U;
case 9: 
return 3U;
default: abort ();
}
}
}
}

unsigned char v21 (unsigned char v115, unsigned char v116, signed char v117)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed char v120 = -4;
unsigned int v119 = 5U;
signed char v118 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (signed char v121, unsigned char v122)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned short v125 = 0;
signed char v124 = 2;
signed int v123 = -1;
trace++;
switch (trace)
{
case 5: 
{
signed char v126;
unsigned char v127;
signed int v128;
unsigned char v129;
v126 = v121 - v124;
v127 = v122 + v122;
v128 = -1 - v123;
v129 = v23 (v126, v127, v128);
history[history_index++] = (int)v129;
}
break;
case 11: 
return v125;
default: abort ();
}
}
}
}

unsigned char v13 (unsigned short v130, unsigned char v131, unsigned int v132)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned char v135 = 0;
signed int v134 = 2;
unsigned char v133 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned short v136)
{
history[history_index++] = (int)v136;
{
for (;;) {
signed char v139 = -2;
unsigned char v138 = 6;
unsigned int v137 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
