#include <stdlib.h>
unsigned int v1 (unsigned char, unsigned short, signed char);
unsigned int (*v2) (unsigned char, unsigned short, signed char) = v1;
unsigned char v3 (signed int, unsigned short, unsigned char, unsigned int);
unsigned char (*v4) (signed int, unsigned short, unsigned char, unsigned int) = v3;
extern unsigned short v5 (signed int, signed char, signed int, signed int);
extern unsigned short (*v6) (signed int, signed char, signed int, signed int);
extern void v7 (void);
extern void (*v8) (void);
static signed char v9 (unsigned int, unsigned short);
static signed char (*v10) (unsigned int, unsigned short) = v9;
extern unsigned short v11 (signed short);
extern unsigned short (*v12) (signed short);
extern unsigned int v13 (signed char);
extern unsigned int (*v14) (signed char);
extern unsigned short v15 (signed char, unsigned int, signed int);
extern unsigned short (*v16) (signed char, unsigned int, signed int);
unsigned short v19 (unsigned short, signed int, unsigned short);
unsigned short (*v20) (unsigned short, signed int, unsigned short) = v19;
extern unsigned char v21 (signed short, signed int);
extern unsigned char (*v22) (signed short, signed int);
extern void v25 (unsigned short, unsigned short, signed short, unsigned short);
extern void (*v26) (unsigned short, unsigned short, signed short, unsigned short);
extern unsigned int v27 (unsigned short, signed short, unsigned int, unsigned short);
extern unsigned int (*v28) (unsigned short, signed short, unsigned int, unsigned short);
unsigned int v29 (unsigned char, signed int, signed short, unsigned short);
unsigned int (*v30) (unsigned char, signed int, signed short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v104 = 7U;
signed char v103 = 2;
unsigned char v102 = 5;

unsigned int v29 (unsigned char v105, signed int v106, signed short v107, unsigned short v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned int v111 = 3U;
signed short v110 = -2;
unsigned short v109 = 0;
trace++;
switch (trace)
{
case 10: 
return v111;
default: abort ();
}
}
}
}

unsigned short v19 (unsigned short v112, signed int v113, unsigned short v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned char v117 = 3;
unsigned int v116 = 3U;
signed int v115 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v9 (unsigned int v118, unsigned short v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned short v122 = 1;
signed int v121 = -2;
signed char v120 = 3;
trace++;
switch (trace)
{
case 3: 
{
signed char v123;
unsigned int v124;
v123 = v120 - v120;
v124 = v13 (v123);
history[history_index++] = (int)v124;
}
break;
case 5: 
{
unsigned short v125;
signed short v126;
unsigned int v127;
unsigned short v128;
unsigned int v129;
v125 = v122 + 7;
v126 = 1 + -2;
v127 = v118 - v118;
v128 = v119 + v122;
v129 = v27 (v125, v126, v127, v128);
history[history_index++] = (int)v129;
}
break;
case 13: 
return 2;
default: abort ();
}
}
}
}

unsigned char v3 (signed int v130, unsigned short v131, unsigned char v132, unsigned int v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed short v136 = 3;
signed char v135 = 2;
signed short v134 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned char v137, unsigned short v138, signed char v139)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
signed int v142 = -4;
signed int v141 = 3;
signed short v140 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed short v143;
signed int v144;
unsigned char v145;
v143 = v140 + 0;
v144 = -3 + -3;
v145 = v21 (v143, v144);
history[history_index++] = (int)v145;
}
break;
case 2: 
{
unsigned int v146;
unsigned short v147;
signed char v148;
v146 = 7U + 4U;
v147 = 4 + v138;
v148 = v9 (v146, v147);
history[history_index++] = (int)v148;
}
break;
case 14: 
return 4U;
default: abort ();
}
}
}
}
