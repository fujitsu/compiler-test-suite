#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed short, unsigned char, unsigned short);
extern unsigned short (*v2) (unsigned short, signed short, unsigned char, unsigned short);
signed char v3 (signed short, signed short, unsigned short);
signed char (*v4) (signed short, signed short, unsigned short) = v3;
extern signed int v5 (signed short, unsigned short);
extern signed int (*v6) (signed short, unsigned short);
signed char v7 (unsigned char, signed short);
signed char (*v8) (unsigned char, signed short) = v7;
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
unsigned char v11 (unsigned short);
unsigned char (*v12) (unsigned short) = v11;
extern signed char v13 (signed int);
extern signed char (*v14) (signed int);
extern signed char v15 (unsigned char, unsigned char);
extern signed char (*v16) (unsigned char, unsigned char);
static signed char v17 (unsigned char, unsigned short, signed int, unsigned char);
static signed char (*v18) (unsigned char, unsigned short, signed int, unsigned char) = v17;
extern unsigned int v19 (signed int, unsigned char);
extern unsigned int (*v20) (signed int, unsigned char);
unsigned int v21 (signed int);
unsigned int (*v22) (signed int) = v21;
extern signed int v23 (signed char, unsigned int, unsigned short);
extern signed int (*v24) (signed char, unsigned int, unsigned short);
unsigned short v25 (unsigned short, unsigned int);
unsigned short (*v26) (unsigned short, unsigned int) = v25;
extern unsigned char v27 (signed short, unsigned char, signed char);
extern unsigned char (*v28) (signed short, unsigned char, signed char);
signed char v29 (unsigned int, unsigned int, unsigned short, signed int);
signed char (*v30) (unsigned int, unsigned int, unsigned short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v85 = -1;
signed int v84 = -1;
unsigned char v83 = 0;

signed char v29 (unsigned int v86, unsigned int v87, unsigned short v88, signed int v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed short v92 = -2;
signed char v91 = -4;
unsigned short v90 = 1;
trace++;
switch (trace)
{
case 8: 
return 1;
case 10: 
{
unsigned char v93;
unsigned short v94;
signed int v95;
unsigned char v96;
signed char v97;
v93 = 6 - 2;
v94 = 1 + 2;
v95 = -3 - v89;
v96 = 0 - 1;
v97 = v17 (v93, v94, v95, v96);
history[history_index++] = (int)v97;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}

unsigned short v25 (unsigned short v98, unsigned int v99)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned short v102 = 5;
signed char v101 = -2;
signed int v100 = -1;
trace++;
switch (trace)
{
case 2: 
{
signed short v103;
unsigned char v104;
signed char v105;
unsigned char v106;
v103 = -2 + -1;
v104 = 6 + 5;
v105 = 3 - -4;
v106 = v27 (v103, v104, v105);
history[history_index++] = (int)v106;
}
break;
case 4: 
return 4;
default: abort ();
}
}
}
}

unsigned int v21 (signed int v107)
{
history[history_index++] = (int)v107;
{
for (;;) {
signed int v110 = 0;
signed short v109 = 1;
unsigned short v108 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v17 (unsigned char v111, unsigned short v112, signed int v113, unsigned char v114)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed short v117 = 3;
unsigned char v116 = 4;
unsigned char v115 = 3;
trace++;
switch (trace)
{
case 11: 
return -4;
default: abort ();
}
}
}
}

unsigned char v11 (unsigned short v118)
{
history[history_index++] = (int)v118;
{
for (;;) {
signed short v121 = -4;
unsigned short v120 = 5;
unsigned char v119 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned char v122, signed short v123)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned char v126 = 6;
signed int v125 = 3;
signed int v124 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed short v127, signed short v128, unsigned short v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed int v132 = 0;
signed char v131 = -1;
unsigned char v130 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
