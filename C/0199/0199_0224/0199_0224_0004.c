#include <stdlib.h>
signed char v1 (signed int, unsigned int, signed char, signed short);
signed char (*v2) (signed int, unsigned int, signed char, signed short) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
signed short v7 (signed char, signed short);
signed short (*v8) (signed char, signed short) = v7;
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
extern unsigned char v11 (unsigned int, signed char, unsigned char);
extern unsigned char (*v12) (unsigned int, signed char, unsigned char);
extern signed char v13 (signed int, signed char);
extern signed char (*v14) (signed int, signed char);
extern unsigned short v15 (signed int, signed short, signed short);
extern unsigned short (*v16) (signed int, signed short, signed short);
extern unsigned int v17 (unsigned int, unsigned short);
extern unsigned int (*v18) (unsigned int, unsigned short);
extern void v19 (unsigned int, signed int);
extern void (*v20) (unsigned int, signed int);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern signed short v23 (signed int);
extern signed short (*v24) (signed int);
unsigned int v25 (signed int, unsigned char, signed short);
unsigned int (*v26) (signed int, unsigned char, signed short) = v25;
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
extern void v29 (unsigned int, signed int, signed short);
extern void (*v30) (unsigned int, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v110 = 2;
signed char v109 = 3;
unsigned short v108 = 0;

unsigned int v25 (signed int v111, unsigned char v112, signed short v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = 0;
signed char v115 = -2;
signed char v114 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed char v117, signed short v118)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned char v121 = 3;
signed int v120 = -4;
unsigned short v119 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed int v122, unsigned int v123, signed char v124, signed short v125)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned char v128 = 6;
signed short v127 = 3;
unsigned short v126 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed char v129;
unsigned char v130;
v129 = -4 - v124;
v130 = v9 (v129);
history[history_index++] = (int)v130;
}
break;
case 2: 
{
unsigned int v131;
signed int v132;
v131 = v123 - v123;
v132 = -2 - v122;
v19 (v131, v132);
}
break;
case 12: 
return v124;
default: abort ();
}
}
}
}
