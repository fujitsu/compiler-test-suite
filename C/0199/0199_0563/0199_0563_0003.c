#include <stdlib.h>
extern unsigned short v1 (signed int, unsigned int, signed short, signed char);
extern unsigned short (*v2) (signed int, unsigned int, signed short, signed char);
extern signed char v3 (unsigned int, unsigned short);
extern signed char (*v4) (unsigned int, unsigned short);
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
extern signed short v7 (signed short, unsigned char, signed short, signed short);
extern signed short (*v8) (signed short, unsigned char, signed short, signed short);
signed int v9 (signed char, signed char, unsigned int);
signed int (*v10) (signed char, signed char, unsigned int) = v9;
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
void v13 (signed short);
void (*v14) (signed short) = v13;
extern signed char v15 (signed short, signed char);
extern signed char (*v16) (signed short, signed char);
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
void v19 (unsigned int, signed int, unsigned char);
void (*v20) (unsigned int, signed int, unsigned char) = v19;
unsigned short v21 (unsigned char);
unsigned short (*v22) (unsigned char) = v21;
signed char v23 (signed char, unsigned char, signed char);
signed char (*v24) (signed char, unsigned char, signed char) = v23;
signed int v25 (unsigned char);
signed int (*v26) (unsigned char) = v25;
extern unsigned char v27 (unsigned int);
extern unsigned char (*v28) (unsigned int);
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v77 = 1;
unsigned char v76 = 3;
unsigned short v75 = 7;

void v29 (void)
{
{
for (;;) {
unsigned int v80 = 3U;
unsigned int v79 = 7U;
signed int v78 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (unsigned char v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
signed int v84 = -1;
unsigned int v83 = 5U;
signed char v82 = 0;
trace++;
switch (trace)
{
case 1: 
return -4;
default: abort ();
}
}
}
}

signed char v23 (signed char v85, unsigned char v86, signed char v87)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed int v90 = 0;
unsigned short v89 = 0;
unsigned char v88 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (unsigned char v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
unsigned char v94 = 1;
signed int v93 = 2;
signed char v92 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (unsigned int v95, signed int v96, unsigned char v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned int v100 = 5U;
signed short v99 = -3;
signed int v98 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (void)
{
{
for (;;) {
unsigned int v103 = 5U;
signed short v102 = 1;
signed int v101 = 3;
trace++;
switch (trace)
{
case 5: 
return 5;
default: abort ();
}
}
}
}

void v13 (signed short v104)
{
history[history_index++] = (int)v104;
{
for (;;) {
signed short v107 = -4;
signed int v106 = -1;
signed short v105 = 2;
trace++;
switch (trace)
{
case 7: 
{
signed short v108;
signed char v109;
signed char v110;
v108 = v104 + v105;
v109 = 3 - -3;
v110 = v15 (v108, v109);
history[history_index++] = (int)v110;
}
break;
case 9: 
{
signed short v111;
signed char v112;
signed char v113;
v111 = 2 + v104;
v112 = 3 + -3;
v113 = v15 (v111, v112);
history[history_index++] = (int)v113;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

signed int v9 (signed char v114, signed char v115, unsigned int v116)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned char v119 = 2;
unsigned char v118 = 3;
signed int v117 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (void)
{
{
for (;;) {
signed int v122 = 2;
unsigned char v121 = 6;
unsigned short v120 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
