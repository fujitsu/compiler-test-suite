#include <stdlib.h>
extern unsigned int v1 (signed int, signed int);
extern unsigned int (*v2) (signed int, signed int);
extern unsigned char v3 (signed short, unsigned short, unsigned int);
extern unsigned char (*v4) (signed short, unsigned short, unsigned int);
signed short v5 (void);
signed short (*v6) (void) = v5;
extern unsigned char v7 (unsigned char, unsigned short, unsigned short);
extern unsigned char (*v8) (unsigned char, unsigned short, unsigned short);
extern void v9 (void);
extern void (*v10) (void);
extern signed short v11 (unsigned int, signed char, unsigned short, unsigned short);
extern signed short (*v12) (unsigned int, signed char, unsigned short, unsigned short);
extern void v13 (unsigned short);
extern void (*v14) (unsigned short);
extern signed char v15 (signed char);
extern signed char (*v16) (signed char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
unsigned int v19 (signed char, signed int, unsigned short);
unsigned int (*v20) (signed char, signed int, unsigned short) = v19;
signed int v21 (signed short, unsigned short, unsigned char);
signed int (*v22) (signed short, unsigned short, unsigned char) = v21;
signed char v23 (signed short, unsigned int);
signed char (*v24) (signed short, unsigned int) = v23;
signed short v25 (signed short, unsigned short, signed int);
signed short (*v26) (signed short, unsigned short, signed int) = v25;
extern unsigned char v27 (unsigned int, unsigned int, signed char);
extern unsigned char (*v28) (unsigned int, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v111 = 3;
unsigned char v110 = 3;
unsigned int v109 = 4U;

signed short v25 (signed short v112, unsigned short v113, signed int v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed int v117 = 0;
signed short v116 = -2;
signed int v115 = -4;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v118;
unsigned int v119;
signed char v120;
unsigned char v121;
v118 = 6U - 3U;
v119 = 2U - 5U;
v120 = 2 + 3;
v121 = v27 (v118, v119, v120);
history[history_index++] = (int)v121;
}
break;
case 8: 
return 1;
case 10: 
return -2;
default: abort ();
}
}
}
}

signed char v23 (signed short v122, unsigned int v123)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed int v126 = 1;
unsigned short v125 = 2;
signed int v124 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (signed short v127, unsigned short v128, unsigned char v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned int v132 = 6U;
unsigned char v131 = 5;
unsigned short v130 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (signed char v133, signed int v134, unsigned short v135)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned short v138 = 0;
unsigned short v137 = 1;
signed short v136 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (void)
{
{
for (;;) {
unsigned char v141 = 3;
unsigned short v140 = 5;
signed char v139 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
