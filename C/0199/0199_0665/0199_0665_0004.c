#include <stdlib.h>
extern unsigned int v1 (signed char);
extern unsigned int (*v2) (signed char);
signed char v3 (unsigned int, signed int, signed int);
signed char (*v4) (unsigned int, signed int, signed int) = v3;
signed short v5 (signed int);
signed short (*v6) (signed int) = v5;
unsigned short v7 (void);
unsigned short (*v8) (void) = v7;
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern unsigned short v11 (unsigned char);
extern unsigned short (*v12) (unsigned char);
extern unsigned short v13 (signed short, signed char, signed short, signed char);
extern unsigned short (*v14) (signed short, signed char, signed short, signed char);
extern unsigned char v17 (signed short);
extern unsigned char (*v18) (signed short);
static unsigned int v19 (signed char, unsigned short);
static unsigned int (*v20) (signed char, unsigned short) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned int v23 (unsigned int);
extern unsigned int (*v24) (unsigned int);
signed short v25 (unsigned short, signed int, signed short);
signed short (*v26) (unsigned short, signed int, signed short) = v25;
extern signed int v27 (signed int, signed char, unsigned short, signed char);
extern signed int (*v28) (signed int, signed char, unsigned short, signed char);
extern unsigned int v29 (signed int, signed char);
extern unsigned int (*v30) (signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v110 = -2;
unsigned char v109 = 2;
signed int v108 = -2;

signed short v25 (unsigned short v111, signed int v112, signed short v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed int v116 = -4;
unsigned int v115 = 0U;
unsigned short v114 = 6;
trace++;
switch (trace)
{
case 3: 
{
signed char v117;
unsigned short v118;
unsigned int v119;
v117 = -4 + 3;
v118 = v111 - v111;
v119 = v19 (v117, v118);
history[history_index++] = (int)v119;
}
break;
case 13: 
return 2;
default: abort ();
}
}
}
}

static unsigned int v19 (signed char v120, unsigned short v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed short v124 = -1;
signed short v123 = -1;
signed short v122 = -1;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v125;
unsigned int v126;
v125 = 5U - 0U;
v126 = v23 (v125);
history[history_index++] = (int)v126;
}
break;
case 6: 
{
unsigned short v127;
v127 = v21 ();
history[history_index++] = (int)v127;
}
break;
case 12: 
return 5U;
default: abort ();
}
}
}
}

unsigned short v7 (void)
{
{
for (;;) {
signed short v130 = 0;
signed int v129 = 1;
signed int v128 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed int v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
unsigned int v134 = 1U;
signed char v133 = 3;
signed int v132 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned int v135, signed int v136, signed int v137)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed short v140 = -3;
unsigned short v139 = 4;
signed short v138 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
