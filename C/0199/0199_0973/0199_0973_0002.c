#include <stdlib.h>
void v1 (unsigned short, signed int);
void (*v2) (unsigned short, signed int) = v1;
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
extern signed int v5 (unsigned short, signed char, signed short, signed short);
extern signed int (*v6) (unsigned short, signed char, signed short, signed short);
extern unsigned short v7 (signed int);
extern unsigned short (*v8) (signed int);
extern unsigned short v9 (unsigned char, unsigned char, unsigned char);
extern unsigned short (*v10) (unsigned char, unsigned char, unsigned char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
unsigned int v13 (signed short);
unsigned int (*v14) (signed short) = v13;
extern unsigned char v15 (unsigned short, unsigned char, unsigned char);
extern unsigned char (*v16) (unsigned short, unsigned char, unsigned char);
signed int v17 (signed char, unsigned int, signed short, signed short);
signed int (*v18) (signed char, unsigned int, signed short, signed short) = v17;
extern void v19 (void);
extern void (*v20) (void);
signed char v21 (signed char, signed short);
signed char (*v22) (signed char, signed short) = v21;
extern unsigned int v23 (unsigned int);
extern unsigned int (*v24) (unsigned int);
extern unsigned char v25 (unsigned short, signed int, unsigned int, signed int);
extern unsigned char (*v26) (unsigned short, signed int, unsigned int, signed int);
signed short v27 (unsigned int, unsigned int);
signed short (*v28) (unsigned int, unsigned int) = v27;
static signed int v29 (void);
static signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v76 = 2U;
signed short v75 = 2;
signed int v74 = -2;

static signed int v29 (void)
{
{
for (;;) {
signed char v79 = 1;
unsigned short v78 = 7;
signed int v77 = -3;
trace++;
switch (trace)
{
case 7: 
return v77;
case 11: 
return v77;
default: abort ();
}
}
}
}

signed short v27 (unsigned int v80, unsigned int v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned short v84 = 0;
unsigned int v83 = 4U;
signed char v82 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (signed char v85, signed short v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed char v89 = 1;
unsigned char v88 = 0;
signed char v87 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (signed char v90, unsigned int v91, signed short v92, signed short v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed char v96 = 2;
unsigned short v95 = 5;
signed char v94 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed short v97)
{
history[history_index++] = (int)v97;
{
for (;;) {
signed char v100 = 0;
unsigned short v99 = 2;
signed short v98 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned short v101, signed int v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed short v105 = 1;
unsigned int v104 = 0U;
signed int v103 = -2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v106;
unsigned char v107;
unsigned char v108;
unsigned char v109;
v106 = 2 + 3;
v107 = 0 - 0;
v108 = 5 - 4;
v109 = v15 (v106, v107, v108);
history[history_index++] = (int)v109;
}
break;
case 2: 
{
unsigned short v110;
unsigned char v111;
unsigned char v112;
unsigned char v113;
v110 = v101 - 1;
v111 = 4 + 6;
v112 = 7 - 2;
v113 = v15 (v110, v111, v112);
history[history_index++] = (int)v113;
}
break;
case 4: 
{
unsigned short v114;
unsigned char v115;
unsigned char v116;
unsigned char v117;
v114 = v101 - 6;
v115 = 0 - 0;
v116 = 2 - 5;
v117 = v15 (v114, v115, v116);
history[history_index++] = (int)v117;
}
break;
case 6: 
{
signed int v118;
v118 = v29 ();
history[history_index++] = (int)v118;
}
break;
case 8: 
{
unsigned short v119;
signed char v120;
signed short v121;
signed short v122;
signed int v123;
v119 = v101 + v101;
v120 = -1 - -1;
v121 = v105 + v105;
v122 = v105 + -2;
v123 = v5 (v119, v120, v121, v122);
history[history_index++] = (int)v123;
}
break;
case 10: 
{
signed int v124;
v124 = v29 ();
history[history_index++] = (int)v124;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
