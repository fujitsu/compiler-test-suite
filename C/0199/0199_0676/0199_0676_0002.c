#include <stdlib.h>
signed short v1 (signed short, signed char, signed short);
signed short (*v2) (signed short, signed char, signed short) = v1;
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
signed char v5 (void);
signed char (*v6) (void) = v5;
extern signed char v7 (unsigned short, signed short, unsigned char, unsigned char);
extern signed char (*v8) (unsigned short, signed short, unsigned char, unsigned char);
extern signed short v9 (unsigned int);
extern signed short (*v10) (unsigned int);
extern signed char v11 (void);
extern signed char (*v12) (void);
unsigned short v13 (void);
unsigned short (*v14) (void) = v13;
extern void v15 (void);
extern void (*v16) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
void v19 (signed char);
void (*v20) (signed char) = v19;
static unsigned int v21 (signed short, signed char);
static unsigned int (*v22) (signed short, signed char) = v21;
unsigned int v23 (unsigned char, unsigned short, unsigned int);
unsigned int (*v24) (unsigned char, unsigned short, unsigned int) = v23;
signed char v25 (unsigned short, unsigned int, signed char, unsigned short);
signed char (*v26) (unsigned short, unsigned int, signed char, unsigned short) = v25;
extern unsigned int v27 (signed char, signed char, signed int);
extern unsigned int (*v28) (signed char, signed char, signed int);
extern signed short v29 (signed char, unsigned short, signed int, signed char);
extern signed short (*v30) (signed char, unsigned short, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v69 = -3;
unsigned char v68 = 1;
unsigned short v67 = 5;

signed char v25 (unsigned short v70, unsigned int v71, signed char v72, unsigned short v73)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed int v76 = -4;
unsigned int v75 = 2U;
signed int v74 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (unsigned char v77, unsigned short v78, unsigned int v79)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed char v82 = -3;
signed short v81 = 1;
signed int v80 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v21 (signed short v83, signed char v84)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed int v87 = 2;
signed short v86 = 0;
signed short v85 = 2;
trace++;
switch (trace)
{
case 1: 
return 1U;
default: abort ();
}
}
}
}

void v19 (signed char v88)
{
history[history_index++] = (int)v88;
{
for (;;) {
signed int v91 = 3;
unsigned char v90 = 4;
signed int v89 = -1;
trace++;
switch (trace)
{
case 6: 
{
signed char v92;
unsigned short v93;
signed int v94;
signed char v95;
signed short v96;
v92 = v88 + -3;
v93 = 4 - 3;
v94 = v91 + -4;
v95 = v88 + -1;
v96 = v29 (v92, v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 8: 
{
signed char v97;
unsigned short v98;
signed int v99;
signed char v100;
signed short v101;
v97 = v88 - 3;
v98 = 4 - 4;
v99 = 3 - v89;
v100 = v88 + v88;
v101 = v29 (v97, v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 10: 
{
signed char v102;
unsigned short v103;
signed int v104;
signed char v105;
signed short v106;
v102 = v88 + -1;
v103 = 5 - 4;
v104 = 2 + v91;
v105 = -1 - v88;
v106 = v29 (v102, v103, v104, v105);
history[history_index++] = (int)v106;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

unsigned short v13 (void)
{
{
for (;;) {
unsigned short v109 = 6;
unsigned char v108 = 7;
unsigned char v107 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (void)
{
{
for (;;) {
signed char v112 = -2;
signed char v111 = -1;
unsigned short v110 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed short v113, signed char v114, signed short v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned short v118 = 1;
signed char v117 = -3;
signed int v116 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed short v119;
signed char v120;
unsigned int v121;
v119 = v113 + -1;
v120 = -3 - v114;
v121 = v21 (v119, v120);
history[history_index++] = (int)v121;
}
break;
case 2: 
{
signed char v122;
signed char v123;
signed int v124;
unsigned int v125;
v122 = 3 - -4;
v123 = v117 + v117;
v124 = v116 + v116;
v125 = v27 (v122, v123, v124);
history[history_index++] = (int)v125;
}
break;
case 4: 
{
signed short v126;
v126 = v17 ();
history[history_index++] = (int)v126;
}
break;
case 14: 
return -2;
default: abort ();
}
}
}
}
