#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
signed int v3 (unsigned char, unsigned char);
signed int (*v4) (unsigned char, unsigned char) = v3;
extern void v5 (unsigned char);
extern void (*v6) (unsigned char);
extern unsigned char v7 (signed int, signed int);
extern unsigned char (*v8) (signed int, signed int);
extern signed int v9 (signed int, unsigned int, signed int);
extern signed int (*v10) (signed int, unsigned int, signed int);
extern signed char v11 (signed int, signed int, signed char, unsigned short);
extern signed char (*v12) (signed int, signed int, signed char, unsigned short);
extern unsigned int v13 (signed short);
extern unsigned int (*v14) (signed short);
unsigned char v15 (unsigned short, unsigned char, signed int, signed char);
unsigned char (*v16) (unsigned short, unsigned char, signed int, signed char) = v15;
extern signed char v19 (signed short);
extern signed char (*v20) (signed short);
extern signed char v21 (signed short, signed int, unsigned short);
extern signed char (*v22) (signed short, signed int, unsigned short);
signed int v23 (void);
signed int (*v24) (void) = v23;
signed int v25 (signed int, unsigned int);
signed int (*v26) (signed int, unsigned int) = v25;
extern signed char v27 (unsigned int, signed int, signed char, unsigned short);
extern signed char (*v28) (unsigned int, signed int, signed char, unsigned short);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v113 = 2;
unsigned char v112 = 1;
signed char v111 = 1;

signed int v25 (signed int v114, unsigned int v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed int v118 = 1;
signed short v117 = 0;
signed char v116 = 2;
trace++;
switch (trace)
{
case 5: 
return v114;
default: abort ();
}
}
}
}

signed int v23 (void)
{
{
for (;;) {
signed int v121 = -1;
signed int v120 = 0;
unsigned char v119 = 0;
trace++;
switch (trace)
{
case 10: 
{
signed short v122;
signed int v123;
unsigned short v124;
signed char v125;
v122 = -1 + 2;
v123 = -4 - 3;
v124 = 4 + 4;
v125 = v21 (v122, v123, v124);
history[history_index++] = (int)v125;
}
break;
case 12: 
return v121;
default: abort ();
}
}
}
}

unsigned char v15 (unsigned short v126, unsigned char v127, signed int v128, signed char v129)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned char v132 = 3;
signed char v131 = -3;
signed int v130 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned char v133, unsigned char v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed int v137 = -4;
signed int v136 = -4;
signed short v135 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
