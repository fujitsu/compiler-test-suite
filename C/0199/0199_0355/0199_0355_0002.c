#include <stdlib.h>
unsigned short v3 (unsigned char, signed char, unsigned int);
unsigned short (*v4) (unsigned char, signed char, unsigned int) = v3;
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
void v7 (signed int, signed int);
void (*v8) (signed int, signed int) = v7;
extern unsigned char v9 (signed short);
extern unsigned char (*v10) (signed short);
extern unsigned short v11 (signed short, signed int);
extern unsigned short (*v12) (signed short, signed int);
extern signed char v13 (unsigned char, signed int, signed short);
extern signed char (*v14) (unsigned char, signed int, signed short);
extern signed int v15 (unsigned int, unsigned int, signed int, signed int);
extern signed int (*v16) (unsigned int, unsigned int, signed int, signed int);
extern unsigned char v17 (signed char);
extern unsigned char (*v18) (signed char);
extern signed short v19 (unsigned int, unsigned int, unsigned short);
extern signed short (*v20) (unsigned int, unsigned int, unsigned short);
static unsigned int v21 (unsigned char, signed char);
static unsigned int (*v22) (unsigned char, signed char) = v21;
extern unsigned short v23 (signed int, unsigned char, unsigned int, signed int);
extern unsigned short (*v24) (signed int, unsigned char, unsigned int, signed int);
static signed int v25 (signed int, signed short, unsigned short);
static signed int (*v26) (signed int, signed short, unsigned short) = v25;
extern unsigned short v27 (unsigned int, signed short, signed int);
extern unsigned short (*v28) (unsigned int, signed short, signed int);
unsigned int v29 (signed char, signed short);
unsigned int (*v30) (signed char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v74 = -4;
signed short v73 = 2;
unsigned short v72 = 7;

unsigned int v29 (signed char v75, signed short v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed short v79 = -3;
signed char v78 = 1;
signed char v77 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v25 (signed int v80, signed short v81, unsigned short v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned short v85 = 5;
signed int v84 = -1;
unsigned short v83 = 6;
trace++;
switch (trace)
{
case 6: 
return -4;
case 8: 
return v80;
default: abort ();
}
}
}
}

static unsigned int v21 (unsigned char v86, signed char v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed short v90 = 0;
signed short v89 = 0;
signed short v88 = 2;
trace++;
switch (trace)
{
case 10: 
return 7U;
default: abort ();
}
}
}
}

void v7 (signed int v91, signed int v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed char v95 = 0;
unsigned short v94 = 0;
signed short v93 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
unsigned char v98 = 5;
signed char v97 = -3;
unsigned char v96 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned char v99, signed char v100, unsigned int v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed int v104 = -1;
unsigned int v103 = 5U;
signed short v102 = -3;
trace++;
switch (trace)
{
case 1: 
{
signed int v105;
unsigned char v106;
unsigned int v107;
signed int v108;
unsigned short v109;
v105 = -3 + v104;
v106 = 4 + 6;
v107 = v101 - v101;
v108 = 3 + -2;
v109 = v23 (v105, v106, v107, v108);
history[history_index++] = (int)v109;
}
break;
case 3: 
{
signed int v110;
unsigned char v111;
unsigned int v112;
signed int v113;
unsigned short v114;
v110 = -4 - v104;
v111 = 2 + v99;
v112 = 4U - v103;
v113 = v104 - v104;
v114 = v23 (v110, v111, v112, v113);
history[history_index++] = (int)v114;
}
break;
case 5: 
{
signed int v115;
signed short v116;
unsigned short v117;
signed int v118;
v115 = v104 + v104;
v116 = v102 + v102;
v117 = 5 - 4;
v118 = v25 (v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 7: 
{
signed int v119;
signed short v120;
unsigned short v121;
signed int v122;
v119 = -3 - v104;
v120 = -1 - -1;
v121 = 5 + 2;
v122 = v25 (v119, v120, v121);
history[history_index++] = (int)v122;
}
break;
case 9: 
{
unsigned char v123;
signed char v124;
unsigned int v125;
v123 = 6 - 2;
v124 = v100 + 3;
v125 = v21 (v123, v124);
history[history_index++] = (int)v125;
}
break;
case 11: 
return 1;
default: abort ();
}
}
}
}
