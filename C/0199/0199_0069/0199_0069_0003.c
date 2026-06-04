#include <stdlib.h>
signed short v1 (signed char, unsigned int);
signed short (*v2) (signed char, unsigned int) = v1;
extern unsigned short v3 (unsigned int, unsigned char, unsigned short, unsigned short);
extern unsigned short (*v4) (unsigned int, unsigned char, unsigned short, unsigned short);
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
extern signed int v7 (signed int, signed short);
extern signed int (*v8) (signed int, signed short);
static signed char v9 (signed char, signed char, unsigned char, unsigned short);
static signed char (*v10) (signed char, signed char, unsigned char, unsigned short) = v9;
extern signed int v11 (unsigned int, unsigned char);
extern signed int (*v12) (unsigned int, unsigned char);
extern signed short v13 (signed short, signed char);
extern signed short (*v14) (signed short, signed char);
static signed short v15 (signed char, signed char, signed char);
static signed short (*v16) (signed char, signed char, signed char) = v15;
unsigned short v17 (unsigned short, signed short, unsigned char, signed short);
unsigned short (*v18) (unsigned short, signed short, unsigned char, signed short) = v17;
extern unsigned short v19 (signed short, signed short, unsigned short);
extern unsigned short (*v20) (signed short, signed short, unsigned short);
extern signed char v21 (signed char, unsigned char, signed char);
extern signed char (*v22) (signed char, unsigned char, signed char);
extern signed char v23 (unsigned char, unsigned short);
extern signed char (*v24) (unsigned char, unsigned short);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v82 = 0;
signed short v81 = -1;
unsigned int v80 = 3U;

unsigned short v17 (unsigned short v83, signed short v84, unsigned char v85, signed short v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned int v89 = 7U;
unsigned char v88 = 4;
unsigned int v87 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v15 (signed char v90, signed char v91, signed char v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned int v95 = 7U;
unsigned short v94 = 3;
unsigned short v93 = 3;
trace++;
switch (trace)
{
case 7: 
{
signed short v96;
v96 = v29 ();
history[history_index++] = (int)v96;
}
break;
case 9: 
{
signed short v97;
v97 = v29 ();
history[history_index++] = (int)v97;
}
break;
case 11: 
return -4;
default: abort ();
}
}
}
}

static signed char v9 (signed char v98, signed char v99, unsigned char v100, unsigned short v101)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned short v104 = 6;
signed int v103 = 3;
signed int v102 = -4;
trace++;
switch (trace)
{
case 1: 
return v99;
default: abort ();
}
}
}
}

signed short v1 (signed char v105, unsigned int v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed int v109 = 3;
signed int v108 = -2;
unsigned short v107 = 6;
trace++;
switch (trace)
{
case 0: 
{
signed char v110;
signed char v111;
unsigned char v112;
unsigned short v113;
signed char v114;
v110 = v105 - v105;
v111 = -4 - v105;
v112 = 7 - 2;
v113 = v107 + 3;
v114 = v9 (v110, v111, v112, v113);
history[history_index++] = (int)v114;
}
break;
case 2: 
return -3;
case 3: 
{
signed int v115;
signed short v116;
v115 = v108 - -3;
v116 = v5 (v115);
history[history_index++] = (int)v116;
}
break;
case 5: 
return -3;
case 6: 
{
signed char v117;
signed char v118;
signed char v119;
signed short v120;
v117 = -3 - v105;
v118 = 0 + 2;
v119 = -4 - 2;
v120 = v15 (v117, v118, v119);
history[history_index++] = (int)v120;
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}
