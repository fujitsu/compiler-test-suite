#include <stdlib.h>
unsigned char v1 (unsigned short, signed short, signed char, unsigned char);
unsigned char (*v2) (unsigned short, signed short, signed char, unsigned char) = v1;
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
extern unsigned char v5 (unsigned char, signed short);
extern unsigned char (*v6) (unsigned char, signed short);
extern unsigned int v7 (signed int, signed short, unsigned short, signed char);
extern unsigned int (*v8) (signed int, signed short, unsigned short, signed char);
extern void v9 (signed short, signed short);
extern void (*v10) (signed short, signed short);
extern signed short v11 (signed int);
extern signed short (*v12) (signed int);
unsigned int v13 (signed short, unsigned char, signed int);
unsigned int (*v14) (signed short, unsigned char, signed int) = v13;
extern unsigned char v15 (unsigned short, unsigned int);
extern unsigned char (*v16) (unsigned short, unsigned int);
signed short v17 (signed short, unsigned int, unsigned int);
signed short (*v18) (signed short, unsigned int, unsigned int) = v17;
signed int v19 (unsigned int, signed short, unsigned char, signed short);
signed int (*v20) (unsigned int, signed short, unsigned char, signed short) = v19;
static unsigned short v21 (signed short);
static unsigned short (*v22) (signed short) = v21;
extern signed short v23 (signed short, unsigned char, signed short);
extern signed short (*v24) (signed short, unsigned char, signed short);
extern signed short v25 (unsigned char, signed short);
extern signed short (*v26) (unsigned char, signed short);
extern unsigned short v27 (signed int, unsigned char, unsigned char, signed char);
extern unsigned short (*v28) (signed int, unsigned char, unsigned char, signed char);
static unsigned int v29 (unsigned int);
static unsigned int (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v86 = 5;
signed int v85 = -2;
unsigned char v84 = 0;

static unsigned int v29 (unsigned int v87)
{
history[history_index++] = (int)v87;
{
for (;;) {
signed short v90 = -4;
signed short v89 = -1;
unsigned char v88 = 0;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v91;
unsigned char v92;
v91 = v88 - v88;
v92 = v3 (v91);
history[history_index++] = (int)v92;
}
break;
case 4: 
return 1U;
case 6: 
{
unsigned char v93;
unsigned char v94;
v93 = v88 + 5;
v94 = v3 (v93);
history[history_index++] = (int)v94;
}
break;
case 8: 
return 1U;
default: abort ();
}
}
}
}

static unsigned short v21 (signed short v95)
{
history[history_index++] = (int)v95;
{
for (;;) {
unsigned char v98 = 1;
unsigned int v97 = 2U;
unsigned char v96 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v99;
unsigned int v100;
v99 = 3U - v97;
v100 = v29 (v99);
history[history_index++] = (int)v100;
}
break;
case 5: 
{
unsigned int v101;
unsigned int v102;
v101 = v97 - v97;
v102 = v29 (v101);
history[history_index++] = (int)v102;
}
break;
case 9: 
return 6;
default: abort ();
}
}
}
}

signed int v19 (unsigned int v103, signed short v104, unsigned char v105, signed short v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed char v109 = -4;
unsigned short v108 = 3;
unsigned char v107 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed short v110, unsigned int v111, unsigned int v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned char v115 = 1;
signed char v114 = 2;
unsigned short v113 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed short v116, unsigned char v117, signed int v118)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned int v121 = 2U;
unsigned char v120 = 2;
unsigned char v119 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned short v122, signed short v123, signed char v124, unsigned char v125)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned short v128 = 3;
unsigned char v127 = 1;
unsigned char v126 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed short v129;
unsigned short v130;
v129 = 3 - 2;
v130 = v21 (v129);
history[history_index++] = (int)v130;
}
break;
case 10: 
{
unsigned char v131;
unsigned char v132;
v131 = v125 + v126;
v132 = v3 (v131);
history[history_index++] = (int)v132;
}
break;
case 12: 
return v125;
default: abort ();
}
}
}
}
