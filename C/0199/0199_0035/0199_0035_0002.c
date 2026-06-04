#include <stdlib.h>
extern signed int v1 (unsigned char, unsigned char, unsigned char, unsigned int);
extern signed int (*v2) (unsigned char, unsigned char, unsigned char, unsigned int);
extern unsigned short v3 (unsigned char, signed short, unsigned char);
extern unsigned short (*v4) (unsigned char, signed short, unsigned char);
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
extern signed short v7 (signed int, signed int, signed short, unsigned short);
extern signed short (*v8) (signed int, signed int, signed short, unsigned short);
extern signed short v9 (unsigned int, signed char);
extern signed short (*v10) (unsigned int, signed char);
unsigned char v11 (void);
unsigned char (*v12) (void) = v11;
extern signed char v13 (signed int);
extern signed char (*v14) (signed int);
extern signed int v15 (signed char, unsigned short, unsigned short, unsigned int);
extern signed int (*v16) (signed char, unsigned short, unsigned short, unsigned int);
extern signed int v17 (unsigned char, signed int, signed char);
extern signed int (*v18) (unsigned char, signed int, signed char);
extern void v19 (unsigned int, signed int, signed int);
extern void (*v20) (unsigned int, signed int, signed int);
extern unsigned char v21 (signed int, unsigned short, signed char);
extern unsigned char (*v22) (signed int, unsigned short, signed char);
extern signed short v23 (unsigned int, signed char, unsigned short);
extern signed short (*v24) (unsigned int, signed char, unsigned short);
void v25 (unsigned char, signed short, unsigned char);
void (*v26) (unsigned char, signed short, unsigned char) = v25;
extern unsigned char v27 (signed short, unsigned char, signed short);
extern unsigned char (*v28) (signed short, unsigned char, signed short);
extern unsigned char v29 (signed int);
extern unsigned char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v122 = 4;
signed int v121 = 1;
unsigned short v120 = 1;

void v25 (unsigned char v123, signed short v124, unsigned char v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed char v128 = 3;
signed int v127 = -3;
signed short v126 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (void)
{
{
for (;;) {
unsigned short v131 = 2;
unsigned short v130 = 6;
signed short v129 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
