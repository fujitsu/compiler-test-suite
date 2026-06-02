#include <stdlib.h>
extern signed int v1 (signed short, unsigned char, signed short, unsigned short);
extern signed int (*v2) (signed short, unsigned char, signed short, unsigned short);
extern signed char v3 (unsigned short, unsigned short, signed short);
extern signed char (*v4) (unsigned short, unsigned short, signed short);
signed int v5 (void);
signed int (*v6) (void) = v5;
extern signed short v7 (signed int, signed char, unsigned short);
extern signed short (*v8) (signed int, signed char, unsigned short);
signed int v9 (signed int, unsigned int, unsigned int);
signed int (*v10) (signed int, unsigned int, unsigned int) = v9;
extern unsigned char v11 (unsigned char);
extern unsigned char (*v12) (unsigned char);
signed short v13 (signed char, signed short, signed char);
signed short (*v14) (signed char, signed short, signed char) = v13;
extern signed short v15 (signed int, signed int, signed char);
extern signed short (*v16) (signed int, signed int, signed char);
extern void v17 (unsigned short, unsigned short, signed int, signed char);
extern void (*v18) (unsigned short, unsigned short, signed int, signed char);
unsigned char v19 (signed int, signed int, unsigned char);
unsigned char (*v20) (signed int, signed int, unsigned char) = v19;
unsigned char v21 (signed int, unsigned int, signed char, unsigned int);
unsigned char (*v22) (signed int, unsigned int, signed char, unsigned int) = v21;
extern unsigned char v23 (signed int, unsigned short, signed char, signed char);
extern unsigned char (*v24) (signed int, unsigned short, signed char, signed char);
extern void v25 (unsigned short, signed short, signed short, signed char);
extern void (*v26) (unsigned short, signed short, signed short, signed char);
extern unsigned int v27 (signed char, signed char, signed short, signed char);
extern unsigned int (*v28) (signed char, signed char, signed short, signed char);
extern unsigned int v29 (signed char, signed short, signed char);
extern unsigned int (*v30) (signed char, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v89 = -3;
signed short v88 = -1;
signed char v87 = 0;

unsigned char v21 (signed int v90, unsigned int v91, signed char v92, unsigned int v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed short v96 = -4;
signed short v95 = -2;
unsigned short v94 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (signed int v97, signed int v98, unsigned char v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned char v102 = 3;
signed short v101 = -2;
signed int v100 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed char v103, signed short v104, signed char v105)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned int v108 = 4U;
unsigned char v107 = 7;
signed short v106 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (signed int v109, unsigned int v110, unsigned int v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned int v114 = 1U;
unsigned int v113 = 3U;
unsigned int v112 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (void)
{
{
for (;;) {
signed int v117 = 3;
signed char v116 = -3;
signed char v115 = -1;
trace++;
switch (trace)
{
case 5: 
{
signed int v118;
signed char v119;
unsigned short v120;
signed short v121;
v118 = v117 + v117;
v119 = v115 - v115;
v120 = 1 - 5;
v121 = v7 (v118, v119, v120);
history[history_index++] = (int)v121;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}
