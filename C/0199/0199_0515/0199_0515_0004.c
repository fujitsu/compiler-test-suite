#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
unsigned int v3 (signed int, signed short, unsigned int);
unsigned int (*v4) (signed int, signed short, unsigned int) = v3;
unsigned int v5 (unsigned short);
unsigned int (*v6) (unsigned short) = v5;
signed int v7 (unsigned short);
signed int (*v8) (unsigned short) = v7;
extern signed char v9 (signed char);
extern signed char (*v10) (signed char);
extern signed int v11 (unsigned char, unsigned char, signed char);
extern signed int (*v12) (unsigned char, unsigned char, signed char);
extern void v13 (signed short);
extern void (*v14) (signed short);
extern signed char v15 (unsigned short, unsigned int);
extern signed char (*v16) (unsigned short, unsigned int);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
extern unsigned short v19 (signed int, signed char, signed short, signed char);
extern unsigned short (*v20) (signed int, signed char, signed short, signed char);
extern unsigned short v21 (signed int, unsigned char, signed char, signed int);
extern unsigned short (*v22) (signed int, unsigned char, signed char, signed int);
unsigned int v23 (unsigned char, unsigned short);
unsigned int (*v24) (unsigned char, unsigned short) = v23;
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern unsigned int v27 (signed int);
extern unsigned int (*v28) (signed int);
static signed int v29 (unsigned char);
static signed int (*v30) (unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v102 = -1;
signed int v101 = 1;
unsigned short v100 = 0;

static signed int v29 (unsigned char v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
unsigned short v106 = 6;
signed short v105 = -4;
unsigned char v104 = 4;
trace++;
switch (trace)
{
case 4: 
return -1;
case 6: 
return 2;
default: abort ();
}
}
}
}

unsigned int v23 (unsigned char v107, unsigned short v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned char v111 = 7;
unsigned short v110 = 3;
signed char v109 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned short v112)
{
history[history_index++] = (int)v112;
{
for (;;) {
unsigned int v115 = 3U;
unsigned short v114 = 5;
signed char v113 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned short v116)
{
history[history_index++] = (int)v116;
{
for (;;) {
unsigned short v119 = 5;
unsigned int v118 = 0U;
unsigned char v117 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed int v120, signed short v121, unsigned int v122)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed int v125 = -1;
signed short v124 = -1;
unsigned int v123 = 5U;
trace++;
switch (trace)
{
case 1: 
{
signed int v126;
unsigned char v127;
signed char v128;
signed int v129;
unsigned short v130;
v126 = v125 + 2;
v127 = 4 + 4;
v128 = -4 + 3;
v129 = v120 + v125;
v130 = v21 (v126, v127, v128, v129);
history[history_index++] = (int)v130;
}
break;
case 3: 
{
unsigned char v131;
signed int v132;
v131 = 5 + 3;
v132 = v29 (v131);
history[history_index++] = (int)v132;
}
break;
case 5: 
{
unsigned char v133;
signed int v134;
v133 = 5 - 6;
v134 = v29 (v133);
history[history_index++] = (int)v134;
}
break;
case 7: 
{
signed int v135;
unsigned char v136;
signed char v137;
signed int v138;
unsigned short v139;
v135 = -2 + v120;
v136 = 1 - 4;
v137 = 0 - -4;
v138 = v125 - v125;
v139 = v21 (v135, v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 9: 
return v123;
default: abort ();
}
}
}
}
