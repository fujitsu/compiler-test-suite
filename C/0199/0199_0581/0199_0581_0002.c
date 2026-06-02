#include <stdlib.h>
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
extern signed short v5 (unsigned int, unsigned int);
extern signed short (*v6) (unsigned int, unsigned int);
void v7 (unsigned char, signed int, unsigned short);
void (*v8) (unsigned char, signed int, unsigned short) = v7;
unsigned short v9 (unsigned short, unsigned short, signed int, unsigned char);
unsigned short (*v10) (unsigned short, unsigned short, signed int, unsigned char) = v9;
void v11 (signed char, unsigned char);
void (*v12) (signed char, unsigned char) = v11;
extern void v13 (unsigned short, unsigned short, unsigned char);
extern void (*v14) (unsigned short, unsigned short, unsigned char);
unsigned short v15 (signed char, signed char, signed short, unsigned char);
unsigned short (*v16) (signed char, signed char, signed short, unsigned char) = v15;
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned int v21 (signed int);
extern unsigned int (*v22) (signed int);
extern signed char v23 (signed int, signed int, unsigned char);
extern signed char (*v24) (signed int, signed int, unsigned char);
signed char v25 (signed char);
signed char (*v26) (signed char) = v25;
extern unsigned short v27 (unsigned char, signed char, signed char);
extern unsigned short (*v28) (unsigned char, signed char, signed char);
extern void v29 (signed short);
extern void (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v82 = 3;
unsigned int v81 = 1U;
unsigned short v80 = 5;

signed char v25 (signed char v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
signed short v86 = 2;
unsigned char v85 = 7;
signed char v84 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed char v87, signed char v88, signed short v89, unsigned char v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned int v93 = 2U;
signed char v92 = 1;
unsigned short v91 = 6;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v94;
unsigned short v95;
unsigned char v96;
v94 = 4 + 3;
v95 = 3 + 5;
v96 = 6 - 6;
v13 (v94, v95, v96);
}
break;
case 3: 
{
unsigned short v97;
unsigned short v98;
unsigned char v99;
v97 = 3 - 5;
v98 = 4 + 5;
v99 = v90 - v90;
v13 (v97, v98, v99);
}
break;
case 5: 
{
unsigned short v100;
unsigned short v101;
unsigned char v102;
v100 = 0 + v91;
v101 = v91 - v91;
v102 = 2 + 2;
v13 (v100, v101, v102);
}
break;
case 7: 
return 5;
default: abort ();
}
}
}
}

void v11 (signed char v103, unsigned char v104)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned char v107 = 3;
signed int v106 = -1;
signed char v105 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned short v108, unsigned short v109, signed int v110, unsigned char v111)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned short v114 = 1;
signed char v113 = 0;
signed char v112 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (unsigned char v115, signed int v116, unsigned short v117)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned char v120 = 1;
unsigned int v119 = 0U;
signed int v118 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
