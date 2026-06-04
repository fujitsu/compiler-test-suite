#include <stdlib.h>
extern unsigned int v1 (unsigned char, unsigned char, signed short);
extern unsigned int (*v2) (unsigned char, unsigned char, signed short);
extern unsigned char v3 (signed char, signed char, unsigned short, unsigned char);
extern unsigned char (*v4) (signed char, signed char, unsigned short, unsigned char);
extern unsigned short v5 (signed short, signed int, signed char);
extern unsigned short (*v6) (signed short, signed int, signed char);
signed int v7 (unsigned int);
signed int (*v8) (unsigned int) = v7;
signed int v9 (unsigned short, unsigned int);
signed int (*v10) (unsigned short, unsigned int) = v9;
extern signed char v11 (signed int, unsigned short, signed short, unsigned char);
extern signed char (*v12) (signed int, unsigned short, signed short, unsigned char);
extern signed short v13 (signed int, unsigned int, signed char, unsigned char);
extern signed short (*v14) (signed int, unsigned int, signed char, unsigned char);
void v15 (signed char, unsigned short);
void (*v16) (signed char, unsigned short) = v15;
unsigned char v17 (unsigned char, signed int);
unsigned char (*v18) (unsigned char, signed int) = v17;
extern signed short v19 (unsigned char);
extern signed short (*v20) (unsigned char);
extern signed short v21 (signed short, signed short, unsigned short);
extern signed short (*v22) (signed short, signed short, unsigned short);
extern unsigned short v23 (signed char, signed int, signed short, signed short);
extern unsigned short (*v24) (signed char, signed int, signed short, signed short);
extern signed int v25 (unsigned int);
extern signed int (*v26) (unsigned int);
extern void v29 (unsigned short, unsigned int);
extern void (*v30) (unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v98 = 2;
signed char v97 = 0;
unsigned char v96 = 2;

unsigned char v17 (unsigned char v99, signed int v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed char v103 = 2;
unsigned char v102 = 5;
signed int v101 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed char v104, unsigned short v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned int v108 = 7U;
unsigned int v107 = 7U;
signed char v106 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned short v109, unsigned int v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed char v113 = 0;
unsigned char v112 = 4;
unsigned int v111 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned int v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
signed int v117 = -1;
signed int v116 = -2;
signed int v115 = -2;
trace++;
switch (trace)
{
case 1: 
{
signed char v118;
signed char v119;
unsigned short v120;
unsigned char v121;
unsigned char v122;
v118 = -1 + -1;
v119 = 3 - -1;
v120 = 6 + 0;
v121 = 7 + 7;
v122 = v3 (v118, v119, v120, v121);
history[history_index++] = (int)v122;
}
break;
case 3: 
{
unsigned char v123;
signed short v124;
v123 = 5 + 7;
v124 = v19 (v123);
history[history_index++] = (int)v124;
}
break;
case 13: 
return v117;
default: abort ();
}
}
}
}
