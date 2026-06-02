#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned char, unsigned short);
extern signed short (*v2) (unsigned char, unsigned char, unsigned short);
extern unsigned int v3 (signed int, signed char);
extern unsigned int (*v4) (signed int, signed char);
extern signed short v5 (unsigned int, unsigned short, signed short, signed int);
extern signed short (*v6) (unsigned int, unsigned short, signed short, signed int);
extern signed char v9 (signed char, unsigned char, unsigned char);
extern signed char (*v10) (signed char, unsigned char, unsigned char);
signed int v11 (unsigned int, signed short);
signed int (*v12) (unsigned int, signed short) = v11;
unsigned int v17 (void);
unsigned int (*v18) (void) = v17;
extern signed char v19 (unsigned char, signed int, signed int);
extern signed char (*v20) (unsigned char, signed int, signed int);
void v21 (signed char);
void (*v22) (signed char) = v21;
extern unsigned char v23 (signed int, unsigned short);
extern unsigned char (*v24) (signed int, unsigned short);
extern signed int v25 (unsigned short, unsigned short, unsigned char);
extern signed int (*v26) (unsigned short, unsigned short, unsigned char);
extern signed char v27 (signed short, signed char);
extern signed char (*v28) (signed short, signed char);
extern signed int v29 (signed short, signed char);
extern signed int (*v30) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v121 = 1;
signed short v120 = -1;
signed int v119 = 2;

void v21 (signed char v122)
{
history[history_index++] = (int)v122;
{
for (;;) {
unsigned int v125 = 7U;
unsigned char v124 = 4;
signed short v123 = -1;
trace++;
switch (trace)
{
case 3: 
{
signed short v126;
signed char v127;
signed char v128;
v126 = v123 + v123;
v127 = 1 - v122;
v128 = v27 (v126, v127);
history[history_index++] = (int)v128;
}
break;
case 15: 
return;
default: abort ();
}
}
}
}

unsigned int v17 (void)
{
{
for (;;) {
signed char v131 = 1;
unsigned short v130 = 1;
unsigned char v129 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned int v132, signed short v133)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned int v136 = 7U;
signed char v135 = -4;
unsigned short v134 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
