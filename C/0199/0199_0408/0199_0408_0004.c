#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern signed char v3 (signed char, unsigned int, signed short, signed int);
extern signed char (*v4) (signed char, unsigned int, signed short, signed int);
signed char v5 (unsigned short, unsigned char, unsigned int, unsigned short);
signed char (*v6) (unsigned short, unsigned char, unsigned int, unsigned short) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned short v9 (unsigned int);
extern unsigned short (*v10) (unsigned int);
extern void v11 (unsigned short, signed short);
extern void (*v12) (unsigned short, signed short);
static unsigned char v13 (unsigned char, signed int, signed int, unsigned char);
static unsigned char (*v14) (unsigned char, signed int, signed int, unsigned char) = v13;
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
static signed int v17 (void);
static signed int (*v18) (void) = v17;
unsigned int v19 (unsigned int, unsigned short);
unsigned int (*v20) (unsigned int, unsigned short) = v19;
unsigned char v21 (signed int, unsigned int, signed int);
unsigned char (*v22) (signed int, unsigned int, signed int) = v21;
extern signed short v23 (signed int, unsigned int, signed short, unsigned char);
extern signed short (*v24) (signed int, unsigned int, signed short, unsigned char);
extern unsigned short v25 (signed int, unsigned char, signed short);
extern unsigned short (*v26) (signed int, unsigned char, signed short);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned short v29 (unsigned char);
extern unsigned short (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v90 = 6;
signed short v89 = 0;
signed char v88 = 2;

unsigned char v21 (signed int v91, unsigned int v92, signed int v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned short v96 = 6;
unsigned short v95 = 5;
unsigned char v94 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned int v97, unsigned short v98)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed char v101 = -2;
unsigned short v100 = 6;
unsigned int v99 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v17 (void)
{
{
for (;;) {
unsigned char v104 = 6;
unsigned char v103 = 7;
unsigned short v102 = 1;
trace++;
switch (trace)
{
case 4: 
return -4;
case 6: 
return 2;
case 8: 
return -3;
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
unsigned short v107 = 6;
signed char v106 = 1;
unsigned short v105 = 4;
trace++;
switch (trace)
{
case 3: 
{
signed int v108;
v108 = v17 ();
history[history_index++] = (int)v108;
}
break;
case 5: 
{
signed int v109;
v109 = v17 ();
history[history_index++] = (int)v109;
}
break;
case 7: 
{
signed int v110;
v110 = v17 ();
history[history_index++] = (int)v110;
}
break;
case 9: 
return 6;
default: abort ();
}
}
}
}

static unsigned char v13 (unsigned char v111, signed int v112, signed int v113, unsigned char v114)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned char v117 = 6;
unsigned int v116 = 2U;
signed int v115 = -2;
trace++;
switch (trace)
{
case 1: 
{
signed char v118;
unsigned int v119;
signed short v120;
signed int v121;
signed char v122;
v118 = 0 - 2;
v119 = v116 + 5U;
v120 = -1 - 0;
v121 = v113 - v112;
v122 = v3 (v118, v119, v120, v121);
history[history_index++] = (int)v122;
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}

signed char v5 (unsigned short v123, unsigned char v124, unsigned int v125, unsigned short v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed short v129 = -1;
unsigned int v128 = 3U;
unsigned char v127 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
signed char v132 = 0;
signed short v131 = 2;
signed char v130 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v133;
signed int v134;
signed int v135;
unsigned char v136;
unsigned char v137;
v133 = 2 - 3;
v134 = -2 - -1;
v135 = 3 + 2;
v136 = 2 - 5;
v137 = v13 (v133, v134, v135, v136);
history[history_index++] = (int)v137;
}
break;
case 14: 
return 6;
default: abort ();
}
}
}
}
