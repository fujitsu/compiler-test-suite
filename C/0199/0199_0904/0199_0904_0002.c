#include <stdlib.h>
signed int v1 (signed char, signed short, signed short);
signed int (*v2) (signed char, signed short, signed short) = v1;
signed char v3 (void);
signed char (*v4) (void) = v3;
extern unsigned short v5 (signed short);
extern unsigned short (*v6) (signed short);
extern signed short v7 (signed short, unsigned char, signed char, signed short);
extern signed short (*v8) (signed short, unsigned char, signed char, signed short);
extern unsigned int v9 (signed short, unsigned char);
extern unsigned int (*v10) (signed short, unsigned char);
unsigned char v11 (unsigned short, signed char, signed int, signed short);
unsigned char (*v12) (unsigned short, signed char, signed int, signed short) = v11;
extern unsigned int v13 (unsigned short);
extern unsigned int (*v14) (unsigned short);
void v15 (signed int, signed char);
void (*v16) (signed int, signed char) = v15;
extern unsigned short v17 (unsigned short, signed int, unsigned short);
extern unsigned short (*v18) (unsigned short, signed int, unsigned short);
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
extern signed int v21 (signed short, unsigned short, unsigned short);
extern signed int (*v22) (signed short, unsigned short, unsigned short);
extern unsigned short v23 (signed int, signed short, unsigned char, unsigned short);
extern unsigned short (*v24) (signed int, signed short, unsigned char, unsigned short);
void v25 (unsigned char, signed short, signed int);
void (*v26) (unsigned char, signed short, signed int) = v25;
extern signed short v27 (unsigned int, signed short, unsigned char, signed char);
extern signed short (*v28) (unsigned int, signed short, unsigned char, signed char);
unsigned short v29 (unsigned char);
unsigned short (*v30) (unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v90 = 3;
signed char v89 = -3;
signed int v88 = 3;

unsigned short v29 (unsigned char v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
unsigned int v94 = 2U;
unsigned short v93 = 4;
signed short v92 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (unsigned char v95, signed short v96, signed int v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed short v100 = -3;
signed int v99 = 1;
signed char v98 = 3;
trace++;
switch (trace)
{
case 2: 
return;
case 6: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

void v15 (signed int v101, signed char v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed char v105 = 0;
unsigned char v104 = 7;
signed short v103 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned short v106, signed char v107, signed int v108, signed short v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed short v112 = 1;
unsigned int v111 = 5U;
signed char v110 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (void)
{
{
for (;;) {
unsigned int v115 = 0U;
unsigned int v114 = 6U;
unsigned short v113 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed char v116, signed short v117, signed short v118)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed char v121 = 1;
unsigned char v120 = 5;
unsigned short v119 = 5;
trace++;
switch (trace)
{
case 0: 
{
signed short v122;
unsigned char v123;
unsigned int v124;
v122 = v117 - v118;
v123 = v120 - 2;
v124 = v9 (v122, v123);
history[history_index++] = (int)v124;
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}
