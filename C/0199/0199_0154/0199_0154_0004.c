#include <stdlib.h>
extern signed int v1 (unsigned short, unsigned short, unsigned short);
extern signed int (*v2) (unsigned short, unsigned short, unsigned short);
extern unsigned short v3 (unsigned short, signed short);
extern unsigned short (*v4) (unsigned short, signed short);
unsigned int v5 (unsigned char);
unsigned int (*v6) (unsigned char) = v5;
extern unsigned short v7 (signed int, signed char);
extern unsigned short (*v8) (signed int, signed char);
extern signed int v9 (unsigned char, signed short, unsigned char, signed int);
extern signed int (*v10) (unsigned char, signed short, unsigned char, signed int);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
signed char v13 (signed char, signed short, signed short, signed short);
signed char (*v14) (signed char, signed short, signed short, signed short) = v13;
signed short v15 (unsigned char, unsigned char);
signed short (*v16) (unsigned char, unsigned char) = v15;
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
unsigned short v19 (unsigned int, unsigned int, unsigned char);
unsigned short (*v20) (unsigned int, unsigned int, unsigned char) = v19;
extern void v21 (signed int, signed short);
extern void (*v22) (signed int, signed short);
unsigned short v23 (signed int);
unsigned short (*v24) (signed int) = v23;
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
signed short v27 (unsigned int, signed int, unsigned int, signed short);
signed short (*v28) (unsigned int, signed int, unsigned int, signed short) = v27;
extern unsigned int v29 (signed char);
extern unsigned int (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v113 = 3;
signed short v112 = 2;
unsigned char v111 = 4;

signed short v27 (unsigned int v114, signed int v115, unsigned int v116, signed short v117)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned short v120 = 6;
signed short v119 = 0;
signed short v118 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (signed int v121)
{
history[history_index++] = (int)v121;
{
for (;;) {
signed int v124 = -3;
signed int v123 = -4;
signed char v122 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (unsigned int v125, unsigned int v126, unsigned char v127)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned char v130 = 0;
signed int v129 = 3;
signed int v128 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned char v131, unsigned char v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned short v135 = 1;
signed char v134 = 1;
signed int v133 = -1;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v136;
v136 = v17 ();
history[history_index++] = (int)v136;
}
break;
case 9: 
{
unsigned char v137;
v137 = v17 ();
history[history_index++] = (int)v137;
}
break;
case 11: 
return -2;
default: abort ();
}
}
}
}

signed char v13 (signed char v138, signed short v139, signed short v140, signed short v141)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned int v144 = 2U;
signed short v143 = 1;
unsigned int v142 = 7U;
trace++;
switch (trace)
{
case 2: 
{
signed int v145;
signed short v146;
v145 = 1 + -3;
v146 = v143 - v143;
v21 (v145, v146);
}
break;
case 16: 
return v138;
default: abort ();
}
}
}
}

unsigned int v5 (unsigned char v147)
{
history[history_index++] = (int)v147;
{
for (;;) {
signed char v150 = -1;
unsigned int v149 = 4U;
unsigned short v148 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
