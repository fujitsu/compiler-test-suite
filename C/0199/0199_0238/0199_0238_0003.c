#include <stdlib.h>
extern signed int v1 (unsigned char);
extern signed int (*v2) (unsigned char);
extern unsigned char v3 (unsigned int, signed short, signed int);
extern unsigned char (*v4) (unsigned int, signed short, signed int);
extern unsigned char v5 (unsigned short, unsigned int, unsigned int);
extern unsigned char (*v6) (unsigned short, unsigned int, unsigned int);
extern unsigned int v7 (signed char, signed int, unsigned short, unsigned int);
extern unsigned int (*v8) (signed char, signed int, unsigned short, unsigned int);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
extern unsigned short v15 (signed char, unsigned char);
extern unsigned short (*v16) (signed char, unsigned char);
extern void v17 (unsigned int, signed int, unsigned short, unsigned char);
extern void (*v18) (unsigned int, signed int, unsigned short, unsigned char);
extern signed char v19 (signed int, signed char, unsigned short, unsigned char);
extern signed char (*v20) (signed int, signed char, unsigned short, unsigned char);
void v21 (unsigned char, unsigned int, unsigned int);
void (*v22) (unsigned char, unsigned int, unsigned int) = v21;
unsigned short v23 (unsigned int, unsigned char);
unsigned short (*v24) (unsigned int, unsigned char) = v23;
extern void v25 (unsigned int, unsigned short, unsigned char);
extern void (*v26) (unsigned int, unsigned short, unsigned char);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned short v29 (signed short, signed char, unsigned short, signed short);
extern unsigned short (*v30) (signed short, signed char, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v118 = 3U;
unsigned char v117 = 0;
signed char v116 = 0;

unsigned short v23 (unsigned int v119, unsigned char v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed short v123 = 1;
unsigned char v122 = 4;
signed short v121 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (unsigned char v124, unsigned int v125, unsigned int v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed int v129 = 2;
unsigned char v128 = 5;
unsigned short v127 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
