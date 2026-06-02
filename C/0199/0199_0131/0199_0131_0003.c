#include <stdlib.h>
extern signed char v3 (unsigned short, unsigned char, signed char, unsigned char);
extern signed char (*v4) (unsigned short, unsigned char, signed char, unsigned char);
unsigned int v5 (signed char, signed int, unsigned char, signed int);
unsigned int (*v6) (signed char, signed int, unsigned char, signed int) = v5;
unsigned int v7 (unsigned char, unsigned char, signed char);
unsigned int (*v8) (unsigned char, unsigned char, signed char) = v7;
signed char v9 (unsigned int);
signed char (*v10) (unsigned int) = v9;
static signed short v11 (signed int, signed char, unsigned char);
static signed short (*v12) (signed int, signed char, unsigned char) = v11;
extern signed int v13 (unsigned char, unsigned char);
extern signed int (*v14) (unsigned char, unsigned char);
signed int v15 (signed short, unsigned int, unsigned int);
signed int (*v16) (signed short, unsigned int, unsigned int) = v15;
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed int v19 (signed short, unsigned int);
extern signed int (*v20) (signed short, unsigned int);
extern signed char v21 (signed short);
extern signed char (*v22) (signed short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern signed short v27 (unsigned short, unsigned char, signed char);
extern signed short (*v28) (unsigned short, unsigned char, signed char);
unsigned short v29 (void);
unsigned short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v86 = -4;
unsigned char v85 = 2;
signed int v84 = -1;

unsigned short v29 (void)
{
{
for (;;) {
unsigned int v89 = 7U;
signed short v88 = 2;
unsigned short v87 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (signed short v90, unsigned int v91, unsigned int v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed char v95 = -2;
unsigned int v94 = 3U;
unsigned int v93 = 5U;
trace++;
switch (trace)
{
case 5: 
{
signed int v96;
signed char v97;
unsigned char v98;
signed short v99;
v96 = -2 - -2;
v97 = -1 + 3;
v98 = 6 + 2;
v99 = v11 (v96, v97, v98);
history[history_index++] = (int)v99;
}
break;
case 7: 
{
signed int v100;
signed char v101;
unsigned char v102;
signed short v103;
v100 = 0 + 1;
v101 = v95 - v95;
v102 = 3 - 2;
v103 = v11 (v100, v101, v102);
history[history_index++] = (int)v103;
}
break;
case 9: 
{
signed int v104;
signed char v105;
unsigned char v106;
signed short v107;
v104 = -3 - 3;
v105 = 0 + v95;
v106 = 7 - 4;
v107 = v11 (v104, v105, v106);
history[history_index++] = (int)v107;
}
break;
case 11: 
return -2;
default: abort ();
}
}
}
}

static signed short v11 (signed int v108, signed char v109, unsigned char v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned short v113 = 0;
signed short v112 = -3;
signed char v111 = 1;
trace++;
switch (trace)
{
case 6: 
return v112;
case 8: 
return -4;
case 10: 
return v112;
default: abort ();
}
}
}
}

signed char v9 (unsigned int v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
signed char v117 = 2;
unsigned short v116 = 3;
signed char v115 = -2;
trace++;
switch (trace)
{
case 1: 
return v115;
default: abort ();
}
}
}
}

unsigned int v7 (unsigned char v118, unsigned char v119, signed char v120)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed char v123 = -4;
unsigned int v122 = 7U;
unsigned short v121 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed char v124, signed int v125, unsigned char v126, signed int v127)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned short v130 = 0;
signed int v129 = 1;
unsigned char v128 = 7;
trace++;
switch (trace)
{
case 3: 
{
signed short v131;
v131 = v23 ();
history[history_index++] = (int)v131;
}
break;
case 13: 
return 2U;
default: abort ();
}
}
}
}
