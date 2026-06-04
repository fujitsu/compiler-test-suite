#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
extern unsigned int v11 (signed int, unsigned char, signed char, unsigned short);
extern unsigned int (*v12) (signed int, unsigned char, signed char, unsigned short);
extern unsigned short v13 (signed int, unsigned int, unsigned short);
extern unsigned short (*v14) (signed int, unsigned int, unsigned short);
extern unsigned char v15 (unsigned char, signed char);
extern unsigned char (*v16) (unsigned char, signed char);
extern unsigned short v17 (unsigned short, signed short, unsigned short, signed char);
extern unsigned short (*v18) (unsigned short, signed short, unsigned short, signed char);
extern signed char v19 (void);
extern signed char (*v20) (void);
signed short v21 (signed int);
signed short (*v22) (signed int) = v21;
signed int v23 (signed short, unsigned short, unsigned int, signed int);
signed int (*v24) (signed short, unsigned short, unsigned int, signed int) = v23;
extern signed char v25 (unsigned short, unsigned char, signed char, signed int);
extern signed char (*v26) (unsigned short, unsigned char, signed char, signed int);
unsigned short v27 (signed char, signed int, unsigned char, signed int);
unsigned short (*v28) (signed char, signed int, unsigned char, signed int) = v27;
extern unsigned short v29 (signed int, unsigned char, signed char, unsigned int);
extern unsigned short (*v30) (signed int, unsigned char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v113 = 1;
signed int v112 = 0;
unsigned int v111 = 7U;

unsigned short v27 (signed char v114, signed int v115, unsigned char v116, signed int v117)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned short v120 = 3;
unsigned int v119 = 0U;
unsigned short v118 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (signed short v121, unsigned short v122, unsigned int v123, signed int v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned short v127 = 3;
unsigned short v126 = 7;
unsigned short v125 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (signed int v128)
{
history[history_index++] = (int)v128;
{
for (;;) {
signed int v131 = -4;
unsigned char v130 = 7;
unsigned char v129 = 3;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v132;
v132 = v1 ();
history[history_index++] = (int)v132;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}
