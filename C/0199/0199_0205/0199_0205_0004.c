#include <stdlib.h>
extern signed int v1 (signed short, signed char, signed char);
extern signed int (*v2) (signed short, signed char, signed char);
extern signed short v3 (signed char, unsigned int);
extern signed short (*v4) (signed char, unsigned int);
extern void v5 (unsigned short, signed short);
extern void (*v6) (unsigned short, signed short);
signed int v7 (void);
signed int (*v8) (void) = v7;
signed char v9 (void);
signed char (*v10) (void) = v9;
extern unsigned char v11 (unsigned int, unsigned short, unsigned char);
extern unsigned char (*v12) (unsigned int, unsigned short, unsigned char);
signed int v13 (signed char, unsigned short, signed int);
signed int (*v14) (signed char, unsigned short, signed int) = v13;
unsigned int v15 (unsigned char);
unsigned int (*v16) (unsigned char) = v15;
extern void v17 (unsigned char);
extern void (*v18) (unsigned char);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
signed char v25 (signed char);
signed char (*v26) (signed char) = v25;
extern void v27 (unsigned int, signed char, unsigned short);
extern void (*v28) (unsigned int, signed char, unsigned short);
extern signed char v29 (unsigned int, signed short, unsigned short);
extern signed char (*v30) (unsigned int, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v114 = 1;
signed int v113 = -1;
unsigned char v112 = 0;

signed char v25 (signed char v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
signed char v118 = -3;
signed int v117 = 0;
signed char v116 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned char v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
unsigned short v122 = 7;
signed short v121 = 0;
signed int v120 = -3;
trace++;
switch (trace)
{
case 9: 
{
unsigned char v123;
v123 = v119 + 6;
v17 (v123);
}
break;
case 13: 
return 6U;
default: abort ();
}
}
}
}

signed int v13 (signed char v124, unsigned short v125, signed int v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned short v129 = 1;
signed char v128 = -2;
unsigned short v127 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (void)
{
{
for (;;) {
signed char v132 = -4;
unsigned int v131 = 6U;
unsigned short v130 = 4;
trace++;
switch (trace)
{
case 4: 
return 3;
default: abort ();
}
}
}
}

signed int v7 (void)
{
{
for (;;) {
unsigned int v135 = 5U;
signed short v134 = -3;
signed short v133 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
