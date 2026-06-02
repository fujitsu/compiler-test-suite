#include <stdlib.h>
extern unsigned int v1 (unsigned short);
extern unsigned int (*v2) (unsigned short);
extern unsigned int v3 (unsigned int, signed int, signed char, signed int);
extern unsigned int (*v4) (unsigned int, signed int, signed char, signed int);
signed int v5 (signed int, signed short);
signed int (*v6) (signed int, signed short) = v5;
unsigned int v7 (signed short, signed short, unsigned int, unsigned int);
unsigned int (*v8) (signed short, signed short, unsigned int, unsigned int) = v7;
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
unsigned char v11 (signed char, unsigned char, unsigned char);
unsigned char (*v12) (signed char, unsigned char, unsigned char) = v11;
extern signed char v13 (signed char, signed char);
extern signed char (*v14) (signed char, signed char);
extern unsigned char v15 (unsigned char, unsigned char);
extern unsigned char (*v16) (unsigned char, unsigned char);
signed char v17 (signed char, signed char, unsigned char, signed int);
signed char (*v18) (signed char, signed char, unsigned char, signed int) = v17;
extern unsigned int v19 (signed int);
extern unsigned int (*v20) (signed int);
extern void v21 (signed int, signed short, signed int);
extern void (*v22) (signed int, signed short, signed int);
extern unsigned short v23 (unsigned int, signed char, unsigned int);
extern unsigned short (*v24) (unsigned int, signed char, unsigned int);
extern unsigned short v25 (signed int);
extern unsigned short (*v26) (signed int);
unsigned char v27 (unsigned char);
unsigned char (*v28) (unsigned char) = v27;
extern unsigned short v29 (unsigned short);
extern unsigned short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v116 = 0;
signed short v115 = -3;
unsigned char v114 = 1;

unsigned char v27 (unsigned char v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
signed short v120 = -3;
unsigned short v119 = 3;
signed int v118 = -4;
trace++;
switch (trace)
{
case 2: 
return v117;
case 4: 
return v117;
case 8: 
return 1;
default: abort ();
}
}
}
}

signed char v17 (signed char v121, signed char v122, unsigned char v123, signed int v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed int v127 = 2;
signed short v126 = -4;
unsigned short v125 = 6;
trace++;
switch (trace)
{
case 10: 
{
unsigned int v128;
signed char v129;
unsigned int v130;
unsigned short v131;
v128 = 3U + 7U;
v129 = v121 - -4;
v130 = 4U + 6U;
v131 = v23 (v128, v129, v130);
history[history_index++] = (int)v131;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}

unsigned char v11 (signed char v132, unsigned char v133, unsigned char v134)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed short v137 = -1;
signed short v136 = 3;
unsigned int v135 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (signed short v138, signed short v139, unsigned int v140, unsigned int v141)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned char v144 = 5;
signed short v143 = -2;
unsigned char v142 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed int v145, signed short v146)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
unsigned char v149 = 6;
unsigned short v148 = 3;
unsigned short v147 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
