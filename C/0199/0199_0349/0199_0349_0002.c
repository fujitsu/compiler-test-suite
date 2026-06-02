#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned char v5 (unsigned char, signed short, unsigned int);
extern unsigned char (*v6) (unsigned char, signed short, unsigned int);
signed char v9 (unsigned short, unsigned int, unsigned short);
signed char (*v10) (unsigned short, unsigned int, unsigned short) = v9;
unsigned short v11 (unsigned int);
unsigned short (*v12) (unsigned int) = v11;
extern void v13 (signed short, signed int, unsigned char);
extern void (*v14) (signed short, signed int, unsigned char);
extern signed short v15 (signed char, signed short);
extern signed short (*v16) (signed char, signed short);
extern signed short v17 (unsigned char, unsigned int);
extern signed short (*v18) (unsigned char, unsigned int);
extern signed char v19 (unsigned int, signed short, signed short);
extern signed char (*v20) (unsigned int, signed short, signed short);
extern signed char v21 (unsigned char, unsigned short, unsigned char);
extern signed char (*v22) (unsigned char, unsigned short, unsigned char);
extern void v23 (signed char);
extern void (*v24) (signed char);
extern signed char v25 (signed char, signed short, unsigned char);
extern signed char (*v26) (signed char, signed short, unsigned char);
unsigned char v27 (unsigned char, unsigned short, signed char);
unsigned char (*v28) (unsigned char, unsigned short, signed char) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v115 = 0;
signed char v114 = -1;
unsigned char v113 = 7;

unsigned char v27 (unsigned char v116, unsigned short v117, signed char v118)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed short v121 = 2;
unsigned int v120 = 1U;
signed char v119 = 3;
trace++;
switch (trace)
{
case 1: 
{
signed char v122;
v122 = v1 ();
history[history_index++] = (int)v122;
}
break;
case 13: 
return v116;
default: abort ();
}
}
}
}

unsigned short v11 (unsigned int v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
unsigned char v126 = 4;
signed int v125 = -2;
signed char v124 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned short v127, unsigned int v128, unsigned short v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed char v132 = 3;
signed short v131 = 0;
signed short v130 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
