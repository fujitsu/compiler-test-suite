#include <stdlib.h>
unsigned char v1 (unsigned int);
unsigned char (*v2) (unsigned int) = v1;
extern unsigned char v3 (signed short);
extern unsigned char (*v4) (signed short);
static signed int v5 (signed char, unsigned char, signed int);
static signed int (*v6) (signed char, unsigned char, signed int) = v5;
extern signed short v7 (unsigned char);
extern signed short (*v8) (unsigned char);
extern signed char v9 (void);
extern signed char (*v10) (void);
signed char v11 (void);
signed char (*v12) (void) = v11;
extern void v13 (unsigned int);
extern void (*v14) (unsigned int);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
signed short v19 (void);
signed short (*v20) (void) = v19;
extern signed char v21 (signed short);
extern signed char (*v22) (signed short);
void v25 (unsigned char, unsigned int, signed int, signed short);
void (*v26) (unsigned char, unsigned int, signed int, signed short) = v25;
extern unsigned char v27 (unsigned int, unsigned char);
extern unsigned char (*v28) (unsigned int, unsigned char);
extern unsigned short v29 (unsigned short, signed char);
extern unsigned short (*v30) (unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v99 = -2;
unsigned char v98 = 0;
signed short v97 = 1;

void v25 (unsigned char v100, unsigned int v101, signed int v102, signed short v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed char v106 = -1;
unsigned int v105 = 1U;
signed int v104 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (void)
{
{
for (;;) {
signed int v109 = 3;
signed char v108 = 3;
signed int v107 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (void)
{
{
for (;;) {
unsigned short v112 = 5;
unsigned int v111 = 3U;
unsigned char v110 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v5 (signed char v113, unsigned char v114, signed int v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed int v118 = 1;
signed short v117 = 0;
signed int v116 = 1;
trace++;
switch (trace)
{
case 9: 
{
unsigned int v119;
signed short v120;
v119 = 3U - 7U;
v120 = v17 (v119);
history[history_index++] = (int)v120;
}
break;
case 13: 
return v118;
default: abort ();
}
}
}
}

unsigned char v1 (unsigned int v121)
{
history[history_index++] = (int)v121;
{
for (;;) {
signed int v124 = 0;
signed char v123 = -1;
signed short v122 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed int v125;
v125 = v15 ();
history[history_index++] = (int)v125;
}
break;
case 2: 
{
signed char v126;
v126 = v9 ();
history[history_index++] = (int)v126;
}
break;
case 8: 
{
signed char v127;
unsigned char v128;
signed int v129;
signed int v130;
v127 = 0 - v123;
v128 = 7 - 0;
v129 = -2 + v124;
v130 = v5 (v127, v128, v129);
history[history_index++] = (int)v130;
}
break;
case 14: 
return 3;
default: abort ();
}
}
}
}
