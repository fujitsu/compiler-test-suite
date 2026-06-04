#include <stdlib.h>
extern unsigned short v1 (unsigned char, signed short, unsigned int);
extern unsigned short (*v2) (unsigned char, signed short, unsigned int);
extern unsigned int v3 (signed short, unsigned char);
extern unsigned int (*v4) (signed short, unsigned char);
extern signed short v5 (unsigned char, signed char, unsigned short, unsigned int);
extern signed short (*v6) (unsigned char, signed char, unsigned short, unsigned int);
unsigned short v7 (unsigned short);
unsigned short (*v8) (unsigned short) = v7;
extern unsigned short v9 (signed char);
extern unsigned short (*v10) (signed char);
extern void v11 (signed char);
extern void (*v12) (signed char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned char v17 (signed char, signed short);
extern unsigned char (*v18) (signed char, signed short);
extern unsigned short v19 (signed short, signed int, signed int);
extern unsigned short (*v20) (signed short, signed int, signed int);
extern signed char v21 (signed char, signed char);
extern signed char (*v22) (signed char, signed char);
unsigned short v23 (signed short, signed short);
unsigned short (*v24) (signed short, signed short) = v23;
extern unsigned int v25 (unsigned short, signed int, signed int);
extern unsigned int (*v26) (unsigned short, signed int, signed int);
extern unsigned int v27 (signed short);
extern unsigned int (*v28) (signed short);
extern unsigned int v29 (signed char, signed int, signed int, signed short);
extern unsigned int (*v30) (signed char, signed int, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v114 = 2;
unsigned short v113 = 2;
signed short v112 = -2;

unsigned short v23 (signed short v115, signed short v116)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned int v119 = 4U;
unsigned short v118 = 6;
signed char v117 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned short v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
unsigned char v123 = 2;
unsigned short v122 = 4;
unsigned short v121 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
