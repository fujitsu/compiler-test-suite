#include <stdlib.h>
extern signed char v1 (signed char);
extern signed char (*v2) (signed char);
extern unsigned char v5 (signed char, unsigned int, unsigned int, unsigned short);
extern unsigned char (*v6) (signed char, unsigned int, unsigned int, unsigned short);
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
void v9 (signed int, signed int, unsigned int, signed int);
void (*v10) (signed int, signed int, unsigned int, signed int) = v9;
extern signed char v11 (void);
extern signed char (*v12) (void);
unsigned int v13 (unsigned short, unsigned char, unsigned short);
unsigned int (*v14) (unsigned short, unsigned char, unsigned short) = v13;
extern signed char v15 (signed int, unsigned int, unsigned int, signed char);
extern signed char (*v16) (signed int, unsigned int, unsigned int, signed char);
unsigned int v17 (signed short, unsigned int, signed char, unsigned int);
unsigned int (*v18) (signed short, unsigned int, signed char, unsigned int) = v17;
static signed char v19 (signed int, unsigned char);
static signed char (*v20) (signed int, unsigned char) = v19;
extern signed char v21 (void);
extern signed char (*v22) (void);
signed char v23 (signed char, signed char, signed int);
signed char (*v24) (signed char, signed char, signed int) = v23;
extern signed char v25 (signed int, signed char);
extern signed char (*v26) (signed int, signed char);
signed short v27 (void);
signed short (*v28) (void) = v27;
extern void v29 (unsigned char, unsigned char);
extern void (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v81 = -2;
signed short v80 = -4;
signed int v79 = 3;

signed short v27 (void)
{
{
for (;;) {
signed char v84 = 1;
unsigned short v83 = 0;
unsigned int v82 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (signed char v85, signed char v86, signed int v87)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned short v90 = 5;
signed short v89 = 3;
unsigned char v88 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v19 (signed int v91, unsigned char v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed char v95 = 3;
unsigned short v94 = 0;
unsigned short v93 = 5;
trace++;
switch (trace)
{
case 9: 
return 0;
default: abort ();
}
}
}
}

unsigned int v17 (signed short v96, unsigned int v97, signed char v98, unsigned int v99)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed short v102 = -1;
signed char v101 = -4;
signed short v100 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (unsigned short v103, unsigned char v104, unsigned short v105)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed int v108 = 1;
signed char v107 = 2;
unsigned short v106 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed int v109, signed int v110, unsigned int v111, signed int v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned char v115 = 5;
unsigned short v114 = 4;
unsigned int v113 = 6U;
trace++;
switch (trace)
{
case 8: 
{
signed int v116;
unsigned char v117;
signed char v118;
v116 = v109 + v109;
v117 = 0 - 3;
v118 = v19 (v116, v117);
history[history_index++] = (int)v118;
}
break;
case 10: 
{
signed char v119;
v119 = v21 ();
history[history_index++] = (int)v119;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
