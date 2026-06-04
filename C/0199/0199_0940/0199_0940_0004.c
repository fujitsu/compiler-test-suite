#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned char v3 (unsigned int, signed int, signed int, signed short);
extern unsigned char (*v4) (unsigned int, signed int, signed int, signed short);
extern signed int v5 (unsigned int);
extern signed int (*v6) (unsigned int);
unsigned short v7 (void);
unsigned short (*v8) (void) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern signed int v13 (unsigned int, unsigned int, unsigned short);
extern signed int (*v14) (unsigned int, unsigned int, unsigned short);
unsigned int v15 (unsigned short, unsigned int, unsigned char);
unsigned int (*v16) (unsigned short, unsigned int, unsigned char) = v15;
unsigned int v17 (unsigned char, unsigned int, signed short);
unsigned int (*v18) (unsigned char, unsigned int, signed short) = v17;
extern unsigned char v19 (unsigned int, signed short, signed int, unsigned char);
extern unsigned char (*v20) (unsigned int, signed short, signed int, unsigned char);
extern unsigned int v21 (unsigned char);
extern unsigned int (*v22) (unsigned char);
unsigned int v23 (signed char);
unsigned int (*v24) (signed char) = v23;
extern unsigned int v25 (unsigned char, unsigned int, unsigned int, unsigned int);
extern unsigned int (*v26) (unsigned char, unsigned int, unsigned int, unsigned int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern unsigned char v29 (unsigned char, unsigned short);
extern unsigned char (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v112 = 5;
signed short v111 = 2;
signed char v110 = -4;

unsigned int v23 (signed char v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
unsigned int v116 = 4U;
unsigned short v115 = 7;
unsigned short v114 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (unsigned char v117, unsigned int v118, signed short v119)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned char v122 = 2;
signed short v121 = -3;
unsigned short v120 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned short v123, unsigned int v124, unsigned char v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned char v128 = 0;
signed char v127 = -2;
unsigned int v126 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (void)
{
{
for (;;) {
signed int v131 = -1;
unsigned int v130 = 6U;
signed int v129 = -4;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v132;
unsigned int v133;
unsigned int v134;
unsigned int v135;
unsigned int v136;
v132 = 6 + 6;
v133 = 1U + v130;
v134 = v130 - 3U;
v135 = 7U + v130;
v136 = v25 (v132, v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 5: 
return 4;
default: abort ();
}
}
}
}
