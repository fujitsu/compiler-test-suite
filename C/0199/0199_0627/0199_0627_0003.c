#include <stdlib.h>
unsigned short v1 (signed char, unsigned int);
unsigned short (*v2) (signed char, unsigned int) = v1;
signed int v3 (unsigned char, signed char);
signed int (*v4) (unsigned char, signed char) = v3;
extern signed int v5 (signed short, unsigned char, signed short);
extern signed int (*v6) (signed short, unsigned char, signed short);
extern signed char v7 (signed int, signed short);
extern signed char (*v8) (signed int, signed short);
extern unsigned char v9 (signed char, signed int);
extern unsigned char (*v10) (signed char, signed int);
extern signed short v11 (signed char, unsigned int);
extern signed short (*v12) (signed char, unsigned int);
extern void v13 (unsigned short, unsigned short, signed char);
extern void (*v14) (unsigned short, unsigned short, signed char);
extern unsigned char v15 (signed char);
extern unsigned char (*v16) (signed char);
extern void v17 (void);
extern void (*v18) (void);
extern void v19 (void);
extern void (*v20) (void);
extern signed short v21 (void);
extern signed short (*v22) (void);
static unsigned int v23 (signed int, signed char, unsigned char, signed short);
static unsigned int (*v24) (signed int, signed char, unsigned char, signed short) = v23;
signed short v25 (signed int);
signed short (*v26) (signed int) = v25;
extern unsigned short v27 (unsigned char, signed char);
extern unsigned short (*v28) (unsigned char, signed char);
extern signed int v29 (unsigned short, signed short, unsigned short, signed short);
extern signed int (*v30) (unsigned short, signed short, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v89 = -3;
signed char v88 = 2;
signed short v87 = -3;

signed short v25 (signed int v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
unsigned short v93 = 5;
signed char v92 = 1;
unsigned char v91 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v23 (signed int v94, signed char v95, unsigned char v96, signed short v97)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed char v100 = -3;
signed short v99 = -2;
unsigned char v98 = 4;
trace++;
switch (trace)
{
case 1: 
{
signed char v101;
unsigned int v102;
unsigned short v103;
v101 = v100 - v100;
v102 = 5U - 2U;
v103 = v1 (v101, v102);
history[history_index++] = (int)v103;
}
break;
case 13: 
return 7U;
default: abort ();
}
}
}
}

signed int v3 (unsigned char v104, signed char v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned char v108 = 7;
signed int v107 = -4;
unsigned int v106 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed char v109, unsigned int v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed int v113 = -1;
signed char v112 = -3;
unsigned int v111 = 4U;
trace++;
switch (trace)
{
case 0: 
{
signed int v114;
signed char v115;
unsigned char v116;
signed short v117;
unsigned int v118;
v114 = v113 - v113;
v115 = v109 + v112;
v116 = 3 + 7;
v117 = 3 + 0;
v118 = v23 (v114, v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 2: 
{
signed char v119;
unsigned char v120;
v119 = -3 + v109;
v120 = v15 (v119);
history[history_index++] = (int)v120;
}
break;
case 4: 
{
v19 ();
}
break;
case 6: 
{
signed short v121;
v121 = v21 ();
history[history_index++] = (int)v121;
}
break;
case 8: 
{
signed char v122;
signed int v123;
unsigned char v124;
v122 = v109 + v109;
v123 = 2 + 2;
v124 = v9 (v122, v123);
history[history_index++] = (int)v124;
}
break;
case 10: 
{
signed short v125;
v125 = v21 ();
history[history_index++] = (int)v125;
}
break;
case 12: 
return 4;
case 14: 
return 1;
default: abort ();
}
}
}
}
