#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
extern signed char v3 (unsigned int, signed char);
extern signed char (*v4) (unsigned int, signed char);
extern signed char v5 (unsigned int, signed char);
extern signed char (*v6) (unsigned int, signed char);
extern signed short v7 (signed int);
extern signed short (*v8) (signed int);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned short v11 (signed short, signed char);
extern unsigned short (*v12) (signed short, signed char);
signed int v17 (void);
signed int (*v18) (void) = v17;
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned short v23 (unsigned int, unsigned short);
extern unsigned short (*v24) (unsigned int, unsigned short);
unsigned int v25 (unsigned int, signed int, signed int);
unsigned int (*v26) (unsigned int, signed int, signed int) = v25;
extern unsigned char v27 (unsigned short, signed short, unsigned char);
extern unsigned char (*v28) (unsigned short, signed short, unsigned char);
unsigned short v29 (signed short, unsigned int, signed short);
unsigned short (*v30) (signed short, unsigned int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v115 = 2U;
signed int v114 = 2;
unsigned int v113 = 1U;

unsigned short v29 (signed short v116, unsigned int v117, signed short v118)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned char v121 = 2;
signed int v120 = 0;
unsigned char v119 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v25 (unsigned int v122, signed int v123, signed int v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned short v127 = 4;
unsigned int v126 = 0U;
unsigned short v125 = 5;
trace++;
switch (trace)
{
case 8: 
{
signed int v128;
signed short v129;
v128 = -3 + v124;
v129 = v7 (v128);
history[history_index++] = (int)v129;
}
break;
case 12: 
return 6U;
default: abort ();
}
}
}
}

signed int v17 (void)
{
{
for (;;) {
signed short v132 = 3;
unsigned char v131 = 2;
unsigned char v130 = 4;
trace++;
switch (trace)
{
case 10: 
return -3;
default: abort ();
}
}
}
}

signed char v1 (void)
{
{
for (;;) {
unsigned char v135 = 3;
unsigned char v134 = 5;
unsigned int v133 = 1U;
trace++;
switch (trace)
{
case 0: 
{
signed char v136;
v136 = v9 ();
history[history_index++] = (int)v136;
}
break;
case 16: 
return -1;
default: abort ();
}
}
}
}
