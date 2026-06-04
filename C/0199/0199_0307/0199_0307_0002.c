#include <stdlib.h>
signed char v1 (signed short, unsigned char);
signed char (*v2) (signed short, unsigned char) = v1;
extern void v3 (unsigned short, signed int);
extern void (*v4) (unsigned short, signed int);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern signed char v9 (signed short, signed char);
extern signed char (*v10) (signed short, signed char);
unsigned short v11 (unsigned int, unsigned char, unsigned int, unsigned char);
unsigned short (*v12) (unsigned int, unsigned char, unsigned int, unsigned char) = v11;
static signed short v13 (unsigned int, signed short, signed short, unsigned short);
static signed short (*v14) (unsigned int, signed short, signed short, unsigned short) = v13;
extern unsigned int v15 (unsigned char, signed short, signed char, signed int);
extern unsigned int (*v16) (unsigned char, signed short, signed char, signed int);
extern void v17 (unsigned char, unsigned int, unsigned int, unsigned short);
extern void (*v18) (unsigned char, unsigned int, unsigned int, unsigned short);
extern signed char v19 (unsigned int, signed short);
extern signed char (*v20) (unsigned int, signed short);
extern signed char v21 (unsigned int, unsigned char);
extern signed char (*v22) (unsigned int, unsigned char);
extern signed int v23 (signed char, unsigned short);
extern signed int (*v24) (signed char, unsigned short);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed char v27 (unsigned char, signed short);
extern signed char (*v28) (unsigned char, signed short);
signed int v29 (signed int, signed char, signed short);
signed int (*v30) (signed int, signed char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v81 = 6U;
signed short v80 = 0;
unsigned int v79 = 6U;

signed int v29 (signed int v82, signed char v83, signed short v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed char v87 = -3;
unsigned char v86 = 3;
signed char v85 = -1;
trace++;
switch (trace)
{
case 4: 
return v82;
case 10: 
return 0;
default: abort ();
}
}
}
}

static signed short v13 (unsigned int v88, signed short v89, signed short v90, unsigned short v91)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed int v94 = 1;
signed short v93 = -2;
signed int v92 = -3;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v95;
signed short v96;
signed char v97;
v95 = 0 + 1;
v96 = v89 + v89;
v97 = v27 (v95, v96);
history[history_index++] = (int)v97;
}
break;
case 9: 
{
signed int v98;
signed char v99;
signed short v100;
signed int v101;
v98 = 3 + 0;
v99 = 2 + -3;
v100 = v93 - 2;
v101 = v29 (v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 11: 
return v93;
default: abort ();
}
}
}
}

unsigned short v11 (unsigned int v102, unsigned char v103, unsigned int v104, unsigned char v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed short v108 = 0;
unsigned int v107 = 7U;
signed short v106 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed short v109, unsigned char v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed short v113 = -4;
signed short v112 = 0;
unsigned short v111 = 5;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v114;
unsigned int v115;
unsigned int v116;
unsigned short v117;
v114 = 1 + v110;
v115 = 4U + 4U;
v116 = 2U + 4U;
v117 = 2 - v111;
v17 (v114, v115, v116, v117);
}
break;
case 2: 
{
unsigned int v118;
unsigned char v119;
signed char v120;
v118 = 2U + 3U;
v119 = v110 + v110;
v120 = v21 (v118, v119);
history[history_index++] = (int)v120;
}
break;
case 6: 
{
unsigned int v121;
signed short v122;
signed short v123;
unsigned short v124;
signed short v125;
v121 = 1U + 2U;
v122 = v109 + v113;
v123 = v113 + 0;
v124 = v111 - 6;
v125 = v13 (v121, v122, v123, v124);
history[history_index++] = (int)v125;
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}
