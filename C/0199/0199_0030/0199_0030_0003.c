#include <stdlib.h>
signed short v1 (signed short, unsigned char, unsigned int);
signed short (*v2) (signed short, unsigned char, unsigned int) = v1;
signed int v3 (unsigned int, signed char);
signed int (*v4) (unsigned int, signed char) = v3;
extern unsigned char v5 (signed char, unsigned short, signed short);
extern unsigned char (*v6) (signed char, unsigned short, signed short);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned int v9 (signed short, unsigned short);
extern unsigned int (*v10) (signed short, unsigned short);
extern signed short v11 (unsigned char, unsigned int, signed short, signed short);
extern signed short (*v12) (unsigned char, unsigned int, signed short, signed short);
static void v13 (signed short);
static void (*v14) (signed short) = v13;
unsigned char v15 (unsigned char);
unsigned char (*v16) (unsigned char) = v15;
extern signed char v17 (signed short, signed char, signed short);
extern signed char (*v18) (signed short, signed char, signed short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed int v21 (unsigned char, signed int, unsigned short, unsigned int);
extern signed int (*v22) (unsigned char, signed int, unsigned short, unsigned int);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
void v27 (signed short, unsigned char, unsigned char, unsigned int);
void (*v28) (signed short, unsigned char, unsigned char, unsigned int) = v27;
extern void v29 (signed char, signed short, signed short);
extern void (*v30) (signed char, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v92 = 6;
unsigned char v91 = 1;
signed char v90 = 2;

void v27 (signed short v93, unsigned char v94, unsigned char v95, unsigned int v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned char v99 = 2;
unsigned short v98 = 3;
signed int v97 = 1;
trace++;
switch (trace)
{
case 9: 
{
signed short v100;
v100 = -3 - v93;
v13 (v100);
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned char v15 (unsigned char v101)
{
history[history_index++] = (int)v101;
{
for (;;) {
signed short v104 = 2;
unsigned short v103 = 0;
signed short v102 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v13 (signed short v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
signed int v108 = 1;
signed int v107 = 3;
signed short v106 = 0;
trace++;
switch (trace)
{
case 10: 
return;
default: abort ();
}
}
}
}

signed int v3 (unsigned int v109, signed char v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed char v113 = 3;
signed short v112 = 3;
signed char v111 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed short v114, unsigned char v115, unsigned int v116)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed int v119 = -1;
signed char v118 = -1;
signed int v117 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v120;
v120 = v23 ();
history[history_index++] = (int)v120;
}
break;
case 2: 
{
unsigned char v121;
signed int v122;
unsigned short v123;
unsigned int v124;
signed int v125;
v121 = 7 - 6;
v122 = v119 + v117;
v123 = 2 - 6;
v124 = 6U + 6U;
v125 = v21 (v121, v122, v123, v124);
history[history_index++] = (int)v125;
}
break;
case 4: 
{
signed char v126;
unsigned short v127;
signed short v128;
unsigned char v129;
v126 = v118 + 3;
v127 = 2 + 5;
v128 = v114 - -2;
v129 = v5 (v126, v127, v128);
history[history_index++] = (int)v129;
}
break;
case 14: 
return v114;
default: abort ();
}
}
}
}
