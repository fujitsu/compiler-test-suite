#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
extern unsigned char v3 (unsigned short, signed int);
extern unsigned char (*v4) (unsigned short, signed int);
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
unsigned short v7 (signed int, unsigned int, signed short);
unsigned short (*v8) (signed int, unsigned int, signed short) = v7;
extern unsigned short v9 (unsigned short, signed char, signed short);
extern unsigned short (*v10) (unsigned short, signed char, signed short);
extern signed short v11 (signed char);
extern signed short (*v12) (signed char);
extern signed int v13 (void);
extern signed int (*v14) (void);
unsigned int v15 (signed int, signed int);
unsigned int (*v16) (signed int, signed int) = v15;
extern unsigned char v17 (unsigned short, signed short);
extern unsigned char (*v18) (unsigned short, signed short);
extern void v19 (signed short, unsigned short, unsigned char);
extern void (*v20) (signed short, unsigned short, unsigned char);
unsigned char v21 (void);
unsigned char (*v22) (void) = v21;
signed char v23 (signed int, signed char, unsigned short, unsigned short);
signed char (*v24) (signed int, signed char, unsigned short, unsigned short) = v23;
extern void v25 (signed short, signed char, unsigned short, unsigned char);
extern void (*v26) (signed short, signed char, unsigned short, unsigned char);
extern unsigned int v27 (signed char, signed short, signed int);
extern unsigned int (*v28) (signed char, signed short, signed int);
extern signed short v29 (signed char, unsigned int);
extern signed short (*v30) (signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v98 = -4;
unsigned int v97 = 4U;
unsigned char v96 = 0;

signed char v23 (signed int v99, signed char v100, unsigned short v101, unsigned short v102)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed int v105 = -4;
signed char v104 = 1;
signed short v103 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (void)
{
{
for (;;) {
signed char v108 = 1;
signed int v107 = 3;
unsigned short v106 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (signed int v109, signed int v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned int v113 = 1U;
unsigned char v112 = 0;
signed int v111 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed int v114, unsigned int v115, signed short v116)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed int v119 = -1;
signed short v118 = 0;
signed char v117 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (void)
{
{
for (;;) {
signed int v122 = -3;
signed int v121 = 2;
signed int v120 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed short v123;
signed char v124;
unsigned short v125;
unsigned char v126;
v123 = 3 - -2;
v124 = 0 - 2;
v125 = 5 + 6;
v126 = 0 + 1;
v25 (v123, v124, v125, v126);
}
break;
case 14: 
return 2;
default: abort ();
}
}
}
}
