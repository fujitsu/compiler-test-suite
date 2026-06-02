#include <stdlib.h>
extern signed short v1 (signed short, unsigned int, signed int);
extern signed short (*v2) (signed short, unsigned int, signed int);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed short v9 (unsigned short, unsigned char, signed int);
extern signed short (*v10) (unsigned short, unsigned char, signed int);
extern signed int v11 (unsigned short, signed short, signed char);
extern signed int (*v12) (unsigned short, signed short, signed char);
extern signed char v13 (signed char, signed char, signed short, unsigned char);
extern signed char (*v14) (signed char, signed char, signed short, unsigned char);
unsigned int v15 (unsigned short, signed int, unsigned char);
unsigned int (*v16) (unsigned short, signed int, unsigned char) = v15;
extern unsigned int v17 (unsigned short, signed char, unsigned short);
extern unsigned int (*v18) (unsigned short, signed char, unsigned short);
extern unsigned int v19 (signed short, unsigned short);
extern unsigned int (*v20) (signed short, unsigned short);
unsigned int v23 (signed int, unsigned int, unsigned int, signed short);
unsigned int (*v24) (signed int, unsigned int, unsigned int, signed short) = v23;
extern unsigned short v25 (signed short);
extern unsigned short (*v26) (signed short);
unsigned short v27 (void);
unsigned short (*v28) (void) = v27;
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v118 = -4;
signed int v117 = 0;
unsigned char v116 = 1;

unsigned short v27 (void)
{
{
for (;;) {
unsigned short v121 = 5;
unsigned short v120 = 1;
signed short v119 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (signed int v122, unsigned int v123, unsigned int v124, signed short v125)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed int v128 = 0;
unsigned short v127 = 7;
signed char v126 = -2;
trace++;
switch (trace)
{
case 3: 
{
signed short v129;
unsigned short v130;
v129 = v125 + v125;
v130 = v25 (v129);
history[history_index++] = (int)v130;
}
break;
case 13: 
return v123;
default: abort ();
}
}
}
}

unsigned int v15 (unsigned short v131, signed int v132, unsigned char v133)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned short v136 = 5;
signed char v135 = 1;
unsigned short v134 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
