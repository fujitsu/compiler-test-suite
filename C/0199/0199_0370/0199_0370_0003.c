#include <stdlib.h>
extern signed char v1 (signed int, unsigned int, signed char);
extern signed char (*v2) (signed int, unsigned int, signed char);
extern void v3 (signed char, signed short, unsigned int, unsigned short);
extern void (*v4) (signed char, signed short, unsigned int, unsigned short);
signed short v5 (signed char, signed char, unsigned int, signed int);
signed short (*v6) (signed char, signed char, unsigned int, signed int) = v5;
extern signed short v7 (signed char, signed char, signed int, signed int);
extern signed short (*v8) (signed char, signed char, signed int, signed int);
signed char v9 (unsigned short, signed short, unsigned int, unsigned int);
signed char (*v10) (unsigned short, signed short, unsigned int, unsigned int) = v9;
static signed int v11 (void);
static signed int (*v12) (void) = v11;
extern void v13 (signed int, signed int, signed short);
extern void (*v14) (signed int, signed int, signed short);
extern unsigned int v15 (unsigned int, unsigned int, unsigned char, unsigned int);
extern unsigned int (*v16) (unsigned int, unsigned int, unsigned char, unsigned int);
extern unsigned int v17 (unsigned char, unsigned int);
extern unsigned int (*v18) (unsigned char, unsigned int);
extern signed char v19 (signed char, unsigned int, signed char, signed char);
extern signed char (*v20) (signed char, unsigned int, signed char, signed char);
extern void v21 (unsigned short, signed short, signed short);
extern void (*v22) (unsigned short, signed short, signed short);
extern signed short v23 (unsigned char, signed char, signed char);
extern signed short (*v24) (unsigned char, signed char, signed char);
extern signed short v25 (unsigned int, unsigned short);
extern signed short (*v26) (unsigned int, unsigned short);
extern signed char v27 (signed char, unsigned short, signed int);
extern signed char (*v28) (signed char, unsigned short, signed int);
extern signed short v29 (signed short, unsigned short, unsigned char);
extern signed short (*v30) (signed short, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v84 = 0;
unsigned int v83 = 4U;
unsigned int v82 = 5U;

static signed int v11 (void)
{
{
for (;;) {
unsigned int v87 = 1U;
unsigned char v86 = 2;
signed short v85 = 1;
trace++;
switch (trace)
{
case 2: 
return -2;
case 8: 
{
signed short v88;
unsigned short v89;
unsigned char v90;
signed short v91;
v88 = -3 + -1;
v89 = 4 - 7;
v90 = v86 - v86;
v91 = v29 (v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 10: 
{
signed int v92;
signed int v93;
signed short v94;
v92 = -4 - 1;
v93 = 3 - 2;
v94 = v85 + -1;
v13 (v92, v93, v94);
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}

signed char v9 (unsigned short v95, signed short v96, unsigned int v97, unsigned int v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed short v101 = -3;
signed int v100 = -1;
unsigned short v99 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed char v102, signed char v103, unsigned int v104, signed int v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned char v108 = 7;
unsigned short v107 = 0;
unsigned char v106 = 4;
trace++;
switch (trace)
{
case 1: 
{
signed int v109;
v109 = v11 ();
history[history_index++] = (int)v109;
}
break;
case 3: 
{
unsigned int v110;
unsigned int v111;
unsigned char v112;
unsigned int v113;
unsigned int v114;
v110 = v104 - 7U;
v111 = v104 + 7U;
v112 = 1 + 6;
v113 = v104 - v104;
v114 = v15 (v110, v111, v112, v113);
history[history_index++] = (int)v114;
}
break;
case 5: 
{
unsigned int v115;
unsigned int v116;
unsigned char v117;
unsigned int v118;
unsigned int v119;
v115 = v104 - v104;
v116 = 1U + v104;
v117 = v106 + v106;
v118 = v104 - 5U;
v119 = v15 (v115, v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 7: 
{
signed int v120;
v120 = v11 ();
history[history_index++] = (int)v120;
}
break;
case 13: 
return -4;
default: abort ();
}
}
}
}
