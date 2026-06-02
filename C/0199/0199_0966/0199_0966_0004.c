#include <stdlib.h>
extern signed int v1 (signed char, unsigned int, signed short, signed short);
extern signed int (*v2) (signed char, unsigned int, signed short, signed short);
signed char v3 (signed char);
signed char (*v4) (signed char) = v3;
signed short v5 (void);
signed short (*v6) (void) = v5;
extern unsigned short v7 (signed short, signed int, unsigned char);
extern unsigned short (*v8) (signed short, signed int, unsigned char);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned int v11 (unsigned char, unsigned int, unsigned char, unsigned short);
extern unsigned int (*v12) (unsigned char, unsigned int, unsigned char, unsigned short);
extern signed char v13 (signed int, unsigned int);
extern signed char (*v14) (signed int, unsigned int);
unsigned char v15 (unsigned int, signed int, signed char);
unsigned char (*v16) (unsigned int, signed int, signed char) = v15;
extern signed int v17 (signed int, unsigned int, signed short);
extern signed int (*v18) (signed int, unsigned int, signed short);
extern signed int v19 (void);
extern signed int (*v20) (void);
unsigned short v21 (unsigned char, signed int);
unsigned short (*v22) (unsigned char, signed int) = v21;
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned int v25 (unsigned char);
extern unsigned int (*v26) (unsigned char);
extern unsigned char v27 (signed int, signed char, unsigned int, unsigned int);
extern unsigned char (*v28) (signed int, signed char, unsigned int, unsigned int);
extern unsigned char v29 (unsigned short);
extern unsigned char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v120 = 2;
signed char v119 = -4;
unsigned short v118 = 6;

unsigned short v21 (unsigned char v121, signed int v122)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed char v125 = 3;
unsigned char v124 = 2;
unsigned int v123 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (unsigned int v126, signed int v127, signed char v128)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed short v131 = 3;
unsigned short v130 = 4;
signed int v129 = 0;
trace++;
switch (trace)
{
case 3: 
{
signed int v132;
v132 = v19 ();
history[history_index++] = (int)v132;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}

signed short v5 (void)
{
{
for (;;) {
unsigned short v135 = 6;
signed int v134 = 0;
unsigned int v133 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed char v136)
{
history[history_index++] = (int)v136;
{
for (;;) {
unsigned short v139 = 6;
unsigned short v138 = 4;
signed char v137 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
