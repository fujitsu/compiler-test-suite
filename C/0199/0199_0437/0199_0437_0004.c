#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned short);
extern unsigned short (*v2) (signed short, unsigned short);
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
extern signed int v5 (signed char, unsigned short, signed short, unsigned char);
extern signed int (*v6) (signed char, unsigned short, signed short, unsigned char);
unsigned short v7 (unsigned int);
unsigned short (*v8) (unsigned int) = v7;
extern signed int v9 (unsigned int, unsigned int, signed char, signed int);
extern signed int (*v10) (unsigned int, unsigned int, signed char, signed int);
extern void v11 (signed char, signed int, unsigned short);
extern void (*v12) (signed char, signed int, unsigned short);
signed char v13 (signed char, signed short);
signed char (*v14) (signed char, signed short) = v13;
signed int v15 (void);
signed int (*v16) (void) = v15;
extern unsigned char v17 (signed char, unsigned short);
extern unsigned char (*v18) (signed char, unsigned short);
signed char v19 (signed char);
signed char (*v20) (signed char) = v19;
extern unsigned short v21 (unsigned char);
extern unsigned short (*v22) (unsigned char);
extern void v23 (unsigned short, unsigned int, signed char);
extern void (*v24) (unsigned short, unsigned int, signed char);
extern unsigned short v25 (unsigned short);
extern unsigned short (*v26) (unsigned short);
extern unsigned short v27 (signed int);
extern unsigned short (*v28) (signed int);
signed short v29 (unsigned short, unsigned char);
signed short (*v30) (unsigned short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v108 = 3U;
signed char v107 = -4;
signed short v106 = 1;

signed short v29 (unsigned short v109, unsigned char v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned short v113 = 2;
unsigned short v112 = 2;
signed int v111 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (signed char v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
signed short v117 = -1;
unsigned char v116 = 1;
signed short v115 = 3;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v118;
unsigned short v119;
v118 = 6 + 0;
v119 = v25 (v118);
history[history_index++] = (int)v119;
}
break;
case 5: 
{
unsigned short v120;
unsigned short v121;
v120 = 1 + 2;
v121 = v25 (v120);
history[history_index++] = (int)v121;
}
break;
case 7: 
return -1;
case 9: 
{
unsigned short v122;
unsigned short v123;
v122 = 4 + 1;
v123 = v25 (v122);
history[history_index++] = (int)v123;
}
break;
case 11: 
return v114;
default: abort ();
}
}
}
}

signed int v15 (void)
{
{
for (;;) {
signed int v126 = 1;
unsigned short v125 = 1;
signed int v124 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed char v127, signed short v128)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned short v131 = 6;
unsigned short v130 = 1;
unsigned int v129 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned int v132)
{
history[history_index++] = (int)v132;
{
for (;;) {
signed int v135 = 0;
unsigned short v134 = 5;
unsigned short v133 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
