#include <stdlib.h>
void v3 (unsigned char);
void (*v4) (unsigned char) = v3;
unsigned short v5 (signed short, unsigned char, unsigned char, signed char);
unsigned short (*v6) (signed short, unsigned char, unsigned char, signed char) = v5;
extern unsigned short v7 (signed char, unsigned short, signed short, unsigned int);
extern unsigned short (*v8) (signed char, unsigned short, signed short, unsigned int);
extern unsigned short v9 (signed short, signed char, unsigned char);
extern unsigned short (*v10) (signed short, signed char, unsigned char);
extern void v11 (signed int, signed int, signed short, unsigned short);
extern void (*v12) (signed int, signed int, signed short, unsigned short);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned int v17 (unsigned short, signed short, unsigned char);
extern unsigned int (*v18) (unsigned short, signed short, unsigned char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed short v21 (signed int, signed int, unsigned int, signed char);
extern signed short (*v22) (signed int, signed int, unsigned int, signed char);
extern signed int v23 (unsigned short, signed short, unsigned int, unsigned int);
extern signed int (*v24) (unsigned short, signed short, unsigned int, unsigned int);
extern unsigned int v25 (unsigned short, unsigned short, signed int, unsigned char);
extern unsigned int (*v26) (unsigned short, unsigned short, signed int, unsigned char);
extern void v27 (unsigned int, unsigned int, unsigned int);
extern void (*v28) (unsigned int, unsigned int, unsigned int);
extern unsigned int v29 (unsigned int);
extern unsigned int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v118 = 4;
signed int v117 = -4;
unsigned short v116 = 6;

unsigned short v5 (signed short v119, unsigned char v120, unsigned char v121, signed char v122)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed short v125 = 0;
unsigned int v124 = 1U;
unsigned short v123 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned char v126)
{
history[history_index++] = (int)v126;
{
for (;;) {
unsigned int v129 = 5U;
signed int v128 = 2;
signed int v127 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
