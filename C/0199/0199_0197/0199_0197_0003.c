#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned int);
extern unsigned short (*v2) (signed short, unsigned int);
extern unsigned short v3 (unsigned short, unsigned short);
extern unsigned short (*v4) (unsigned short, unsigned short);
extern unsigned short v5 (signed int, unsigned int);
extern unsigned short (*v6) (signed int, unsigned int);
extern signed char v7 (signed int, unsigned short, unsigned char, unsigned short);
extern signed char (*v8) (signed int, unsigned short, unsigned char, unsigned short);
extern unsigned char v9 (signed int, unsigned char, signed char);
extern unsigned char (*v10) (signed int, unsigned char, signed char);
extern signed char v11 (signed int, unsigned int, unsigned short);
extern signed char (*v12) (signed int, unsigned int, unsigned short);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned short v15 (signed short);
extern unsigned short (*v16) (signed short);
signed short v17 (signed char, signed int);
signed short (*v18) (signed char, signed int) = v17;
signed short v19 (unsigned short, unsigned short, signed int, signed short);
signed short (*v20) (unsigned short, unsigned short, signed int, signed short) = v19;
extern signed short v21 (unsigned int, unsigned int);
extern signed short (*v22) (unsigned int, unsigned int);
void v23 (signed char, unsigned int, unsigned char);
void (*v24) (signed char, unsigned int, unsigned char) = v23;
extern unsigned char v25 (signed char, signed short, unsigned short);
extern unsigned char (*v26) (signed char, signed short, unsigned short);
unsigned short v27 (signed short, signed short, signed int);
unsigned short (*v28) (signed short, signed short, signed int) = v27;
unsigned int v29 (void);
unsigned int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v87 = -2;
signed char v86 = 1;
unsigned short v85 = 4;

unsigned int v29 (void)
{
{
for (;;) {
signed short v90 = 0;
unsigned char v89 = 2;
unsigned short v88 = 7;
trace++;
switch (trace)
{
case 9: 
return 5U;
case 11: 
return 2U;
default: abort ();
}
}
}
}

unsigned short v27 (signed short v91, signed short v92, signed int v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed char v96 = 3;
signed int v95 = -2;
signed char v94 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (signed char v97, unsigned int v98, unsigned char v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned short v102 = 0;
signed short v101 = -3;
unsigned char v100 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (unsigned short v103, unsigned short v104, signed int v105, signed short v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed char v109 = 1;
signed char v108 = 0;
signed short v107 = -3;
trace++;
switch (trace)
{
case 1: 
{
signed int v110;
unsigned short v111;
unsigned char v112;
unsigned short v113;
signed char v114;
v110 = -2 - -2;
v111 = v103 - v103;
v112 = 0 + 7;
v113 = 7 - v103;
v114 = v7 (v110, v111, v112, v113);
history[history_index++] = (int)v114;
}
break;
case 3: 
return v107;
case 5: 
{
signed int v115;
unsigned short v116;
unsigned char v117;
unsigned short v118;
signed char v119;
v115 = -4 + v105;
v116 = v104 - v103;
v117 = 6 - 4;
v118 = v103 + v104;
v119 = v7 (v115, v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 7: 
{
signed int v120;
unsigned short v121;
unsigned char v122;
unsigned short v123;
signed char v124;
v120 = v105 - 0;
v121 = 5 + 3;
v122 = 6 - 1;
v123 = v103 + v103;
v124 = v7 (v120, v121, v122, v123);
history[history_index++] = (int)v124;
}
break;
case 13: 
return -4;
default: abort ();
}
}
}
}

signed short v17 (signed char v125, signed int v126)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed int v129 = 1;
signed char v128 = -4;
unsigned short v127 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
