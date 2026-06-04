#include <stdlib.h>
extern signed short v1 (signed int, signed int, unsigned char, signed char);
extern signed short (*v2) (signed int, signed int, unsigned char, signed char);
extern unsigned char v3 (signed char, unsigned char);
extern unsigned char (*v4) (signed char, unsigned char);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed short v7 (signed char, signed short);
extern signed short (*v8) (signed char, signed short);
signed int v9 (void);
signed int (*v10) (void) = v9;
unsigned int v11 (unsigned int, signed int, signed char, signed char);
unsigned int (*v12) (unsigned int, signed int, signed char, signed char) = v11;
extern void v13 (unsigned int, signed short);
extern void (*v14) (unsigned int, signed short);
void v15 (unsigned char, signed int, signed char, unsigned short);
void (*v16) (unsigned char, signed int, signed char, unsigned short) = v15;
extern signed char v17 (signed char, signed char, unsigned int);
extern signed char (*v18) (signed char, signed char, unsigned int);
unsigned int v19 (unsigned short);
unsigned int (*v20) (unsigned short) = v19;
unsigned short v21 (unsigned int);
unsigned short (*v22) (unsigned int) = v21;
signed int v23 (unsigned int, signed short);
signed int (*v24) (unsigned int, signed short) = v23;
extern signed short v25 (unsigned char, unsigned short, signed int, unsigned int);
extern signed short (*v26) (unsigned char, unsigned short, signed int, unsigned int);
extern void v27 (unsigned char, signed short, signed char);
extern void (*v28) (unsigned char, signed short, signed char);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v106 = 0;
signed int v105 = -3;
signed char v104 = -1;

signed int v23 (unsigned int v107, signed short v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned int v111 = 0U;
unsigned int v110 = 6U;
signed char v109 = -4;
trace++;
switch (trace)
{
case 6: 
{
unsigned char v112;
signed short v113;
signed char v114;
v112 = 4 + 7;
v113 = v108 - v108;
v114 = -1 - 3;
v27 (v112, v113, v114);
}
break;
case 8: 
{
unsigned char v115;
signed short v116;
signed char v117;
v115 = 7 - 7;
v116 = v108 + -4;
v117 = v109 - -2;
v27 (v115, v116, v117);
}
break;
case 10: 
return 1;
default: abort ();
}
}
}
}

unsigned short v21 (unsigned int v118)
{
history[history_index++] = (int)v118;
{
for (;;) {
signed int v121 = -2;
unsigned int v120 = 1U;
signed int v119 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned short v122)
{
history[history_index++] = (int)v122;
{
for (;;) {
signed int v125 = 0;
unsigned short v124 = 2;
unsigned char v123 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (unsigned char v126, signed int v127, signed char v128, unsigned short v129)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned int v132 = 1U;
signed int v131 = 0;
unsigned char v130 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned int v133, signed int v134, signed char v135, signed char v136)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed short v139 = -1;
unsigned int v138 = 6U;
unsigned int v137 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (void)
{
{
for (;;) {
signed short v142 = 0;
unsigned int v141 = 6U;
unsigned char v140 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
