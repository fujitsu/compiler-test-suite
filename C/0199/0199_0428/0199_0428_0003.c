#include <stdlib.h>
extern signed int v1 (signed char, unsigned short, unsigned char, signed int);
extern signed int (*v2) (signed char, unsigned short, unsigned char, signed int);
extern signed char v3 (signed int, unsigned short, signed char);
extern signed char (*v4) (signed int, unsigned short, signed char);
extern unsigned char v5 (signed char, unsigned short, unsigned char);
extern unsigned char (*v6) (signed char, unsigned short, unsigned char);
extern signed char v7 (unsigned char, signed int, signed short, unsigned int);
extern signed char (*v8) (unsigned char, signed int, signed short, unsigned int);
unsigned short v9 (unsigned char, unsigned int, unsigned int, signed short);
unsigned short (*v10) (unsigned char, unsigned int, unsigned int, signed short) = v9;
unsigned int v11 (signed short, signed int, unsigned char);
unsigned int (*v12) (signed short, signed int, unsigned char) = v11;
extern void v13 (signed short);
extern void (*v14) (signed short);
extern signed short v15 (signed int);
extern signed short (*v16) (signed int);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed int v19 (signed int, unsigned char, unsigned int);
extern signed int (*v20) (signed int, unsigned char, unsigned int);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
static unsigned int v25 (unsigned short, signed char, signed char, signed char);
static unsigned int (*v26) (unsigned short, signed char, signed char, signed char) = v25;
unsigned char v27 (unsigned int, unsigned char, signed char);
unsigned char (*v28) (unsigned int, unsigned char, signed char) = v27;
extern unsigned short v29 (unsigned short, signed int, unsigned int, unsigned int);
extern unsigned short (*v30) (unsigned short, signed int, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v91 = 7;
signed int v90 = 3;
signed short v89 = 1;

unsigned char v27 (unsigned int v92, unsigned char v93, signed char v94)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned int v97 = 4U;
unsigned short v96 = 7;
signed char v95 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v25 (unsigned short v98, signed char v99, signed char v100, signed char v101)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed short v104 = -4;
unsigned short v103 = 0;
unsigned int v102 = 2U;
trace++;
switch (trace)
{
case 2: 
{
signed int v105;
v105 = v17 ();
history[history_index++] = (int)v105;
}
break;
case 6: 
{
signed int v106;
v106 = v17 ();
history[history_index++] = (int)v106;
}
break;
case 12: 
return 2U;
default: abort ();
}
}
}
}

unsigned int v11 (signed short v107, signed int v108, unsigned char v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed short v112 = 3;
signed char v111 = -1;
unsigned int v110 = 1U;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v113;
signed char v114;
signed char v115;
signed char v116;
unsigned int v117;
v113 = 4 - 6;
v114 = 2 + -3;
v115 = -1 + v111;
v116 = v111 - v111;
v117 = v25 (v113, v114, v115, v116);
history[history_index++] = (int)v117;
}
break;
case 13: 
return v110;
default: abort ();
}
}
}
}

unsigned short v9 (unsigned char v118, unsigned int v119, unsigned int v120, signed short v121)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned char v124 = 6;
unsigned short v123 = 6;
signed int v122 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
