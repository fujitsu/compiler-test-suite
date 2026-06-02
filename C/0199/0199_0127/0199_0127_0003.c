#include <stdlib.h>
unsigned int v1 (unsigned char);
unsigned int (*v2) (unsigned char) = v1;
extern unsigned int v3 (signed short, signed char);
extern unsigned int (*v4) (signed short, signed char);
extern unsigned short v5 (signed char, unsigned short, unsigned char);
extern unsigned short (*v6) (signed char, unsigned short, unsigned char);
unsigned short v7 (unsigned char, unsigned char, signed char);
unsigned short (*v8) (unsigned char, unsigned char, signed char) = v7;
extern signed char v9 (unsigned char, unsigned char, unsigned short, signed char);
extern signed char (*v10) (unsigned char, unsigned char, unsigned short, signed char);
extern unsigned char v11 (signed int);
extern unsigned char (*v12) (signed int);
unsigned int v13 (void);
unsigned int (*v14) (void) = v13;
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned short v17 (signed char, unsigned short);
extern unsigned short (*v18) (signed char, unsigned short);
extern unsigned char v19 (signed int, unsigned short);
extern unsigned char (*v20) (signed int, unsigned short);
extern void v21 (unsigned short, signed char);
extern void (*v22) (unsigned short, signed char);
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
static unsigned int v25 (unsigned char, unsigned int, signed short, unsigned int);
static unsigned int (*v26) (unsigned char, unsigned int, signed short, unsigned int) = v25;
static unsigned char v27 (signed int, signed char);
static unsigned char (*v28) (signed int, signed char) = v27;
extern signed int v29 (unsigned short, unsigned int);
extern signed int (*v30) (unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v81 = 0U;
unsigned short v80 = 6;
signed char v79 = -1;

static unsigned char v27 (signed int v82, signed char v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed int v86 = 1;
unsigned int v85 = 7U;
signed short v84 = -3;
trace++;
switch (trace)
{
case 2: 
return 4;
case 4: 
return 2;
case 6: 
return 3;
case 8: 
return 6;
case 10: 
return 0;
default: abort ();
}
}
}
}

static unsigned int v25 (unsigned char v87, unsigned int v88, signed short v89, unsigned int v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned char v93 = 0;
unsigned int v92 = 4U;
signed int v91 = -4;
trace++;
switch (trace)
{
case 1: 
{
signed int v94;
signed char v95;
unsigned char v96;
v94 = 0 + -2;
v95 = -2 - -2;
v96 = v27 (v94, v95);
history[history_index++] = (int)v96;
}
break;
case 3: 
{
signed int v97;
signed char v98;
unsigned char v99;
v97 = v91 + 2;
v98 = 0 + -4;
v99 = v27 (v97, v98);
history[history_index++] = (int)v99;
}
break;
case 5: 
{
signed int v100;
signed char v101;
unsigned char v102;
v100 = v91 + v91;
v101 = -1 - 2;
v102 = v27 (v100, v101);
history[history_index++] = (int)v102;
}
break;
case 7: 
{
signed int v103;
signed char v104;
unsigned char v105;
v103 = -1 - v91;
v104 = 1 - -4;
v105 = v27 (v103, v104);
history[history_index++] = (int)v105;
}
break;
case 9: 
{
signed int v106;
signed char v107;
unsigned char v108;
v106 = v91 - v91;
v107 = 3 + -1;
v108 = v27 (v106, v107);
history[history_index++] = (int)v108;
}
break;
case 11: 
return v92;
default: abort ();
}
}
}
}

unsigned int v13 (void)
{
{
for (;;) {
unsigned char v111 = 7;
signed char v110 = -4;
signed char v109 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned char v112, unsigned char v113, signed char v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned int v117 = 5U;
unsigned char v116 = 2;
unsigned char v115 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned char v118)
{
history[history_index++] = (int)v118;
{
for (;;) {
signed int v121 = -1;
unsigned int v120 = 6U;
unsigned int v119 = 0U;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v122;
unsigned int v123;
signed short v124;
unsigned int v125;
unsigned int v126;
v122 = 6 - v118;
v123 = v119 - v119;
v124 = 1 - 3;
v125 = v119 - v119;
v126 = v25 (v122, v123, v124, v125);
history[history_index++] = (int)v126;
}
break;
case 12: 
return v119;
default: abort ();
}
}
}
}
