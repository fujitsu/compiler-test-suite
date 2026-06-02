#include <stdlib.h>
signed short v1 (signed int, signed char, unsigned short);
signed short (*v2) (signed int, signed char, unsigned short) = v1;
unsigned int v3 (unsigned char, unsigned int);
unsigned int (*v4) (unsigned char, unsigned int) = v3;
static signed short v5 (unsigned char, signed char, unsigned char);
static signed short (*v6) (unsigned char, signed char, unsigned char) = v5;
extern unsigned int v7 (signed short);
extern unsigned int (*v8) (signed short);
static signed short v9 (void);
static signed short (*v10) (void) = v9;
extern signed short v11 (unsigned char, signed char, unsigned char);
extern signed short (*v12) (unsigned char, signed char, unsigned char);
extern unsigned short v13 (unsigned char, unsigned short);
extern unsigned short (*v14) (unsigned char, unsigned short);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned char v17 (signed short, unsigned char, signed int, unsigned char);
extern unsigned char (*v18) (signed short, unsigned char, signed int, unsigned char);
extern unsigned short v19 (signed char, signed char, unsigned short, unsigned char);
extern unsigned short (*v20) (signed char, signed char, unsigned short, unsigned char);
extern signed short v21 (unsigned int, unsigned char, signed int);
extern signed short (*v22) (unsigned int, unsigned char, signed int);
extern signed short v23 (signed int);
extern signed short (*v24) (signed int);
extern void v25 (void);
extern void (*v26) (void);
extern signed short v27 (signed short);
extern signed short (*v28) (signed short);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v80 = -1;
signed int v79 = 2;
signed short v78 = 3;

static signed short v9 (void)
{
{
for (;;) {
signed char v83 = -4;
unsigned short v82 = 3;
signed int v81 = 1;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v84;
unsigned short v85;
unsigned short v86;
v84 = 3 - 4;
v85 = 0 + v82;
v86 = v13 (v84, v85);
history[history_index++] = (int)v86;
}
break;
case 5: 
{
signed char v87;
signed char v88;
unsigned short v89;
unsigned char v90;
unsigned short v91;
v87 = v83 + v83;
v88 = v83 - v83;
v89 = v82 - v82;
v90 = 1 - 4;
v91 = v19 (v87, v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 7: 
return 0;
default: abort ();
}
}
}
}

static signed short v5 (unsigned char v92, signed char v93, unsigned char v94)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned char v97 = 6;
unsigned char v96 = 7;
signed char v95 = 3;
trace++;
switch (trace)
{
case 1: 
return 1;
default: abort ();
}
}
}
}

unsigned int v3 (unsigned char v98, unsigned int v99)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed char v102 = -3;
signed short v101 = -4;
signed char v100 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed int v103, signed char v104, unsigned short v105)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned char v108 = 2;
unsigned int v107 = 3U;
unsigned short v106 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v109;
signed char v110;
unsigned char v111;
signed short v112;
v109 = v108 - v108;
v110 = v104 - v104;
v111 = v108 + 0;
v112 = v5 (v109, v110, v111);
history[history_index++] = (int)v112;
}
break;
case 2: 
{
signed short v113;
v113 = v9 ();
history[history_index++] = (int)v113;
}
break;
case 8: 
{
signed short v114;
unsigned char v115;
signed int v116;
unsigned char v117;
unsigned char v118;
v114 = -3 - 2;
v115 = v108 - 5;
v116 = v103 + 2;
v117 = v108 - v108;
v118 = v17 (v114, v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 10: 
{
unsigned char v119;
signed char v120;
unsigned char v121;
signed short v122;
v119 = 4 + 3;
v120 = 3 - v104;
v121 = 6 + v108;
v122 = v11 (v119, v120, v121);
history[history_index++] = (int)v122;
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}
