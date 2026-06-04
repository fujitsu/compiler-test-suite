#include <stdlib.h>
extern unsigned char v1 (signed char);
extern unsigned char (*v2) (signed char);
unsigned char v3 (void);
unsigned char (*v4) (void) = v3;
extern signed int v5 (signed char, unsigned char, signed char);
extern signed int (*v6) (signed char, unsigned char, signed char);
extern unsigned char v7 (signed char, signed short);
extern unsigned char (*v8) (signed char, signed short);
extern signed short v9 (signed int, unsigned char, signed char);
extern signed short (*v10) (signed int, unsigned char, signed char);
extern signed short v11 (unsigned char, unsigned int, signed char, unsigned char);
extern signed short (*v12) (unsigned char, unsigned int, signed char, unsigned char);
extern unsigned char v13 (unsigned int);
extern unsigned char (*v14) (unsigned int);
extern void v15 (unsigned char, signed short, unsigned char, unsigned char);
extern void (*v16) (unsigned char, signed short, unsigned char, unsigned char);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed short v19 (signed short, signed int, signed char, signed int);
extern signed short (*v20) (signed short, signed int, signed char, signed int);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern signed short v23 (unsigned int, unsigned int, signed int, signed short);
extern signed short (*v24) (unsigned int, unsigned int, signed int, signed short);
unsigned char v27 (signed char, signed char);
unsigned char (*v28) (signed char, signed char) = v27;
unsigned short v29 (signed int, signed short);
unsigned short (*v30) (signed int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v114 = 7U;
signed int v113 = 0;
signed short v112 = -3;

unsigned short v29 (signed int v115, signed short v116)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed char v119 = -3;
unsigned int v118 = 7U;
unsigned short v117 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v27 (signed char v120, signed char v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned int v124 = 2U;
signed char v123 = 3;
signed short v122 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (void)
{
{
for (;;) {
unsigned short v127 = 3;
signed short v126 = -1;
unsigned short v125 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
