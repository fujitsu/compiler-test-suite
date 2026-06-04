#include <stdlib.h>
extern signed int v1 (unsigned int, unsigned short, signed int, unsigned int);
extern signed int (*v2) (unsigned int, unsigned short, signed int, unsigned int);
extern signed int v3 (signed char, unsigned int, unsigned short);
extern signed int (*v4) (signed char, unsigned int, unsigned short);
extern unsigned char v5 (signed short, signed short, signed int, unsigned short);
extern unsigned char (*v6) (signed short, signed short, signed int, unsigned short);
extern unsigned char v7 (signed char, signed short, signed int);
extern unsigned char (*v8) (signed char, signed short, signed int);
extern unsigned int v9 (signed char, signed int);
extern unsigned int (*v10) (signed char, signed int);
extern signed short v11 (signed short, signed char, signed char, unsigned int);
extern signed short (*v12) (signed short, signed char, signed char, unsigned int);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed int v15 (signed int, signed short, unsigned char);
extern signed int (*v16) (signed int, signed short, unsigned char);
unsigned short v17 (unsigned int, unsigned short);
unsigned short (*v18) (unsigned int, unsigned short) = v17;
extern unsigned short v19 (signed int, unsigned char);
extern unsigned short (*v20) (signed int, unsigned char);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned int v23 (unsigned int, signed char, unsigned int, signed short);
extern unsigned int (*v24) (unsigned int, signed char, unsigned int, signed short);
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern signed char v27 (signed short, signed int);
extern signed char (*v28) (signed short, signed int);
extern unsigned int v29 (unsigned int, signed char);
extern unsigned int (*v30) (unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v118 = -4;
unsigned char v117 = 7;
unsigned short v116 = 7;

unsigned int v25 (void)
{
{
for (;;) {
signed int v121 = -2;
signed int v120 = 3;
signed short v119 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (unsigned int v122, unsigned short v123)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned char v126 = 6;
signed int v125 = -1;
signed short v124 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
