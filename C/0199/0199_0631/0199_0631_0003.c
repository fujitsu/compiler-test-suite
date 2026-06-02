#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern void v3 (unsigned int, signed char);
extern void (*v4) (unsigned int, signed char);
unsigned char v5 (unsigned short);
unsigned char (*v6) (unsigned short) = v5;
extern void v7 (unsigned short, signed short, unsigned int);
extern void (*v8) (unsigned short, signed short, unsigned int);
extern unsigned int v9 (signed int, signed char, unsigned char);
extern unsigned int (*v10) (signed int, signed char, unsigned char);
extern void v11 (signed char, unsigned short, signed char, unsigned int);
extern void (*v12) (signed char, unsigned short, signed char, unsigned int);
unsigned int v13 (signed int, signed char, signed char);
unsigned int (*v14) (signed int, signed char, signed char) = v13;
extern void v15 (signed int, signed int);
extern void (*v16) (signed int, signed int);
signed int v17 (unsigned char, unsigned char, unsigned int);
signed int (*v18) (unsigned char, unsigned char, unsigned int) = v17;
extern unsigned int v19 (unsigned int, unsigned short, signed short);
extern unsigned int (*v20) (unsigned int, unsigned short, signed short);
extern signed short v21 (unsigned int, unsigned short, unsigned int, signed short);
extern signed short (*v22) (unsigned int, unsigned short, unsigned int, signed short);
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern signed int v25 (unsigned int);
extern signed int (*v26) (unsigned int);
unsigned short v27 (unsigned int, signed int, signed short);
unsigned short (*v28) (unsigned int, signed int, signed short) = v27;
extern unsigned char v29 (signed char, signed short, unsigned char);
extern unsigned char (*v30) (signed char, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v100 = 6;
signed char v99 = 0;
signed short v98 = 1;

unsigned short v27 (unsigned int v101, signed int v102, signed short v103)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed short v106 = -2;
unsigned int v105 = 1U;
unsigned int v104 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned char v107, unsigned char v108, unsigned int v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned char v112 = 7;
unsigned char v111 = 3;
unsigned short v110 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed int v113, signed char v114, signed char v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed short v118 = -1;
unsigned char v117 = 0;
unsigned short v116 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned short v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
signed char v122 = -2;
unsigned int v121 = 0U;
unsigned char v120 = 5;
trace++;
switch (trace)
{
case 3: 
{
signed char v123;
signed short v124;
unsigned char v125;
unsigned char v126;
v123 = -3 + v122;
v124 = -4 + -4;
v125 = 6 + 1;
v126 = v29 (v123, v124, v125);
history[history_index++] = (int)v126;
}
break;
case 5: 
{
signed char v127;
signed short v128;
unsigned char v129;
unsigned char v130;
v127 = -2 + 1;
v128 = 0 + 2;
v129 = v120 + 0;
v130 = v29 (v127, v128, v129);
history[history_index++] = (int)v130;
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}
