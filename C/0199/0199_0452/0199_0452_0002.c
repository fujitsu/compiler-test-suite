#include <stdlib.h>
extern unsigned int v1 (signed char, signed int, unsigned char, unsigned short);
extern unsigned int (*v2) (signed char, signed int, unsigned char, unsigned short);
signed int v3 (unsigned int);
signed int (*v4) (unsigned int) = v3;
extern signed int v5 (signed int, signed short, signed short, signed short);
extern signed int (*v6) (signed int, signed short, signed short, signed short);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern void v9 (signed int, signed char, unsigned short);
extern void (*v10) (signed int, signed char, unsigned short);
signed char v11 (signed int);
signed char (*v12) (signed int) = v11;
static signed char v13 (signed int);
static signed char (*v14) (signed int) = v13;
extern signed int v15 (unsigned int);
extern signed int (*v16) (unsigned int);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed short v19 (signed short, unsigned short);
extern signed short (*v20) (signed short, unsigned short);
extern signed char v21 (unsigned char, unsigned char, signed short, signed int);
extern signed char (*v22) (unsigned char, unsigned char, signed short, signed int);
unsigned int v23 (signed char);
unsigned int (*v24) (signed char) = v23;
extern signed char v25 (unsigned short, unsigned int, unsigned short, unsigned int);
extern signed char (*v26) (unsigned short, unsigned int, unsigned short, unsigned int);
unsigned char v27 (signed short, signed char);
unsigned char (*v28) (signed short, signed char) = v27;
signed short v29 (signed char, signed short);
signed short (*v30) (signed char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v86 = 0;
signed char v85 = -4;
signed char v84 = 2;

signed short v29 (signed char v87, signed short v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned short v91 = 6;
signed char v90 = 2;
unsigned short v89 = 4;
trace++;
switch (trace)
{
case 11: 
return v88;
default: abort ();
}
}
}
}

unsigned char v27 (signed short v92, signed char v93)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed char v96 = -1;
unsigned short v95 = 7;
unsigned int v94 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (signed char v97)
{
history[history_index++] = (int)v97;
{
for (;;) {
unsigned int v100 = 4U;
unsigned int v99 = 0U;
signed char v98 = 2;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v101;
unsigned int v102;
unsigned short v103;
unsigned int v104;
signed char v105;
v101 = 2 - 7;
v102 = v100 - v100;
v103 = 2 + 0;
v104 = v99 + v99;
v105 = v25 (v101, v102, v103, v104);
history[history_index++] = (int)v105;
}
break;
case 9: 
{
unsigned short v106;
unsigned int v107;
unsigned short v108;
unsigned int v109;
signed char v110;
v106 = 4 + 0;
v107 = 0U + v100;
v108 = 0 - 2;
v109 = v99 + 7U;
v110 = v25 (v106, v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 13: 
return 7U;
default: abort ();
}
}
}
}

static signed char v13 (signed int v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
unsigned short v114 = 2;
unsigned char v113 = 5;
unsigned short v112 = 3;
trace++;
switch (trace)
{
case 2: 
return 1;
default: abort ();
}
}
}
}

signed char v11 (signed int v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
unsigned short v118 = 5;
unsigned char v117 = 6;
unsigned short v116 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned int v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
signed int v122 = 2;
signed int v121 = 2;
unsigned short v120 = 2;
trace++;
switch (trace)
{
case 1: 
{
signed int v123;
signed char v124;
v123 = v122 - v121;
v124 = v13 (v123);
history[history_index++] = (int)v124;
}
break;
case 3: 
return v121;
case 5: 
{
signed int v125;
signed short v126;
signed short v127;
signed short v128;
signed int v129;
v125 = 2 + 1;
v126 = -3 - -4;
v127 = 0 + 1;
v128 = -1 + 3;
v129 = v5 (v125, v126, v127, v128);
history[history_index++] = (int)v129;
}
break;
case 15: 
return v122;
default: abort ();
}
}
}
}
