#include <stdlib.h>
extern void v1 (unsigned int, signed char);
extern void (*v2) (unsigned int, signed char);
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
extern signed char v5 (signed short);
extern signed char (*v6) (signed short);
extern unsigned char v7 (unsigned int, unsigned char, signed short);
extern unsigned char (*v8) (unsigned int, unsigned char, signed short);
signed short v9 (signed int, unsigned int, unsigned int, signed int);
signed short (*v10) (signed int, unsigned int, unsigned int, signed int) = v9;
signed short v11 (unsigned char, signed short, unsigned short, signed int);
signed short (*v12) (unsigned char, signed short, unsigned short, signed int) = v11;
unsigned short v13 (unsigned char, unsigned char, signed char);
unsigned short (*v14) (unsigned char, unsigned char, signed char) = v13;
extern unsigned char v15 (unsigned int, signed char);
extern unsigned char (*v16) (unsigned int, signed char);
extern unsigned int v17 (signed short, unsigned int);
extern unsigned int (*v18) (signed short, unsigned int);
void v19 (signed char, signed char, signed int);
void (*v20) (signed char, signed char, signed int) = v19;
signed int v21 (unsigned int);
signed int (*v22) (unsigned int) = v21;
static signed short v23 (signed short, unsigned int, unsigned short, unsigned short);
static signed short (*v24) (signed short, unsigned int, unsigned short, unsigned short) = v23;
extern signed char v25 (unsigned int, unsigned char, signed short);
extern signed char (*v26) (unsigned int, unsigned char, signed short);
extern signed char v27 (signed short, signed short, signed int);
extern signed char (*v28) (signed short, signed short, signed int);
signed int v29 (signed int, signed int, unsigned int, signed char);
signed int (*v30) (signed int, signed int, unsigned int, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v70 = 3;
unsigned char v69 = 3;
unsigned char v68 = 1;

signed int v29 (signed int v71, signed int v72, unsigned int v73, signed char v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned short v77 = 6;
unsigned short v76 = 6;
unsigned int v75 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v23 (signed short v78, unsigned int v79, unsigned short v80, unsigned short v81)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed char v84 = -3;
signed short v83 = -4;
unsigned int v82 = 4U;
trace++;
switch (trace)
{
case 5: 
return -2;
case 7: 
return 1;
case 9: 
return v78;
case 11: 
return 3;
default: abort ();
}
}
}
}

signed int v21 (unsigned int v85)
{
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = -4;
signed short v87 = -2;
signed int v86 = 1;
trace++;
switch (trace)
{
case 4: 
{
signed short v89;
unsigned int v90;
unsigned short v91;
unsigned short v92;
signed short v93;
v89 = 3 - v88;
v90 = 4U + 5U;
v91 = 5 + 6;
v92 = 1 - 7;
v93 = v23 (v89, v90, v91, v92);
history[history_index++] = (int)v93;
}
break;
case 6: 
{
signed short v94;
unsigned int v95;
unsigned short v96;
unsigned short v97;
signed short v98;
v94 = v87 + -3;
v95 = v85 - v85;
v96 = 3 + 6;
v97 = 3 - 2;
v98 = v23 (v94, v95, v96, v97);
history[history_index++] = (int)v98;
}
break;
case 8: 
{
signed short v99;
unsigned int v100;
unsigned short v101;
unsigned short v102;
signed short v103;
v99 = v88 - v88;
v100 = 5U + v85;
v101 = 6 + 4;
v102 = 1 - 0;
v103 = v23 (v99, v100, v101, v102);
history[history_index++] = (int)v103;
}
break;
case 10: 
{
signed short v104;
unsigned int v105;
unsigned short v106;
unsigned short v107;
signed short v108;
v104 = v87 + 3;
v105 = 7U - 4U;
v106 = 1 - 3;
v107 = 7 + 6;
v108 = v23 (v104, v105, v106, v107);
history[history_index++] = (int)v108;
}
break;
case 12: 
return v86;
default: abort ();
}
}
}
}

void v19 (signed char v109, signed char v110, signed int v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed int v114 = -4;
unsigned int v113 = 4U;
unsigned short v112 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (unsigned char v115, unsigned char v116, signed char v117)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed short v120 = -1;
unsigned char v119 = 0;
unsigned short v118 = 0;
trace++;
switch (trace)
{
case 2: 
return v118;
default: abort ();
}
}
}
}

signed short v11 (unsigned char v121, signed short v122, unsigned short v123, signed int v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 3;
signed char v126 = -2;
signed short v125 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (signed int v128, unsigned int v129, unsigned int v130, signed int v131)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed short v134 = 1;
signed short v133 = -1;
signed short v132 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
