#include <stdlib.h>
signed short v3 (signed int, signed char);
signed short (*v4) (signed int, signed char) = v3;
unsigned short v5 (unsigned char, signed short, unsigned int, unsigned int);
unsigned short (*v6) (unsigned char, signed short, unsigned int, unsigned int) = v5;
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern signed short v9 (signed short, unsigned char);
extern signed short (*v10) (signed short, unsigned char);
unsigned short v11 (unsigned short);
unsigned short (*v12) (unsigned short) = v11;
signed int v13 (unsigned char);
signed int (*v14) (unsigned char) = v13;
extern unsigned short v15 (signed short, signed char, signed int, signed char);
extern unsigned short (*v16) (signed short, signed char, signed int, signed char);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
void v19 (unsigned char, signed int);
void (*v20) (unsigned char, signed int) = v19;
unsigned int v21 (signed char);
unsigned int (*v22) (signed char) = v21;
extern void v23 (signed int, signed int);
extern void (*v24) (signed int, signed int);
unsigned int v25 (unsigned int, signed short, unsigned char);
unsigned int (*v26) (unsigned int, signed short, unsigned char) = v25;
extern void v27 (unsigned int);
extern void (*v28) (unsigned int);
extern unsigned char v29 (unsigned char, signed short);
extern unsigned char (*v30) (unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v84 = 1;
signed short v83 = 2;
unsigned short v82 = 6;

unsigned int v25 (unsigned int v85, signed short v86, unsigned char v87)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned char v90 = 4;
unsigned short v89 = 0;
signed short v88 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (signed char v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
unsigned int v94 = 6U;
signed char v93 = -3;
signed short v92 = 2;
trace++;
switch (trace)
{
case 1: 
{
signed int v95;
signed int v96;
v95 = 3 + 0;
v96 = 1 - 3;
v23 (v95, v96);
}
break;
case 3: 
{
unsigned char v97;
signed short v98;
unsigned char v99;
v97 = 5 + 3;
v98 = 2 - -2;
v99 = v29 (v97, v98);
history[history_index++] = (int)v99;
}
break;
case 5: 
{
unsigned char v100;
signed short v101;
unsigned char v102;
v100 = 4 - 5;
v101 = 3 - v92;
v102 = v29 (v100, v101);
history[history_index++] = (int)v102;
}
break;
case 7: 
{
signed int v103;
signed int v104;
v103 = 3 - -4;
v104 = -2 - -3;
v23 (v103, v104);
}
break;
case 9: 
return v94;
default: abort ();
}
}
}
}

void v19 (unsigned char v105, signed int v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned int v109 = 5U;
unsigned int v108 = 3U;
signed char v107 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned char v110)
{
history[history_index++] = (int)v110;
{
for (;;) {
unsigned char v113 = 3;
signed char v112 = 2;
unsigned int v111 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (unsigned short v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
signed char v117 = -2;
signed short v116 = 3;
unsigned int v115 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (unsigned char v118, signed short v119, unsigned int v120, unsigned int v121)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned char v124 = 7;
unsigned short v123 = 1;
unsigned int v122 = 5U;
trace++;
switch (trace)
{
case 11: 
return v123;
default: abort ();
}
}
}
}

signed short v3 (signed int v125, signed char v126)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned char v129 = 2;
signed short v128 = -4;
signed int v127 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
