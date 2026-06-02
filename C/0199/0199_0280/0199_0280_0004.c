#include <stdlib.h>
extern unsigned int v1 (signed int);
extern unsigned int (*v2) (signed int);
void v3 (unsigned char, signed int, signed char);
void (*v4) (unsigned char, signed int, signed char) = v3;
signed char v5 (signed int, signed short, unsigned int, signed int);
signed char (*v6) (signed int, signed short, unsigned int, signed int) = v5;
unsigned int v7 (unsigned char);
unsigned int (*v8) (unsigned char) = v7;
extern unsigned char v9 (signed short, unsigned char, signed char, unsigned short);
extern unsigned char (*v10) (signed short, unsigned char, signed char, unsigned short);
extern signed short v11 (signed char, signed int, signed int);
extern signed short (*v12) (signed char, signed int, signed int);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
unsigned int v17 (unsigned char, unsigned short, unsigned short, unsigned int);
unsigned int (*v18) (unsigned char, unsigned short, unsigned short, unsigned int) = v17;
extern unsigned int v19 (signed char, signed char, signed short, signed short);
extern unsigned int (*v20) (signed char, signed char, signed short, signed short);
extern signed char v21 (void);
extern signed char (*v22) (void);
signed short v23 (unsigned int);
signed short (*v24) (unsigned int) = v23;
extern void v25 (unsigned int, signed char);
extern void (*v26) (unsigned int, signed char);
extern signed short v27 (signed int, unsigned short, unsigned int, signed char);
extern signed short (*v28) (signed int, unsigned short, unsigned int, signed char);
signed short v29 (signed int, signed short, signed char);
signed short (*v30) (signed int, signed short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v114 = 3;
unsigned int v113 = 7U;
signed char v112 = 0;

signed short v29 (signed int v115, signed short v116, signed char v117)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed short v120 = -3;
signed short v119 = 2;
signed short v118 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (unsigned int v121)
{
history[history_index++] = (int)v121;
{
for (;;) {
signed short v124 = 0;
signed int v123 = -1;
unsigned int v122 = 4U;
trace++;
switch (trace)
{
case 7: 
return 0;
case 9: 
return -1;
default: abort ();
}
}
}
}

unsigned int v17 (unsigned char v125, unsigned short v126, unsigned short v127, unsigned int v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed char v131 = -4;
unsigned short v130 = 7;
signed char v129 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned char v132)
{
history[history_index++] = (int)v132;
{
for (;;) {
unsigned char v135 = 0;
signed int v134 = 1;
signed int v133 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed int v136, signed short v137, unsigned int v138, signed int v139)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned char v142 = 7;
unsigned short v141 = 1;
signed short v140 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed short v143;
v143 = v13 ();
history[history_index++] = (int)v143;
}
break;
case 3: 
{
signed short v144;
v144 = v13 ();
history[history_index++] = (int)v144;
}
break;
case 13: 
return -4;
default: abort ();
}
}
}
}

void v3 (unsigned char v145, signed int v146, signed char v147)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
signed short v150 = 2;
unsigned char v149 = 0;
signed int v148 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
