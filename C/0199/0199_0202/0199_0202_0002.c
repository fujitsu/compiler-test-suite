#include <stdlib.h>
void v1 (signed char, signed short, unsigned int);
void (*v2) (signed char, signed short, unsigned int) = v1;
extern unsigned short v3 (unsigned int, signed char);
extern unsigned short (*v4) (unsigned int, signed char);
unsigned short v5 (signed char, signed char);
unsigned short (*v6) (signed char, signed char) = v5;
extern void v7 (signed short);
extern void (*v8) (signed short);
extern signed int v9 (signed int, signed short);
extern signed int (*v10) (signed int, signed short);
unsigned int v11 (unsigned short, unsigned int, signed short);
unsigned int (*v12) (unsigned short, unsigned int, signed short) = v11;
void v13 (unsigned short);
void (*v14) (unsigned short) = v13;
extern signed char v15 (signed int, signed short, signed short, signed int);
extern signed char (*v16) (signed int, signed short, signed short, signed int);
static signed short v17 (signed short, unsigned int);
static signed short (*v18) (signed short, unsigned int) = v17;
unsigned int v19 (unsigned short);
unsigned int (*v20) (unsigned short) = v19;
signed short v21 (void);
signed short (*v22) (void) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed int v25 (unsigned int, signed short);
extern signed int (*v26) (unsigned int, signed short);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern void v29 (unsigned short);
extern void (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v73 = 3;
signed char v72 = 3;
signed int v71 = -4;

signed short v21 (void)
{
{
for (;;) {
unsigned int v76 = 5U;
unsigned char v75 = 2;
unsigned short v74 = 4;
trace++;
switch (trace)
{
case 6: 
return -1;
default: abort ();
}
}
}
}

unsigned int v19 (unsigned short v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
unsigned short v80 = 5;
signed int v79 = -1;
unsigned char v78 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v17 (signed short v81, unsigned int v82)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed short v85 = -2;
unsigned int v84 = 2U;
signed short v83 = 2;
trace++;
switch (trace)
{
case 1: 
return -3;
default: abort ();
}
}
}
}

void v13 (unsigned short v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
signed char v89 = 0;
signed char v88 = -1;
signed int v87 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned short v90, unsigned int v91, signed short v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed int v95 = 2;
signed int v94 = 1;
signed char v93 = 0;
trace++;
switch (trace)
{
case 8: 
{
signed int v96;
signed short v97;
signed short v98;
signed int v99;
signed char v100;
v96 = 0 + v95;
v97 = 0 + v92;
v98 = v92 - -3;
v99 = 1 - 0;
v100 = v15 (v96, v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 10: 
{
signed int v101;
signed short v102;
signed short v103;
signed int v104;
signed char v105;
v101 = v94 - 1;
v102 = v92 + -2;
v103 = 3 - v92;
v104 = -4 - v95;
v105 = v15 (v101, v102, v103, v104);
history[history_index++] = (int)v105;
}
break;
case 12: 
return 4U;
default: abort ();
}
}
}
}

unsigned short v5 (signed char v106, signed char v107)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned char v110 = 6;
signed int v109 = 2;
signed char v108 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed char v111, signed short v112, unsigned int v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned short v116 = 7;
unsigned char v115 = 0;
unsigned char v114 = 5;
trace++;
switch (trace)
{
case 0: 
{
signed short v117;
unsigned int v118;
signed short v119;
v117 = v112 - v112;
v118 = v113 + v113;
v119 = v17 (v117, v118);
history[history_index++] = (int)v119;
}
break;
case 2: 
{
signed int v120;
signed short v121;
signed int v122;
v120 = -4 + 3;
v121 = -3 + -4;
v122 = v9 (v120, v121);
history[history_index++] = (int)v122;
}
break;
case 4: 
{
unsigned int v123;
signed char v124;
unsigned short v125;
v123 = 6U + 6U;
v124 = v111 + v111;
v125 = v3 (v123, v124);
history[history_index++] = (int)v125;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
