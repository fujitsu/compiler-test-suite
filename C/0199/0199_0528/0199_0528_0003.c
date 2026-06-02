#include <stdlib.h>
signed int v1 (unsigned char);
signed int (*v2) (unsigned char) = v1;
unsigned char v3 (signed int, signed char, signed char);
unsigned char (*v4) (signed int, signed char, signed char) = v3;
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned int v7 (signed int, signed char, signed short);
extern unsigned int (*v8) (signed int, signed char, signed short);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern void v11 (signed char);
extern void (*v12) (signed char);
extern unsigned char v13 (signed int);
extern unsigned char (*v14) (signed int);
extern signed short v15 (unsigned int);
extern signed short (*v16) (unsigned int);
extern unsigned char v17 (unsigned char, unsigned char, signed char);
extern unsigned char (*v18) (unsigned char, unsigned char, signed char);
signed char v19 (signed short, unsigned short, unsigned short);
signed char (*v20) (signed short, unsigned short, unsigned short) = v19;
extern unsigned int v21 (signed short, unsigned int, signed char);
extern unsigned int (*v22) (signed short, unsigned int, signed char);
extern unsigned char v23 (unsigned char, signed int);
extern unsigned char (*v24) (unsigned char, signed int);
extern unsigned char v25 (signed short, unsigned short, signed char, unsigned short);
extern unsigned char (*v26) (signed short, unsigned short, signed char, unsigned short);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v114 = 7;
unsigned short v113 = 4;
unsigned short v112 = 1;

signed char v19 (signed short v115, unsigned short v116, unsigned short v117)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned int v120 = 1U;
unsigned char v119 = 7;
signed int v118 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed int v121, signed char v122, signed char v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed int v126 = -2;
signed int v125 = 1;
unsigned char v124 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned char v127)
{
history[history_index++] = (int)v127;
{
for (;;) {
signed char v130 = 0;
signed char v129 = 3;
signed short v128 = -2;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v131;
v131 = v5 ();
history[history_index++] = (int)v131;
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}
