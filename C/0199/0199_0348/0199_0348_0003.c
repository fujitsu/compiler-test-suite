#include <stdlib.h>
signed char v3 (signed int, signed char, signed short, unsigned char);
signed char (*v4) (signed int, signed char, signed short, unsigned char) = v3;
void v5 (signed int, signed short);
void (*v6) (signed int, signed short) = v5;
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
signed short v9 (signed char, unsigned short, signed int);
signed short (*v10) (signed char, unsigned short, signed int) = v9;
extern signed char v11 (unsigned int, signed short);
extern signed char (*v12) (unsigned int, signed short);
unsigned short v13 (signed short, unsigned int, unsigned char, unsigned int);
unsigned short (*v14) (signed short, unsigned int, unsigned char, unsigned int) = v13;
extern signed short v15 (void);
extern signed short (*v16) (void);
void v17 (signed short, signed char);
void (*v18) (signed short, signed char) = v17;
extern unsigned short v19 (unsigned short, unsigned short, unsigned short);
extern unsigned short (*v20) (unsigned short, unsigned short, unsigned short);
extern unsigned short v21 (unsigned char);
extern unsigned short (*v22) (unsigned char);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed char v25 (signed char, unsigned short, signed char);
extern signed char (*v26) (signed char, unsigned short, signed char);
extern unsigned int v27 (unsigned short);
extern unsigned int (*v28) (unsigned short);
extern unsigned char v29 (unsigned int, signed int, unsigned short);
extern unsigned char (*v30) (unsigned int, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v91 = 1;
unsigned short v90 = 5;
unsigned char v89 = 3;

void v17 (signed short v92, signed char v93)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned char v96 = 2;
unsigned short v95 = 7;
unsigned int v94 = 4U;
trace++;
switch (trace)
{
case 9: 
return;
default: abort ();
}
}
}
}

unsigned short v13 (signed short v97, unsigned int v98, unsigned char v99, unsigned int v100)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed int v103 = -3;
unsigned int v102 = 3U;
unsigned char v101 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (signed char v104, unsigned short v105, signed int v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned short v109 = 4;
unsigned int v108 = 1U;
unsigned int v107 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed int v110, signed short v111)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned int v114 = 7U;
signed char v113 = -1;
unsigned short v112 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed int v115, signed char v116, signed short v117, unsigned char v118)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed int v121 = 2;
signed int v120 = -2;
unsigned short v119 = 6;
trace++;
switch (trace)
{
case 1: 
{
signed int v122;
signed char v123;
signed short v124;
unsigned char v125;
signed char v126;
v122 = v121 + -3;
v123 = -1 - 1;
v124 = -1 + v117;
v125 = 5 - 3;
v126 = v3 (v122, v123, v124, v125);
history[history_index++] = (int)v126;
}
break;
case 2: 
return v116;
case 3: 
{
signed int v127;
signed char v128;
signed short v129;
unsigned char v130;
signed char v131;
v127 = v115 + v115;
v128 = 0 - v116;
v129 = v117 + 0;
v130 = 7 - 2;
v131 = v3 (v127, v128, v129, v130);
history[history_index++] = (int)v131;
}
break;
case 4: 
return v116;
case 5: 
return -4;
default: abort ();
}
}
}
}
