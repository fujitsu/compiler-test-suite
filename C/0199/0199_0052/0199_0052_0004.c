#include <stdlib.h>
extern signed short v1 (unsigned char);
extern signed short (*v2) (unsigned char);
extern signed char v3 (void);
extern signed char (*v4) (void);
signed int v5 (signed short);
signed int (*v6) (signed short) = v5;
unsigned char v7 (unsigned char);
unsigned char (*v8) (unsigned char) = v7;
extern signed char v9 (signed int);
extern signed char (*v10) (signed int);
extern unsigned short v11 (unsigned short, unsigned int, unsigned char, unsigned int);
extern unsigned short (*v12) (unsigned short, unsigned int, unsigned char, unsigned int);
extern void v13 (signed char, unsigned int, signed char, signed int);
extern void (*v14) (signed char, unsigned int, signed char, signed int);
extern void v15 (signed int);
extern void (*v16) (signed int);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern signed int v21 (unsigned short, unsigned char);
extern signed int (*v22) (unsigned short, unsigned char);
extern unsigned char v23 (unsigned short, signed short, signed int, signed short);
extern unsigned char (*v24) (unsigned short, signed short, signed int, signed short);
extern unsigned int v25 (unsigned char, signed char, unsigned int);
extern unsigned int (*v26) (unsigned char, signed char, unsigned int);
extern unsigned char v27 (signed int, unsigned char, signed short, unsigned short);
extern unsigned char (*v28) (signed int, unsigned char, signed short, unsigned short);
signed int v29 (signed int, signed int);
signed int (*v30) (signed int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v119 = 1;
unsigned short v118 = 4;
signed int v117 = -4;

signed int v29 (signed int v120, signed int v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed char v124 = -4;
signed char v123 = 1;
signed char v122 = -4;
trace++;
switch (trace)
{
case 11: 
return -4;
default: abort ();
}
}
}
}

unsigned char v19 (void)
{
{
for (;;) {
signed short v127 = -3;
unsigned short v126 = 6;
unsigned short v125 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned char v128)
{
history[history_index++] = (int)v128;
{
for (;;) {
signed char v131 = -4;
unsigned short v130 = 5;
unsigned int v129 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed short v132)
{
history[history_index++] = (int)v132;
{
for (;;) {
signed short v135 = -2;
signed char v134 = -2;
unsigned int v133 = 7U;
trace++;
switch (trace)
{
case 3: 
return -3;
case 5: 
{
signed int v136;
signed char v137;
v136 = -2 - -1;
v137 = v9 (v136);
history[history_index++] = (int)v137;
}
break;
case 13: 
return -4;
default: abort ();
}
}
}
}
