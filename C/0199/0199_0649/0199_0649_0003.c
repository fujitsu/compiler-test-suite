#include <stdlib.h>
extern signed int v3 (unsigned short, unsigned char, unsigned short);
extern signed int (*v4) (unsigned short, unsigned char, unsigned short);
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern signed short v7 (unsigned short, unsigned short);
extern signed short (*v8) (unsigned short, unsigned short);
extern signed char v9 (signed int, signed char, unsigned int, unsigned int);
extern signed char (*v10) (signed int, signed char, unsigned int, unsigned int);
extern void v11 (signed short, unsigned short, signed char, unsigned char);
extern void (*v12) (signed short, unsigned short, signed char, unsigned char);
extern signed int v13 (unsigned char, signed int, unsigned int);
extern signed int (*v14) (unsigned char, signed int, unsigned int);
extern signed int v15 (signed short, unsigned short, signed int, signed char);
extern signed int (*v16) (signed short, unsigned short, signed int, signed char);
signed char v17 (unsigned int, unsigned char, unsigned int, unsigned int);
signed char (*v18) (unsigned int, unsigned char, unsigned int, unsigned int) = v17;
extern unsigned short v19 (signed int);
extern unsigned short (*v20) (signed int);
extern signed char v21 (unsigned char, signed short);
extern signed char (*v22) (unsigned char, signed short);
extern unsigned char v23 (unsigned char, signed char, unsigned short, signed char);
extern unsigned char (*v24) (unsigned char, signed char, unsigned short, signed char);
extern void v25 (void);
extern void (*v26) (void);
signed int v29 (signed short, unsigned short, signed int, signed int);
signed int (*v30) (signed short, unsigned short, signed int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v113 = 2U;
signed short v112 = 0;
signed short v111 = -2;

signed int v29 (signed short v114, unsigned short v115, signed int v116, signed int v117)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed short v120 = -2;
signed short v119 = -3;
signed char v118 = 0;
trace++;
switch (trace)
{
case 1: 
return 0;
default: abort ();
}
}
}
}

signed char v17 (unsigned int v121, unsigned char v122, unsigned int v123, unsigned int v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 0;
signed int v126 = -1;
unsigned char v125 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
signed short v130 = -3;
unsigned char v129 = 7;
unsigned int v128 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
