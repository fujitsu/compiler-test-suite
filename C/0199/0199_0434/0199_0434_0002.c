#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned short, unsigned short);
extern signed short (*v2) (unsigned char, unsigned short, unsigned short);
extern unsigned int v3 (signed char, signed short, unsigned int);
extern unsigned int (*v4) (signed char, signed short, unsigned int);
extern unsigned char v5 (unsigned int);
extern unsigned char (*v6) (unsigned int);
extern signed short v7 (unsigned char, signed char, unsigned short, unsigned char);
extern signed short (*v8) (unsigned char, signed char, unsigned short, unsigned char);
signed short v9 (void);
signed short (*v10) (void) = v9;
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern void v13 (signed char, signed int, signed char);
extern void (*v14) (signed char, signed int, signed char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned char v17 (unsigned char, signed int, signed char);
extern unsigned char (*v18) (unsigned char, signed int, signed char);
signed short v19 (unsigned short);
signed short (*v20) (unsigned short) = v19;
unsigned char v21 (unsigned char, unsigned int, unsigned int, signed char);
unsigned char (*v22) (unsigned char, unsigned int, unsigned int, signed char) = v21;
static signed char v23 (unsigned short, unsigned int);
static signed char (*v24) (unsigned short, unsigned int) = v23;
signed char v25 (signed int, signed int, unsigned char);
signed char (*v26) (signed int, signed int, unsigned char) = v25;
extern unsigned char v27 (unsigned char, signed char, signed char, unsigned int);
extern unsigned char (*v28) (unsigned char, signed char, signed char, unsigned int);
extern signed char v29 (unsigned char, signed short, signed short, unsigned char);
extern signed char (*v30) (unsigned char, signed short, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v74 = 5;
signed char v73 = 1;
unsigned short v72 = 3;

signed char v25 (signed int v75, signed int v76, unsigned char v77)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed char v80 = -3;
signed int v79 = 3;
unsigned short v78 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v23 (unsigned short v81, unsigned int v82)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned int v85 = 5U;
signed char v84 = -1;
unsigned int v83 = 2U;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v86;
signed short v87;
signed short v88;
unsigned char v89;
signed char v90;
v86 = 1 - 3;
v87 = 1 + -3;
v88 = -1 - -4;
v89 = 5 + 6;
v90 = v29 (v86, v87, v88, v89);
history[history_index++] = (int)v90;
}
break;
case 4: 
{
unsigned char v91;
signed short v92;
signed short v93;
unsigned char v94;
signed char v95;
v91 = 3 - 6;
v92 = 1 + 0;
v93 = 3 - -1;
v94 = 3 - 4;
v95 = v29 (v91, v92, v93, v94);
history[history_index++] = (int)v95;
}
break;
case 6: 
{
unsigned char v96;
signed short v97;
signed short v98;
unsigned char v99;
signed char v100;
v96 = 3 + 6;
v97 = -1 - 3;
v98 = 3 - 0;
v99 = 2 + 4;
v100 = v29 (v96, v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 8: 
{
unsigned char v101;
signed short v102;
signed short v103;
unsigned char v104;
signed char v105;
v101 = 6 - 4;
v102 = 0 + 1;
v103 = 2 + 3;
v104 = 2 + 5;
v105 = v29 (v101, v102, v103, v104);
history[history_index++] = (int)v105;
}
break;
case 10: 
{
unsigned char v106;
signed short v107;
signed short v108;
unsigned char v109;
signed char v110;
v106 = 3 - 3;
v107 = 1 + 2;
v108 = 1 + -4;
v109 = 3 + 4;
v110 = v29 (v106, v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}

unsigned char v21 (unsigned char v111, unsigned int v112, unsigned int v113, signed char v114)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed char v117 = 2;
unsigned char v116 = 6;
unsigned short v115 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v118;
unsigned int v119;
signed char v120;
v118 = 6 + 1;
v119 = v113 + 7U;
v120 = v23 (v118, v119);
history[history_index++] = (int)v120;
}
break;
case 13: 
return v111;
default: abort ();
}
}
}
}

signed short v19 (unsigned short v121)
{
history[history_index++] = (int)v121;
{
for (;;) {
unsigned char v124 = 2;
unsigned int v123 = 7U;
signed int v122 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (void)
{
{
for (;;) {
signed short v127 = -1;
unsigned int v126 = 1U;
unsigned int v125 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
