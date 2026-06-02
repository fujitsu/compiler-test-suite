#include <stdlib.h>
extern void v1 (unsigned int, signed int, signed char);
extern void (*v2) (unsigned int, signed int, signed char);
signed short v3 (signed short, unsigned char, signed char, unsigned short);
signed short (*v4) (signed short, unsigned char, signed char, unsigned short) = v3;
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v7 (signed int, signed int);
extern signed short (*v8) (signed int, signed int);
signed char v9 (unsigned char, signed short, unsigned short);
signed char (*v10) (unsigned char, signed short, unsigned short) = v9;
extern unsigned char v11 (signed int);
extern unsigned char (*v12) (signed int);
extern unsigned short v13 (unsigned short, signed char, signed char, signed int);
extern unsigned short (*v14) (unsigned short, signed char, signed char, signed int);
extern unsigned char v15 (signed char, unsigned char, signed char);
extern unsigned char (*v16) (signed char, unsigned char, signed char);
unsigned char v17 (unsigned int, signed int);
unsigned char (*v18) (unsigned int, signed int) = v17;
extern void v19 (signed int, signed int, signed short);
extern void (*v20) (signed int, signed int, signed short);
extern unsigned int v21 (signed short, unsigned short);
extern unsigned int (*v22) (signed short, unsigned short);
extern signed char v23 (unsigned short, signed short);
extern signed char (*v24) (unsigned short, signed short);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern signed int v29 (unsigned short, unsigned int, unsigned char, unsigned short);
extern signed int (*v30) (unsigned short, unsigned int, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v110 = -1;
signed int v109 = 2;
unsigned short v108 = 5;

unsigned char v17 (unsigned int v111, signed int v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned char v115 = 3;
signed int v114 = 2;
unsigned char v113 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned char v116, signed short v117, unsigned short v118)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed int v121 = 0;
unsigned short v120 = 7;
signed char v119 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed short v122, unsigned char v123, signed char v124, unsigned short v125)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed int v128 = 0;
unsigned short v127 = 7;
unsigned int v126 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
