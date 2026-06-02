#include <stdlib.h>
extern unsigned short v3 (signed short, unsigned short);
extern unsigned short (*v4) (signed short, unsigned short);
unsigned int v5 (unsigned short, signed short);
unsigned int (*v6) (unsigned short, signed short) = v5;
extern unsigned char v7 (unsigned short, unsigned int, unsigned char, signed int);
extern unsigned char (*v8) (unsigned short, unsigned int, unsigned char, signed int);
extern signed char v9 (signed int, unsigned char, signed char);
extern signed char (*v10) (signed int, unsigned char, signed char);
signed int v11 (unsigned short, signed char, signed int, signed int);
signed int (*v12) (unsigned short, signed char, signed int, signed int) = v11;
extern unsigned short v13 (signed char, unsigned int);
extern unsigned short (*v14) (signed char, unsigned int);
extern void v15 (unsigned short, signed int, signed short);
extern void (*v16) (unsigned short, signed int, signed short);
extern signed char v17 (unsigned short, unsigned char);
extern signed char (*v18) (unsigned short, unsigned char);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern void v23 (unsigned int, signed int, unsigned int, unsigned short);
extern void (*v24) (unsigned int, signed int, unsigned int, unsigned short);
unsigned short v25 (void);
unsigned short (*v26) (void) = v25;
extern signed int v27 (signed int, signed short);
extern signed int (*v28) (signed int, signed short);
signed char v29 (void);
signed char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v115 = 7;
signed char v114 = 0;
signed char v113 = -4;

signed char v29 (void)
{
{
for (;;) {
signed char v118 = -1;
unsigned short v117 = 3;
signed char v116 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v25 (void)
{
{
for (;;) {
signed int v121 = -3;
unsigned int v120 = 4U;
signed char v119 = 1;
trace++;
switch (trace)
{
case 2: 
return 3;
case 8: 
return 7;
case 10: 
return 3;
default: abort ();
}
}
}
}

signed int v11 (unsigned short v122, signed char v123, signed int v124, signed int v125)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned short v128 = 6;
signed short v127 = -3;
unsigned int v126 = 0U;
trace++;
switch (trace)
{
case 6: 
{
unsigned short v129;
signed int v130;
signed short v131;
v129 = v128 + 5;
v130 = v124 - v124;
v131 = v127 + -2;
v15 (v129, v130, v131);
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}

unsigned int v5 (unsigned short v132, signed short v133)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed short v136 = 3;
signed char v135 = -3;
signed int v134 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
